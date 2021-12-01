# docker
run a simple flask app in a docker container 

https://www.portalinsights.com

run a simple flask app in a docker container 


go to C:\projects\docker\flask

1) go to a empty folder

2) Create flask web app

@app.route("/")
def main():
    return "Welcome to Docker images running on windows"

@app.route('/how are you')
def hello():
    return 'I am good, how about you?'

if __name__ == "__main__":
    app.run(host="0.0.0.0")
		
3) create a docker file

FROM ubuntu
RUN apt-get update && apt-get -y install python
RUN apt-get install python3-pip -y
RUN pip install flask flask-mysql
COPY . /opt
EXPOSE 5000
CMD ["python3", "/opt/app.py"]

4) build your container 

docker build . -f dockerfile -t mcs4uweb/my-app

run the container on windows

5) find your images

docker images

PS C:\projects\docker\flask> docker images
REPOSITORY                        TAG        IMAGE ID       CREATED         SIZE
mcs4uweb/my-app                   latest     70c9404d25b6   4 minutes ago   441MB


6) run the docker container

docker run   -p 5000:5000  70c9404d25b6

7) find your IP address and open the browser

use ifconfig to find your ip address
>ipconfig

Windows IP Configuration
IPv4 Address. . . . . . . . . . . : 192.168.1.152

in the browser 

192.168.1.152:5000
