from flask import Blueprint
import requests
import json
from datetime import datetime
import shutil
import os

demoBP = Blueprint('demo', __name__)


def speech_msg(text):
    """
    This method is to return a response of input text
    :param text: content to be speeched
    :return: jsonfied request response
    """
    req = requests.post(f"http://127.0.0.1:5500/speech/{text}")
    print(req.json())
    return req.json()


def validator(sentence):
    file = open('api/data/text_bank_dict.txt', 'r', encoding='utf-8')
    text_bank_data = file.read()
    text_bank_dict = json.loads(text_bank_data)
    # print('function open text_bank_dict', text_bank_dict)
    file.close()

    file = open('api/data/exit_dict.txt', 'r', encoding='utf-8')
    exit_data = file.read()
    exit_dict = json.loads(exit_data)
    # print('function open exit_dict', exit_dict)
    file.close()

    valid = False
    keys = []
    for key, value in text_bank_dict.items():
        # print(key, value)
        keys.append(key)
        for item in value:
            keys.append(item)

    for item in exit_dict.get('exit'):
        keys.append(item)
    # print('keys', keys)

    for item in keys:
        if item in sentence:
            valid = True
            break

    if not valid:
        secondary_validator = requests.post(f'http://127.0.0.1:5500/analysis/secondary_validator/{sentence}')
        valid = secondary_validator.json().get('valid')

    return valid


@demoBP.route('/prepare', methods=['POST'])
def file_move():
    files = os.listdir(os.getcwd())
    for file in files:
        if not (file.endswith('mp3') or file.endswith('wav')):
            continue
        else:
            records_files = os.listdir(os.path.join(os.getcwd(), r'api\records'))
            if file in records_files:
                os.remove(file)
            else:
                shutil.move(file, r'api\records')
    res = {}
    # TODO: Change Interface Document Later - 2022-05-05 23:46:12
    if 'mp3' not in os.listdir(os.getcwd()) and 'wav' not in os.listdir(os.getcwd()):
        res['code'] = 3000
        res['msg'] = 'All recorded files by last time are cleared'
    else:
        res['code'] = 3001
        res['msg'] = 'Failed to move all audio files to the api/records folder'
    return res


@demoBP.route('', methods=['POST'])
def demo():
    before_demo = requests.post('http://127.0.0.1:5500/demo/prepare')
    while before_demo.json().get('code') != 3000:
        before_demo = requests.post('http://127.0.0.1:5500/demo/prepare')
    init = requests.post('http://127.0.0.1:5500/record/init')
    print('init', init.json())

    file = open('api/data/text_bank_dict.txt', 'r', encoding='utf-8')
    text_bank_data = file.read()
    text_bank_dict = json.loads(text_bank_data)
    # print('text_bank_dict', text_bank_dict)
    file.close()

    if init.json().get('code') == 1001:
        remind_text = '未能识别指令，请再说出语音指令'
        remind = requests.post(f'http://127.0.0.1:5500/speech/{remind_text}')
        print('remind', remind.json())
    else:
        sentence = init.json().get('record_content')

        # if not valid:
        # TODO: what if the first time, users say something, but not valid? continuously saying?
        # pass
        # else:
        if validator(sentence=sentence):
            call = requests.post(f'http://127.0.0.1:5500/analysis/extract/{sentence}')
            print('call', call.json())
            if type(call.json().get('msg')) == 'dict':
                msg = call.json().get('msg').get('message') + '， ' + call.json().get('msg').get('result').get('result')
                feedback = requests.post(f'http://127.0.0.1:5500/speech/{msg}')
                print('feedback', feedback.json())
            # elif type(call.json().get('msg')) == 'str':
            #     pass

    start_time = datetime.now()
    continuous_record = requests.post('http://127.0.0.1:5500/record')
    print('continuous_record', continuous_record.json())

    new_instruction = continuous_record.json().get('record_content')

    while new_instruction == '' or not validator(new_instruction):
        end_time = datetime.now()
        if (end_time - start_time).seconds >= 30:
            exit_text = '小明退下了，期待下次再见'
            speech_msg(exit_text)
            waiting = requests.post('http://127.0.0.1:5500/sleep')
            print('waiting', waiting.json())
            start_time = datetime.now()

        continuous_record = requests.post('http://127.0.0.1:5500/record')
        print('continuous_record', continuous_record.json())

        new_instruction = continuous_record.json().get('record_content')

    file = open('api/data/exit_dict.txt', 'r', encoding='utf-8')
    exit_data = file.read()
    exit_dict = json.loads(exit_data)
    print(exit_dict)
    file.close()

    while new_instruction:
        if new_instruction in exit_dict.get('exit'):
            exit_text = '小明退下了，期待下次再见'
            speech_msg(exit_text)
            # exit(0)
            waiting = requests.post('http://127.0.0.1:5500/sleep')
            print('waiting', waiting.json())

            continuous_record = requests.post('http://127.0.0.1:5500/record')
            print('continuous_record', continuous_record.json())

            new_instruction = continuous_record.json().get('record_content')

            while not validator(sentence=new_instruction):
                continuous_record = requests.post('http://127.0.0.1:5500/record')
                print('continuous_record', continuous_record.json())

                new_instruction = continuous_record.json().get('record_content')
        else:
            call = requests.post(f'http://127.0.0.1:5500/analysis/extract/{new_instruction}')
            print('call', call.json())

            if type(call.json().get('msg')) == 'dict':
                msg = call.json().get('msg').get('message') + '， ' + call.json().get('msg').get('result').get('result')
                feedback = requests.post(f'http://127.0.0.1:5500/speech/{msg}')
                print('feedback', feedback.json())
            # elif type(call.json().get('msg')) == 'str':
            #     pass

            start_time = datetime.now()
            continuous_record = requests.post('http://127.0.0.1:5500/record')
            print('continuous_record', continuous_record.json())

            new_instruction = continuous_record.json().get('record_content')

            while new_instruction == '' or not validator(new_instruction):
                end_time = datetime.now()
                if (end_time - start_time).seconds >= 30:
                    exit_text = '小明退下了，期待下次再见'
                    speech_msg(exit_text)
                    waiting = requests.post('http://127.0.0.1:5500/sleep')
                    print('waiting', waiting.json())
                    start_time = datetime.now()

                continuous_record = requests.post('http://127.0.0.1:5500/record')
                print('continuous_record', continuous_record.json())

                new_instruction = continuous_record.json().get('record_content')

    return 'good'
