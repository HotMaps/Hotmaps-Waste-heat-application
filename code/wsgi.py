# -*- coding: utf-8 -*-

from flask import Flask
import sys


application = Flask(__name__)

@application.route('/', methods=['GET'])
def index():
    return 'HotMaps-waste-heat-application' + ' running Python ' + sys.version + ', using virutalenv: ' + str(hasattr(sys, 'real_prefix'))

def test():
    application.run(debug=True)

if __name__ == '__main__':
    test()
