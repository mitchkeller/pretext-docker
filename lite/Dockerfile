FROM mcr.microsoft.com/devcontainers/python:0-3.11

RUN pip install pip --upgrade

RUN pip install pretext --only-binary {greenlet}

RUN pip install codechat-server

RUN playwright install-deps


RUN wget https://github.com/jgm/pandoc/releases/download/3.1.4/pandoc-3.1.4-1-amd64.deb && \
  dpkg -i pandoc-3.1.4-1-amd64.deb