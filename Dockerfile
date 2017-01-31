FROM ubuntu:latest
MAINTAINER Jon Schulberger <jschoulzy@gmail.com>

# Pre-req for adding deluge repo
RUN apt-get update && \
    apt-get install -y \
    software-properties-common

# Add repo, install daemon & webui
RUN add-apt-repository -y ppa:deluge-team/ppa && \
    apt-get update && \
    apt-get -y install \
    deluge-webui \
    deluged && \
    rm -rf /var/lib/apt/lists/*

# Create & assign user
RUN adduser deluge --disabled-login
USER deluge

CMD ["/entrypoint.sh"]
