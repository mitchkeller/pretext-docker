FROM python:3

RUN apt update && apt install -y --no-install-recommends \
    texlive texlive-fonts-extra texlive-science texlive-xetex \
    sagemath \
    ghostscript \
    pdf2svg 

RUN wget https://github.com/jgm/pandoc/releases/download/3.1.4/pandoc-3.1.4-1-amd64.deb && \
    dpkg -i pandoc-3.1.4-1-amd64.deb

RUN pip install pretext codechat-server

RUN playwright install-deps