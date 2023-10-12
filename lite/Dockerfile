FROM python:3.9-bullseye

RUN apk add build-base

RUN pip install pip --upgrade

RUN pip install --upgrade setuptools wheel cmake

RUN pip install greenlet==2.0.2 --no-cache-dir

RUN pip install pretext 

RUN pip install codechat-server

RUN playwright install-deps


RUN wget https://github.com/jgm/pandoc/releases/download/3.1.4/pandoc-3.1.4-1-amd64.deb && \
  dpkg -i pandoc-3.1.4-1-amd64.deb