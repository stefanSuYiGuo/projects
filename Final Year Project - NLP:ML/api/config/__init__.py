# Turn on off light used
# TODO: ACCESS_TOKEN and AUTHORIZATION should be updated periodically
ACCESS_TOKEN = 'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiJ6ZW5nIiwiZGlzcGxheU5hbWUiOiLmm77mgLsiLCJyb2xl' \
               'cyI6WyIzMDIiXSwiY2hhcmdlclRva2VuIjoiIiwic3RvcmVJZCI6IiIsInVzZXJJZCI6InplbmciLCJnbGxkIjoiIiwiYXV0aG9ya' \
               'XRpZXMiOlsiMzAyIl0sImNsaWVudF9pZCI6ImNvY2xvdWRzLWNsaWVudCIsImpvdXJuYWwiOm51bGwsInNjb3BlIjpbIioiXSwiaW' \
               'QiOjQzLCJleHAiOjE2NTk1MjYwODEsImp0aSI6IjYwMDVlODYzLTM0NDItNDg5OC05ZjQyLTFlYzVkZTdjZTc4YyJ9.O0vzJqFTni' \
               '3S92BSYQQdzA4dSxokI0v0nX4VcijbqaclqGZAftRHViRIf69zLIYd30RECzjG403pjq2KnwEUxY3hPA9ukB9ALvV7w81fYTTg1Ny' \
               'u3F8oGY8XAGN0bEO9_OXvA_-O37j_UMq80EOrHGB76Lg-1zJLQ50A_6dHwO4SwQowToEsKkYOmGt1bgyXkdoBQcQDMFJBMXY2kjnQ' \
               'AkD4ZGqShZyJ9K1ps7X2rlt3U_kAFrVKZMDmElzO9YCkY9FdIc3B-ma9wsqqIj1tfWwZk2F-kB3hkAtPW40K3VNsnVA7QI10IPgMu' \
               'COw5sPgJnma6CP4bDzMmSCnNB6aTA'
AUTHORIZATION = 'bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX25hbWUiOiJ6ZW5nIiwiZGlzcGxheU5hbWUiOiLmm77mgLsi' \
                'LCJyb2xlcyI6WyIzMDIiXSwiY2hhcmdlclRva2VuIjoiIiwic3RvcmVJZCI6IiIsInVzZXJJZCI6InplbmciLCJnbGxkIjoiIiwi' \
                'YXV0aG9yaXRpZXMiOlsiMzAyIl0sImNsaWVudF9pZCI6ImNvY2xvdWRzLWNsaWVudCIsImpvdXJuYWwiOm51bGwsInNjb3BlIjpb' \
                'IioiXSwiaWQiOjQzLCJleHAiOjE2NTk1MjU4OTUsImp0aSI6ImMxNTRlYWY5LTM3ZmItNGI5Yi04NTY3LTBkNzlkZmNhM2VmMyJ9' \
                '.Mq4eqxOaBSh-vKBo4TiodkKcPgqBJZAdQ7RLPuMqK1XUsKtNosXyX-pA3-Dc19JCZMWRzi8D41yfeQynFwY7vF4WpQkhZheq1bQ' \
                'wAclND0MsoQaFjjS9rtZrOAe-hvKvR8z0ugvW94Nnm81uKYhmjx8qRQIKaD9X55_WXod3Qwtze5FHW3i7iwASyUiytr_Ws_MMAwT' \
                'AghQ2ZlGeoDTXJ91HxCBxsJFUTcB8YfUoT_KFr24wXEhw_L1kcJEMXBue1kmC0SwGJ08Hh5sW4kjPqLkSgnX1DeAhOSuilEMLPOQ' \
                'WgDGffljN9WxCakDfx_511ymDnkJYQdOK8K4Y-qwNCA'
ACCEPT = 'application/json, text/plain, */*'
ACCEPT_ENCODING = 'gzip,deflate'
ACCEPT_LANGUATE = 'en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7,en-GB;q=0.6,zh-TW;q=0.5'
CONNECTION = 'keep-alive'
CONTENT_LENGTH = '0'


def headers():
    header = {
        'access-token': ACCESS_TOKEN,
        'Authorization': AUTHORIZATION,
        'Accept': ACCEPT,
        'Accept-Encoding': ACCEPT_ENCODING,
        'Accept-Language': ACCEPT_LANGUATE,
        'Connection': CONNECTION,
        'Content-Length': CONTENT_LENGTH
    }
    return header
