from bottle import route, run, template, get, post, request, response, redirect, default_app, static_file, TEMPLATE_PATH, error, redirect
import psycopg2, psycopg2.extras

@route('/')
def redirect_to_login():
	redirect('/index')

@route('/index', method=["GET"])
def index():
	return template('index.tpl')

@route('/connect', method='POST')
def connect():
	host  = request.forms.get("host")
	user  = request.forms.get("user")
	passwd = request.forms.get("passwd")
	db= request.forms.get("db")
	conn = psycopg2.connect(database=db, user=user, password=passwd, host=host)
	cursor = conn.cursor()
	cursor.execute("select * from profesores;")
	rows = cursor.fetchall()
	cursor.close()
	return template('result.tpl',resultado=rows)

run(host='127.0.0.1', port=8080, debug=True)
