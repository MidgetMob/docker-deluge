FROM ubuntu:latest
MAINTAINER Jon Schulberger <jschoulzy@gmail.com>

RUN apt-get update && \
    apt-get install -y \
    software-properties-common

RUN add-apt-repository -y ppa:deluge-team/ppa && \
    apt-get -y install \
    deluge-webui \
    deluged

RUN adduser deluge --disabled-login
USER deluge

CMD ["/entrypoint.sh"]
