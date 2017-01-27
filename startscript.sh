

#!/bin/bash

set -e

# Make sure the PID file does not exist
rm -rf /mnt/deluge/deluged/pid

# Start the daemon
deluged -c /mnt/deluge -L info -l /mnt/deluge/deluged.log

# Start the webui
deluge-web -c /mnt/deluge