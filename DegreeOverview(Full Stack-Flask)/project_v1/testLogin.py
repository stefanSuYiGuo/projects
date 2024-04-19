## import libraries
# from app.controller.user import app
# import sys
#
# print(sys.path)

import unittest
from teamwork import app
import json


# app = create_app()


def getName(email):
    name = ''
    for letter in email:
        if letter == '@':
            break
        name += letter
    return name


class TestLoginClass(unittest.TestCase):
    """
    :param
    """

    # The setUp() method to do some preparatory work, such as establishing a database connection.
    # It is automatically invoked by the test framework before the user case is executed.
    def setUp(self) -> None:
        """It is called before the specific test method is executed."""
        self.app = app

        # Activation test flag
        app.config['TESTING'] = True
        # Here, the test is performed using the test client provided by flask
        self.client = app.test_client()

    # The tearDown() method is used to do some cleanup, such as disconnecting the database.
    # It is automatically invoked by the test framework after the use case execution completes, including failure.
    def tearDown(self) -> None:
        pass

    def test_wrong_password(self):
        """Test wrong password with valid and registered email"""

        """case 1: student login with right email and wrong password"""
        data = {'email': 'student30@mail.uic.edu.hk',
                'password': '12345678'}
        response_1 = self.client.post('/user/login',
                                      data=data)

        # response data
        resp_json = response_1.data

        # init password
        password = data['password']

        # convert to json
        resp_dict = json.loads(resp_json)

        # use assert to verify
        self.assertIn('code', resp_dict)

        # compare the code value 200
        code = resp_dict.get('code')
        self.assertEqual(code, 1201)

        # return message
        msg = resp_dict.get('message')
        self.assertEqual(msg, f'password {password} is incorrect')

        """case 2: teacher login with right email and wrong password"""
        data = {'email': 'teacher1@uic.edu.hk',
                'password': '12345678'}
        response_2 = self.client.post('/user/login',
                                      data=data)

        # response data
        resp_json = response_2.data

        # init password
        password = data['password']

        # convert to json
        resp_dict = json.loads(resp_json)

        # use assert to verify
        self.assertIn('code', resp_dict)

        # compare the code value 200
        code = resp_dict.get('code')
        self.assertEqual(code, 1201)

        # return message
        msg = resp_dict.get('message')
        self.assertEqual(msg, f'password {password} is incorrect')

    def test_unregistered_email(self):
        """Test unregistered email"""

        """case 3: student tries to login in with unregistered email"""
        data = {'email': 'student50@mail.uic.edu.hk',
                'password': '123456789'}
        response_3 = self.client.post('/user/login',
                                      data=data)

        # response data
        resp_json = response_3.data

        # init email
        email = data['email']

        # convert to json
        resp_dict = json.loads(resp_json)

        # use assert to verify
        self.assertIn('code', resp_dict)

        # compare the code value 200
        code = resp_dict.get('code')
        self.assertEqual(code, 1202)

        # return message
        msg = resp_dict.get('message')
        self.assertEqual(msg, f'Student {email} is not registered')

        """case 4: teacher tries to login in with unregistered email"""
        data = {'email': 'teacher10@uic.edu.hk',
                'password': '123456789'}
        response_4 = self.client.post('/user/login',
                                      data=data)

        # response data
        resp_json = response_4.data

        # init email
        email = data['email']

        # convert to json
        resp_dict = json.loads(resp_json)

        # use assert to verify
        self.assertIn('code', resp_dict)

        # compare the code value 200
        code = resp_dict.get('code')
        self.assertEqual(code, 1202)

        # return message
        msg = resp_dict.get('message')
        self.assertEqual(msg, f'Teacher {email} is not registered')

    def test_correct_email_password(self):
        """Test registered email and correct password"""

        """case 5: student logins with registered email and correct password"""
        data = {'email': 'student30@mail.uic.edu.hk',
                'password': '123456789'}
        response_5 = self.client.post('/user/login',
                                      data=data)

        # response data
        resp_json = response_5.data

        # init name
        name = getName(data['email'])

        # convert to json
        resp_dict = json.loads(resp_json)

        # use assert to verify
        self.assertIn('code', resp_dict)

        # compare the code value 200
        code = resp_dict.get('code')
        self.assertEqual(code, 1200)

        # return message
        msg = resp_dict.get('message')
        self.assertEqual(msg, f'http://127.0.0.1:5050/user/login/success/{name} success!')

        """case 6: teacher logins with registered email and correct password"""
        data = {'email': 'teacher1@uic.edu.hk',
                'password': '123456789'}
        response_6 = self.client.post('/user/login',
                                      data=data)

        # response data
        resp_json = response_6.data

        # init name
        name = getName(data['email'])

        # convert to json
        resp_dict = json.loads(resp_json)

        # use assert to verify
        self.assertIn('code', resp_dict)

        # compare the code value 200
        code = resp_dict.get('code')
        self.assertEqual(code, 1200)

        # return message
        msg = resp_dict.get('message')
        self.assertEqual(msg, f'http://127.0.0.1:5050/user/login/success/{name} success!')

    def test_invalid_email(self):
        """Test invalid email input"""

        """case 7: User tries to login with invalid email"""
        data = {'email': 'teacher1@163.com',
                'password': '123456789'}
        response_7 = self.client.post('/user/login',
                                      data=data)

        # response data
        resp_json = response_7.data

        # init email
        email = data['email']

        # convert to json
        resp_dict = json.loads(resp_json)

        # use assert to verify
        self.assertIn('code', resp_dict)

        # compare the code value 200
        code = resp_dict.get('code')
        self.assertEqual(code, 1203)

        # return message
        msg = resp_dict.get('message')
        self.assertEqual(msg, f'User {email} is invalid')


if __name__ == '__main__':
    unittest.main()
