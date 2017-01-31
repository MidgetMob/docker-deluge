#!/bin/bash
set -e

# Start the daemon
deluged -c /home/deluge -l /home/deluge/deluged.log

# Start the webui
deluge-web -c /home/deluge
