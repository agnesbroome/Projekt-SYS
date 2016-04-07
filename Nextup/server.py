#coding:utf-8
from bottle import *
from beaker.middleware import SessionMiddleware
import MySQLdb
'''
#OPTIONS
db = MySQLdb.connect(host="localhost", user="af9250", passwd="Marmelad1", db="AF9250");
cur = db.cursor(MySQLdb.cursors.DictCursor)

#SESSIONS
session_opts = {
'session.type': 'file',
'session.cookie_expires': 3000,
'session.data_dir': './',
'session.auto': True
}
'''
#Static Routes

@route('/static/<filename:path>')
def server_static(filename):
    return static_file(filename, root='static')

#Routes
app = SessionMiddleware(app())

@route("/")
def index():
    return template("index")

@route("/admin")
def admin():
	return template("admin")

@route("/tips")
def tips():
    return template("tips")

@route("/events")
def events():
    return template("events")

@route("/about")
def about():
    return template("about")

@route("/contact")
def contact():
    return template("contact")

@route("/faq")
def faq():
    return template("faq")

@route("/events")
def events():
    return template("events")
@route("/login")
def login():
    return template("login")



run(app=app)