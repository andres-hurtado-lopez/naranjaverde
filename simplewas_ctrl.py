#!/usr/bin/env python
# -*- coding: utf-8 -*-
#

import os, sys, bottle
import tornado.wsgi, tornado.httpserver, tornado.ioloop
from bottle import template


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


app = bottle.Bottle()

launched_servers = []

@app.route('/testRunning', method="GET")
def testRunning(server):
    for item in launched_servers:
        rc = os.system('ps -fea | grep --regexp=".*python.*simplewas\\.py {server}"'.format(server=server))
        launched_servers[item]['state'] = rc
    return {'servers':launched_servers}

@app.route('/stop', method="POST")
def run(server):
    to_stop = request.params['server_id']
    rc = os.system('knohup ./simplewas.py {server} > {server}_operation.log &'.format(server=server))
    
    launched_servers.append({'server_id':server, 'port':port, 'state':rc})
    return str(rc)

@app.route('/run/<server>/<port>', method="GET")
def run(server):
    rc = os.system('nohup ./simplewas.py {server} > {server}_operation.log &'.format(server=server))
    
    launched_servers.append({'server_id':server, 'port':port, 'state':rc})
    return str(rc)

@app.route('/')
def root():
    return template('control_panel.html',launched_servers=launched_servers)

def main():
    app.run(server=TornadoServer, host='0.0.0.0', port=8080)

if __name__ == '__main__':
    main()    
