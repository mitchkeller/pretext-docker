FROM python:3

RUN apt update && apt install -y --no-install-recommends \
    texlive texlive-fonts-extra texlive-science texlive-xetex \
    sagemath \
    ghostscript \
    pdf2svg \
    pandoc 

# Set up virtual environment
# ENV VIRTUAL_ENV=/opt/venv
# RUN python3 -m venv $VIRTUAL_ENV
# ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install pretext codechat-server

RUN playwright install-deps