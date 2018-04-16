#!/usr/bin/env python
# -*- coding: utf-8 -*-
#

import MySQLdb, ConfigParser, json
from bottle import template, request, redirect, abort
import datetime
from passlib.hash import sha256_crypt
from passlib.hash import bcrypt

def check_pass(username, password):
    db = ConnectDB()
    count = db.execute("SELECT password FROM users WHERE user = %s and status = '1'",(username,))
    if count < 1:
        return False
    else:
        row = db.fetchone()
        return bcrypt.verify(username+password, row['password'])

def checkauth(fn):
    def check_uid(**kwargs):
        cookie_uid = request.cookies.get('token')

        if cookie_uid:
            db = ConnectDB()
            db.execute('SELECT * FROM users where session_key = %s',(cookie_uid,))

            row = db.fetchone()

            if row:
                return fn(**kwargs)
            else:
                abort(401, "Sorry, incorrect authentication, access denied.")
        else:
            abort(401, "Sorry no cookie found, access denied.")

    return check_uid

def hashpassword(username,password):
    return bcrypt.hash(username+password)

def ConnectDB():
    Config = ConfigParser.ConfigParser()
    Config.read("config.ini")

    db = MySQLdb.connect(host=Config.get("database", "host"),\
                         user=Config.get("database", "user"),\
                         passwd=Config.get("database", "passwd"),\
                         db=Config.get("database", "db"),
                         charset='utf8')
    return db.cursor(MySQLdb.cursors.DictCursor)

def postRedirect(url):
    request.params

class TZColombia(datetime.tzinfo):
    _offset = datetime.timedelta(seconds = -18000)
    _dst = datetime.timedelta(0)
    _name = "+0500"
    def utcoffset(self, dt):
        return self.__class__._offset
    def dst(self, dt):
        return self.__class__._dst
    def tzname(self, dt):
        return self.__class__._name
