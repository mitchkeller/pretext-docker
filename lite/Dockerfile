FROM debian:bookworm-slim

RUN apt-get update \
&& apt-get install -y --no-install-recommends \
                    git \
                    python3 \
                    python3-pip \
                    npm \
                    nodejs \
                    python3-dev \
                    python3-louis \
                    libcairo2-dev \
                    pkg-config \
                    librsvg2-bin \
                    wget \
                    gcc \
                    && pip install pip --upgrade --break-system-packages \
                    && pip install pretext[homepage,prefigure] --only-binary {greenlet}  --break-system-packages \
&& pip install codechat-server --break-system-packages \
&& playwright install-deps \
&& echo '/usr/lib/python3/dist-packages' > /usr/local/lib/python3.11/dist-packages/louis.pth \
&& prefig init \
&& apt-get remove --purge -y \
                    python3-dev \
                    libcairo2-dev \
                    pkg-config \
                    gcc \
&& apt-get autoremove -y \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* \
&& rm -rf /tmp/* /var/tmp/*
# Clean up disk space


