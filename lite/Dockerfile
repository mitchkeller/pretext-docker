FROM mcr.microsoft.com/devcontainers/python:3.12-bookworm

RUN pip install pip --upgrade

RUN sudo apt-get update && sudo apt-get install libcairo2-dev pkg-config python3-dev -y

RUN pip install pretext --only-binary {greenlet}

RUN pip install codechat-server

RUN playwright install-deps

RUN wget https://github.com/jgm/pandoc/releases/download/3.1.4/pandoc-3.1.4-1-amd64.deb && \
  dpkg -i pandoc-3.1.4-1-amd64.deb