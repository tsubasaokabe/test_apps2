from ubuntu
workdir /simple-keras-rest-api

LABEL maintainer Tsubasa Okabe<tokabe@netprotections.co.jp>

RUN apt-get update
RUN apt-get install python3-pip -y

RUN pip3 install numpy pandas sklearn seaborn requests pillow
RUN pip3 install keras tensolfrow Flask gevent json

EXPOSE 5000
CMD ["python3", "run_keras_server.py"]