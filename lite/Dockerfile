FROM python:3

RUN wget https://github.com/jgm/pandoc/releases/download/3.1.4/pandoc-3.1.4-1-amd64.deb && \
  dpkg -i pandoc-3.1.4-1-amd64.deb

RUN pip install pip --upgrade

RUN pip install --upgrade setuptools wheel Cmake

RUN pip install pretext 

RUN pip install codechat-server


RUN playwright install-deps
