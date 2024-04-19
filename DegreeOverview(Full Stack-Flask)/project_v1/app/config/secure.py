# -*- coding: utf-8 -*-
# @Time    : 2019/4/28 23:35
# @Author  : 2010jing
# @Email   : 2010jing@gmail.com
# @File    : secure.py
# @Updata    : 2021-05-24 18:30:29
# @Author    : Stefan Su
# @Email     : moses_SU@163.com
import os

SQLALCHEMY_DATABASE_URI = "sqlite:///" + "../app.db"
SQLALCHEMY_TRACK_MODIFICATION = True

# SECRET_KEY
SECRET_KEY = os.urandom(24)

# RECAPTCHA_PUBLIC_KEY
RECAPTCHA_PUBLIC_KEY = 'laskdjflkajgau84hqngfdo#o'

# RECAPTCHA_PRIVATE_KEY
RECAPTCHA_PRIVATE_KEY = 'reterigvndfnvcg&dtjq*UWO'
