FROM ubuntu:latest
MAINTAINER Jon Schulberger <jschoulzy@gmail.com>

RUN locale-gen en_US en_US.UTF-8

RUN apt-get -y install software-properties-common && \
    add-apt-repository -y ppa:deluge-team/ppa && \
    apt-get update && \
    apt-get -y install deluge-webui deluged

CMD ["/startscript.sh"]