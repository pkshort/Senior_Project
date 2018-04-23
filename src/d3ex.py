##!/usr/bin/env python3
# -*- coding: utf-8 -*-

from ConfigParser import SafeConfigParser
from flask import Flask, Response
import json
import logging
import signal
import sys

from GetNodes import GetNodes

# ======================= Set Application Defaults =======================
CONFIG_FILE = 'd3ex.ini'
config = SafeConfigParser()
config.read(CONFIG_FILE)
DATA_DIR = config.get('defaults', 'DataDirectory')
JSON_OUTPUT = config.get('defaults', 'jsonFile')
STATIC_URL_PATH = config.get('defaults', 'StaticURLPath')

# Set the logging and flask configuration
logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(levelname)s - %(filename)s:%(lineno)d - %(message)s')
logging.debug("Defaults: {} : {} : {}".format(DATA_DIR, JSON_OUTPUT, STATIC_URL_PATH))
app = Flask(__name__, static_folder='static',  template_folder='static')
logging.debug("Finished loading application defaults and configuring Flask")


# ======================= Flask entry point(s) =======================
@app.route("/", methods=['GET'])
def display_visualization():
    logging.debug("loading html and static content")
    return app.send_static_file('network.html')


@app.route("/v1/getdata/", methods=['GET'])
def api_endpoint():
    logging.debug("Building Data Set")
    nodes = GetNodes(config)
    apioutput = "{}{}".format(DATA_DIR, 'apioutput.json')
    outputdata = fix_json_output(nodes.build_full_dataset())
    logging.debug("Saving data to {} before sending to api endpoint".format(apioutput))
    with open(apioutput, 'w') as outfile:
        outfile.write(outputdata)
    return Response(outputdata, mimetype='text/plain')


# Capture the keyboard interrupt to gracefully shutdown
def signal_handler(signal, frame):
    logging.debug("Keyboard interrupt - shutting down")
    sys.exit(0)


# After carefully building the list and converting to json, I continue to find minor problems.  At this point, doing
# this fix is much faster that the time troubleshooting the list building
def fix_json_output(dataset):
    logging.debug("Fixing json output")
    tmpstr1 = json.dumps(dataset)
    tmpstr2 = tmpstr1.replace('[{"Nodes": [[{', '{"Nodes": [{')
    tmpstr3 = tmpstr2.replace('}]]}, {"Links": [[{', '}], "Links": [{')
    return tmpstr3.replace('"Value": "0"}]]}]', '"Value": "0"}]}')


# ======================= Main Program =======================
if __name__ == '__main__':
    # Build the data when the application loads - save out to a datafile
    logging.debug("Entering main")
    outputfile = "{}{}".format(DATA_DIR, JSON_OUTPUT)
    logging.debug("Saving data to {}".format(outputfile))
    gn = GetNodes(config)
    dataoutput = gn.build_full_dataset()
    with open(outputfile, 'w') as outfile:
        outfile.write(fix_json_output(dataoutput))
    logging.debug("Saved data to {}".format(outputfile))

    signal.signal(signal.SIGINT, signal_handler)    # setup the keyboard interrupt before launching the webserver
    app.run(host='0.0.0.0', port=8080)              # Launch the webserver
