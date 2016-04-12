#coding:utf-8
from bottle import *
from beaker.middleware import SessionMiddleware
import MySQLdb

#OPTIONS
db = MySQLdb.connect(host="localhost", user="root", passwd="", db="nextup", charset="utf8");
cur = db.cursor(MySQLdb.cursors.DictCursor)

#SESSIONS
session_opts = {
'session.type': 'file',
'session.cookie_expires': 3000,
'session.data_dir': './',
'session.auto': True
}
#APP
app = SessionMiddleware(app(), session_opts)

def get_user():
    try:
        user = {}
        session = request.environ.get("beaker.session")
        user["Username"] = session["Username"]
        user["ID"] = session["ID"]
        return user
    except:
        return None

#Static Routes

@route('/static/<filename:path>')
def server_static(filename):
    return static_file(filename, root='static')

#Routes
@route("/")
def index():
    return template("index")

@route("/admin")
def admin():
    if get_user() != None:
        return template("admin", user=get_user())
    else:
        redirect("/login")

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
    return template("login", user=get_user(), error=False)

@route("/process", method="post")
def process():
    user = request.forms.get("id")
    password = request.forms.get("pw")
    query = ("SELECT Username, ID FROM users WHERE Username = %s AND  Password = md5(%s)")
    cur.execute(query, (user, password))
    if cur.rowcount == 1:
        # Användaren har angett korrekt inloggningsuppgifter
        result = cur.fetchall()[0]
        session = request.environ.get("beaker.session")
        session["Username"] = result["Username"]
        session["ID"] = result["ID"]
        session.save()
        redirect("/admin")
    else:
        return template("/login", user=get_user(), error=True)



run(app=app)