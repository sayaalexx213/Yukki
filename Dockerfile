FROM ubuntu:20.04 - python3.9
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y --no-install-recommends ffmpeg 
RUN curl -sL https://deb.nodesource.com/setup_17.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install npm
RUN mkdir /app/
WORKDIR /app/
COPY . /app/
RUN pip3 install -U -r requirements.txt
CMD bash start
