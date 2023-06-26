FROM python:3


RUN pip install pretext codechat-server

RUN apt update && apt install -y --no-install-recommends \
    texlive texlive-science texlive-xetex \
    ghostscript \
    pdf2svg 

RUN wget https://github.com/jgm/pandoc/releases/download/3.1.4/pandoc-3.1.4-1-amd64.deb && \
    dpkg -i pandoc-3.1.4-1-amd64.deb

RUN playwright install-deps