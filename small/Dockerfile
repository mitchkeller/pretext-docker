FROM python:3


RUN pip install pretext codechat-server

RUN apt update && apt install -y --no-install-recommends \
    texlive texlive-science texlive-xetex \
    ghostscript \
    pdf2svg \
    pandoc 

RUN playwright install-deps