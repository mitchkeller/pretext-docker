FROM python:3.12-bookworm

RUN apt-get update && \
apt-get install -y npm nodejs python3-dev python3-louis libcairo2-dev pkg-config librsvg2-bin && \
apt-get clean

RUN pip install pip --upgrade

RUN pip install pretext[homepage,prefigure] --only-binary {greenlet}

RUN pip install codechat-server

RUN playwright install-deps

RUN echo '/usr/lib/python3/dist-packages' > /usr/local/lib/python3.12/site-packages/louis.pth

RUN prefig init

RUN wget https://github.com/jgm/pandoc/releases/download/3.1.4/pandoc-3.1.4-1-amd64.deb && \
  dpkg -i pandoc-3.1.4-1-amd64.deb