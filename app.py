#!/usr/bin/env python3
# -*- coding: utf-8 -*-

from flask import Flask, jsonify, redirect, render_template
import json

app = Flask(__name__)

@app.route('/api/v1/ping', methods=['GET'])
def ping_pong():
    data = {
        'status': 'success',
        'message': 'pong!'
    }
    return jsonify(data)

@app.route('/api/v1/tv/grid/<string:channel>', methods=['GET'])
def serve_json(channel):  # Add the missing parameter "channel"
    if channel == "caosvision":
        data = {
            'streams': [
                "https://www.youtube.com/embed/Hy4UCfsE6Yk",
                "https://www.youtube.com/embed/ocFG3yor--M",
                "https://www.youtube.com/embed/avly0uwZzOE",
                "https://www.youtube.com/embed/cb12KmMMDJA"
            ]
        }
    else:
        return redirect("https://ayuda.la", code=302)
    return jsonify(data)

@app.route('/', methods=['GET'])
def index():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000, threaded=True, use_reloader=True)