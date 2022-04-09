FROM ubuntu:20.04 as ubuntu-base
RUN apt-get update -y && apt-get upgrade
RUN apt-get install -y --no-install-recommends ffmpeg 
RUN pip3 install -U pip
RUN curl -sL https://deb.nodesource.com/setup_17.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD bash start
