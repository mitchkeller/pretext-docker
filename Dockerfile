FROM texlive/texlive

RUN apt update && apt install -y --no-install-recommends \
    python3-pip \
    python3-venv \
    sagemath \
    ghostscript \
    pdf2svg


# Set up virtual environment
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install pretext codechat-server

