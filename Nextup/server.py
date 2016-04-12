#coding:utf-8
from bottle import *
from beaker.middleware import SessionMiddleware
import MySQLdb
import datetime
import validators

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
    return template("tips", error=[])

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
    
@route("/tipsprocess", method="post")
def tips_process():
    error = []
    event_name = request.forms.get("eventname")
    if event_name == "":
        error.append("error01")
    category = request.POST.getall("category")
    if len(category) == 0:
        error.append("error02")
    start_date = request.forms.get("startdate")
    try:
        datetime.datetime.strptime(start_date, '%Y-%m-%d')
    except:
        error.append("error03")
    end_date = request.forms.get("enddate")
    try:
        datetime.datetime.strptime(end_date, '%Y-%m-%d')
    except:
        error.append("error04")
    start_time = request.forms.get("starttime")
    try:
        datetime.datetime.strptime(start_time, '%H:%M')
    except:
        error.append("error05")
    end_time = request.forms.get("endtime")
    try:
        datetime.datetime.strptime(end_time, '%H:%M')
    except:
        error.append("error06")
    location = request.forms.get("location")
    if location == "":
        error.append("error07")
    address = request.forms.get("address")
    if address == "":
        error.append("error08")
    organizer = request.forms.get("organizer")
    if organizer == "":
        error.append("error09")
    website = request.forms.get("website")
    if not validators.url(website):
        error.append("error10")
    image = request.files.get("image")
    desc = request.forms.get("description")
    if desc == "":
        error.append("error12")
    tipster = request.forms.get("tipster")
    if tipster == "":
        error.append("error13")
    email = request.forms.get("email")
    if not validators.email(email):
        error.append("error14")
    
    if len(error) > 0:
        return template("tips", error=error)
    
    '''print category
    print event_name
    print start_date
    print end_date
    print start_time
    print end_time
    print location
    print address
    print organizer
    print website
    print image
    print desc
    print tipster
    print email
    '''


run(app=app)