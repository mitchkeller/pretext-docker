FROM python:3-bullseye

RUN wget https://github.com/jgm/pandoc/releases/download/3.1.4/pandoc-3.1.4-1-amd64.deb && \
  dpkg -i pandoc-3.1.4-1-amd64.deb

RUN python -m ensurepip

RUN python -m pip install pip --upgrade

RUN python -m pip install codechat-server --upgrade

RUN python -m pip install pretext --upgrade

RUN playwright install-deps
