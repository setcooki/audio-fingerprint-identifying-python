FROM ubuntu:20.04

ARG timezone="Europe/Berlin"
ENV TZ="Europe/Berlin"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y software-properties-common ca-certificates

RUN apt-get install -y python-is-python3 python3-pip

RUN apt-get install -y python-tk libsqlite3-dev ffmpeg portaudio19-dev python3-pyaudio

RUN apt-get install -y alsa-base alsa-utils

RUN pip install pandas numpy matplotlib termcolor scipy wave pydub reader PyAudio

RUN mkdir -p /var/app
RUN mkdir -p /var/app/db
RUN mkdir -p /var/app/mp3
RUN mkdir -p /var/app/mic

WORKDIR /var/app
VOLUME ./db /var/app/db
VOLUME ./mp3 /var/app/mp3
VOLUME ./mic /var/app/mic
COPY . /var/app
