FROM mitchkelleruw/pretext:lite

RUN apt update && apt install -y --no-install-recommends \
    texlive \
    texlive-plain-generic \
    texlive-science \
    texlive-xetex \
    texlive-fonts-extra \
    ghostscript \
    asymptote \
&& apt-get clean && rm -rf /var/lib/apt/lists/*
