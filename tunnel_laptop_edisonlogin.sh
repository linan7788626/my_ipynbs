#!/bin/bash
# run this on your laptop
# tunnels via SSH a port between laptop and Edison login node
# then you can connect to localhost:8181 and access 8181 on 
# edison login node
# change YOURUSERNAME with your username on Edison
# call the script as bash tunnel_laptop_login.sh ##
# where ## is the 2 digits edison login node number, e.g. 03
[ $# -eq 0 ] && { echo "Usage: bash $0 ##; where ## is 2 digits edison login node number, e.g. 03"; exit 1; }
ssh -f -N -L 8227:localhost:8227 linan@edison${1}-eth5.nersc.gov
