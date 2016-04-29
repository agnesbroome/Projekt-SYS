#coding:utf-8
from bottle import *
from beaker.middleware import SessionMiddleware
import MySQLdb
import datetime
import validators
#from modules import log

#OPTIONS
#Log in to database
db = MySQLdb.connect("195.178.232.7", port=4040, user="AF9250", passwd="Ankdamm1", db="AF9250", charset='utf8');
cur = db.cursor(MySQLdb.cursors.DictCursor)

#SESSIONS
#Storage in "cookie".
session_opts = {
'session.type': 'file',
'session.cookie_expires': 1000,
'session.data_dir': './data',
'session.auto': True
}
#APP
#Variable that runs with the server file.
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

#Link to the static file with images, javascript, css
@route('/static/<filename:path>')
def server_static(filename):
    return static_file(filename, root='static')

#Routes

#Här är alla routes, de man kan nå via vår hemsida efter grundnamnet. typ www.nextup.se. Så www.nextup.se/ är hem, som ni ser nedan. www.nextup.se/tips så kommer man till den routen. Allt detta sköter vår serverfil, dvs. denna filen.
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

@route("/eventpage")
def events():
    return template("eventpage")

@route("/logout")
def logout():
    session = request.environ.get("beaker.session")
    session.delete()
    redirect("/login")

@route("/login")
def login():
    return template("login", user=get_user(), error=False)

#Detta är det som händer ner man trycker på "login" knappen via vår admin sida. Vi skapar två variablar där vi lagrar det som användaren skriver i de två fälten. Dvs. User och password. Sedan skapas en fråga, query. Som vi skickar till vår databas med hjälp av SQL. Som ni kan se försöker frågan hämta ut username och password ifrån databasen, existerar inte dessa, skickas man tillbaka till loginsidan med error satt till True, det är False ifrån början.
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
        redirect("admin")
    else:
        return template("login", user=get_user(), error=True)


    
#Denna route hanterar vad som händer med formuläret när det skickats, I html filen står det att den skall postas till /tipsprocess. Vilket är denna. Sedan hämtar vi ut alla värden ifrån formuläret, dessa skall sedan lagras i databasen. Vi kontrollerar även samtliga värden med diverse insticksmoduler! Vi skapar en tom error "lista" sedan lagras alla fel i den listan, om de existerar.

@route("/tips_process", method="post")
def tips_process():
    error = []
    event_name = request.forms.get("event_name")
    if event_name == "":
        error.append("error01")
    category = request.POST.getall("category")
    if len(category) == 0:
        error.append("error02")
    first_day = request.forms.get("first_day")
    try:
        datetime.datetime.strptime(first_day, '%Y-%m-%d')
    except:
        error.append("error03")
    last_day = request.forms.get("last_day")
    try:
        datetime.datetime.strptime(last_day, '%Y-%m-%d')
    except:
        error.append("error04")
    first_time = request.forms.get("first_time")
    try:
        datetime.datetime.strptime(first_time, '%H:%M')
    except:
        error.append("error05")
    last_time = request.forms.get("last_time")
    try:
        datetime.datetime.strptime(last_time, '%H:%M')
    except:
        error.append("error06")
    location = request.forms.get("location")
    if location == "":
        error.append("error07")
    adress = request.forms.get("adress")
    if adress == "":
        error.append("error08")
    organizer = request.forms.get("organizer")
    if organizer == "":
        error.append("error09")
    website = request.forms.get("website")
    if not validators.url(website):
        error.append("error10")
    image = request.files.get("image")
    description = request.forms.get("description")
    if description == "":
        error.append("error12")
    tipster = request.forms.get("tipster")
    if tipster == "":
        error.append("error13")
    tipster_mail = request.forms.get("tipster_mail")
    if not validators.email(tipster_mail):
        error.append("error14")
    
    if len(error) > 0:
        redirect("tips")
        else:    
            query = ("INSERT INTO event (event_name, first_day, last_day, first_time, last_time, location, adress, organizer, website, image, description, tipster, tipster_mail) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)")
            cur.execute(query, (event_name, first_day, last_day,    first_time, last_time, location, adress, organizer, website, image, description, tipster, tipster_mail))
            db.commit()
            redirect("/")

run(app=app)



