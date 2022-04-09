FROM ubuntu:20.04 
FROM python:3.9.12-buster
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends ffmpeg 
RUN pip3 install -U pip
RUN curl -fssL https://deb.nodesource.com/setup_17.x | bash - 
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip3 install -U -r requirements.txt
CMD bash start
