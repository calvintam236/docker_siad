FROM ubuntu:16.04

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="SiaD in Docker. Full node. Supports CPU & HDD mining."

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl unzip \
    && curl -L -O https://github.com/NebulousLabs/Sia/releases/download/v1.3.0/Sia-v1.3.0-linux-amd64.zip \
    && unzip Sia-v1.3.0-linux-amd64.zip \
    && rm Sia-v1.3.0-linux-amd64.zip \
    && mv Sia-v1.3.0-linux-amd64/siad /usr/local/bin/siad \
    && chmod a+x /usr/local/bin/siad \
    && rm -r Sia-v1.3.0-linux-amd64 \
    && apt-get -y remove ca-certificates curl unzip \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}

ENTRYPOINT ["siad"]
CMD ["-h"]
