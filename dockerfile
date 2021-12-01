FROM ubuntu
RUN apt-get update && apt-get -y install python
RUN apt-get install python3-pip -y
RUN pip install flask flask-mysql
COPY . /opt
EXPOSE 5000
CMD ["python3", "/opt/app.py"]
