import os, json
from flask import (
    Flask,
    abort,
    redirect,
    render_template,
    request,
    send_from_directory,
    session,
    url_for,
)

app = Flask(__name__)


@app.route('/test', methods=['GET'])
def test_endpoint():
    return '329d4feb-c5c0-4de5-b10c-701b44fbec4f'

@app.route('/health', methods=['GET'])
def health_endpoint():
    return 'success'


if __name__ == "__main__":
    app.run(debug=False, host="0.0.0.0", port=8080)
