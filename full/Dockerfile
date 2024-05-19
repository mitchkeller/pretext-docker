FROM oscarlevin/pretext:small

RUN apt update && apt install -y --no-install-recommends poppler-utils asymptote

COPY --from=sagemath/sagemath:latest /home/sage /home/sage