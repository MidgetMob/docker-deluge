#!/bin/bash

set -e

# Start the daemon
deluged -c /home/deluge -L info -l /mnt/deluge/deluged.log

# Start the webui
deluge-web -c /home/deluge
