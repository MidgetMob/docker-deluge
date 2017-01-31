FROM ubuntu:latest
MAINTAINER Jon Schulberger <jschoulzy@gmail.com>

# Create user
RUN adduser deluge --disabled-login

# Pre-req for adding deluge repo
RUN apt-get -qq update && \
    apt-get -qqy install \
    software-properties-common

# Add repo, install daemon & webui
RUN add-apt-repository -y ppa:deluge-team/ppa && \
    apt-get -qq update && \
    apt-get -qqy install \
    deluge-webui \
    deluged && \
    rm -rf /var/lib/apt/lists/*

# Assign user
USER deluge

CMD ["/entrypoint.sh"]
