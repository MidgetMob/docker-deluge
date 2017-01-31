#!/bin/bash

set -e

# Start the daemon
deluged -c /mnt/deluge -L info -l /mnt/deluge/deluged.log

# Start the webui
deluge-web -c /mnt/deluge
