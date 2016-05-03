#coding:utf-8
from bottle import *
from beaker.middleware import SessionMiddleware
import MySQLdb
import datetime
import validators


#OPTIONS
#Log in to database
db = MySQLdb.connect("195.178.232.16", port=3306, user="AF6712", passwd="Kanelbulle88", db="AF6712", charset='utf8');
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
    
def get_active():
    query = "SELECT * FROM event \
       WHERE status = '%s' \
       ORDER BY first_day ASC \
       LIMIT 5" % ("active")
    cur.execute(query)
    return cur.fetchall()

def get_tips():
    query = "SELECT * FROM event \
       WHERE status = '%s' \
       ORDER BY first_day ASC" % ("active")
    cur.execute(query)
    return cur.fetchall()
    
def get_events(handler):
    query = "SELECT * FROM event \
       WHERE status = '%s'" % (handler)
    cur.execute(query)
    return cur.fetchall()
    
#Static Routes

#Link to the static file with images, javascript, css
@route('/static/<filename:path>')
def server_static(filename):
    return static_file(filename, root='static')

#Routes

#Här är alla routes, de man kan nå via vår hemsida efter grundnamnet. typ www.nextup.se. Så www.nextup.se/ är hem, som ni ser nedan. www.nextup.se/tips så kommer man till den routen. Allt detta sköter vår serverfil, dvs. denna filen.
@route("/")
def index():
    return template("index", events=get_active())

@route("/admin")
def reroute():
    redirect("/admin/new")
    
@route("/admin/<handler>")
def admin(handler):
    if get_user() != None:
        return template("admin", user=get_user(), events=get_events(handler))
    else:
        redirect("/login")

@route("/tips")
def tips():
    return template("tips", error=[])

@route("/events")
def events():
    tips = get_tips()
    return template("events", tips=tips)

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
def eventpage():
    return template("eventpage", tips=get_tips())
    

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
        redirect("/admin/new")
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
    status = "new"
    if len(error) > 0:
        redirect("/tips")
        
    else:    
        query = ("INSERT INTO event (event_name, first_day, last_day, first_time, last_time, location, adress, organizer, website, image, description, tipster, tipster_mail, status) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)")
        cur.execute(query, (event_name, first_day, last_day,    first_time, last_time, location, adress, organizer, website, image, description, tipster, tipster_mail, status))
        db.commit()
        redirect("/tips")

@route("/admin_process", method="post")
def admin_process():
    status = request.forms.getall("status")
    ID = request.forms.getall("event_id")
    query = "UPDATE event \
    SET status = '%s' \
    WHERE event_ID = '%s'" %(status[0], ID[0])
    cur.execute(query)
    db.commit()
    print query
    redirect("/admin/new")
    
run(app=app)



