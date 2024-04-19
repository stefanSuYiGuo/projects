import requests
import json
import time
from datetime import datetime

from flask import Blueprint

sleepBP = Blueprint("sleep", __name__)


def speech_msg(text):
    """
    This method is to return a response of input text
    :param text: content to be speeched
    :return: jsonfied request response
    """
    req = requests.post(f"http://127.0.0.1:5500/speech/{text}")
    print(req.json())
    return req.json()


@sleepBP.route('', methods=['POST'])
def sleep_save_power():
    print('sleep and save power mode...')
    start_time = datetime.now()
    request_count = 0

    wake_word_list = [
        '小明',
        '小明小明',
        '明小明',
        '明小'
    ]
    detected = False
    save_power_record = requests.post("http://127.0.0.1:5500/record")
    request_count += 1
    print('save_power_record', save_power_record.json())

    save_power_record_res = save_power_record.json().get('record_content')

    for item in wake_word_list:
        if item in save_power_record_res:
            detected = True
            break

    while detected == False:
        time.sleep(2)
        save_power_record = requests.post("http://127.0.0.1:5500/record")
        request_count += 1
        print('save_power_record', save_power_record.json())

        save_power_record_res = save_power_record.json().get('record_content')

        for item in wake_word_list:
            if item in save_power_record_res:
                detected = True
                break

    response_text = '我在'
    speech_msg(response_text)

    print('wake...')
    end_time = datetime.now()

    time_interval = end_time - start_time

    res = {
        'status': 'wake',
        'sleep_time': time_interval.seconds,
        'api_call': request_count
    }

    return res
