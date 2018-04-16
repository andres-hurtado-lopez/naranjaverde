#!/usr/bin/env python
# -*- coding: utf-8 -*-
#

# sudo apt-get install python-pip
# sudo pip install --upgrade pip
# sudo pip install setuptools
# sudo pip install bottle
# sudo pip install tornado
# sudo apt-get install mysql-server
# sudo apt-get install python-pip python-dev libmysqlclient-dev
# sudo pip install MySQL-python
# sudo pip install passlib
# sudo pip install bcrypt


import os, sys, bottle, utils, datetime, uuid
import tornado.wsgi, tornado.httpserver, tornado.ioloop
from lockfile import locked
from bottle import request, response, template, auth_basic, static_file, redirect, abort


if len(sys.argv) < 3:
    print "El idenficador del servidor tiene que ser especificado como parametro\n"
    print "sintaxis: ./simplewas_ctrl.py {server_id} {port}"
    exit(1)
else:
    server_id = sys.argv[1]

class TornadoServer(bottle.ServerAdapter):
    def run(self, handler): # pragma: no cover
        container = tornado.wsgi.WSGIContainer(handler)
        server = tornado.httpserver.HTTPServer(container,ssl_options = {
            "certfile" : os.path.join("cert.pem"),
            "keyfile" : os.path.join("cert.pem"),
        })
        server.listen(port=self.port,address=self.host)
        tornado.ioloop.IOLoop.instance().start()


def handle500(error):
    return template('500.html',error=error)

def handle404(info):
    return template('404.html')

def handle401(info):
    return template('401.html')


app = bottle.Bottle()
app.debug = True
app.error_handler = {
    500: handle500,
    404: handle404,
    401: handle401
}

@app.route('/',method="GET")
def login():
    incorrect_login = request.params.get('incorrect_login','')
    return template('index.html',params={incorrect_login: incorrect_login})

@app.route('/static/<path:path>',method="GET")
def static(path):
    return static_file(path,root="views/static")

@app.route('/authenticate', method="POST")
def authenticate():
    try:
        ts = datetime.datetime.now()+datetime.timedelta(days=1)
        token = str(uuid.uuid4())
        response.set_cookie("token", token, expires=ts, path="/")

        username = request.forms.get('username','')
        password = request.forms.get('password','')
        if utils.check_pass(username, password):
            db = utils.ConnectDB()
            db.execute('UPDATE users SET session_key = %s WHERE user = %s', (token,username))
            db.execute('COMMIT');
            redirect('/home.html')
        else:
            redirect('/?incorrect_login=True&username={username}'.format(username=username))
    except bottle.HTTPResponse, e:
        raise e


@app.route('/hashpassword/<username>/<password>', method="GET")
def hashpassword(username,password):
    return utils.hashpassword(username,password)


@app.route('/<path:path>',method="GET")
@utils.checkauth
def root_GET(path):
    if request.params.get('raw_request','') == 'true':
        loc = {}
        glob = {}
        execfile('./views/'+path,glob, loc )
        response.content_type = loc['content_type']
        return loc.get('raw_output')
    if os.path.isfile('./views/'+path):
        return template(path)
    else:
        abort(404)

@app.route('/<path:path>',method="POST")
@utils.checkauth
def root_POST(*args,**kwargs):
    if request.params.get('raw_request','') == 'true':
        loc = {}
        glob = {}
        execfile('./views/'+path,glob, loc )
        response.content_type = loc['content_type']
        return loc.get('raw_output')
    if os.path.isfile('./views/'+kwargs['path']):
        return template(kwargs['path'])
    else:
        abort(404)

@locked(server_id)
def main():
    app.run(server=TornadoServer, host='0.0.0.0', port=int(sys.argv[2]), debug=True)

if __name__ == '__main__':
    main()    
