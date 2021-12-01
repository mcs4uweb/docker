@app.route("/")
def main():
    return "Welcome to Docker images running on windows"

@app.route('/how are you')
def hello():
    return 'I am good, how about you?'

if __name__ == "__main__":
    app.run(host="0.0.0.0")
