FROM ubuntu:latest
MAINTAINER Jon Schulberger <jschoulzy@gmail.com>

# Pre-req for adding deluge repo
RUN apt-get update -q && \
    apt-get install -qy \
    software-properties-common

# Add repo, install daemon & webui
RUN add-apt-repository -y ppa:deluge-team/ppa && \
    apt-get update -q && \
    apt-get -qy install \
    deluge-webui \
    deluged && \
    rm -rf /var/lib/apt/lists/*

# Create & assign user
RUN adduser deluge --disabled-login
USER deluge

CMD ["/entrypoint.sh"]
