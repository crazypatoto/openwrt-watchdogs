#!/bin/sh
 
 
# Check OpenVPN gateway connectivity
TRIES="0"
while [ "${TRIES}" -lt 5 ]
do
    if ping -c 1 -w 3 10.0.11.1 &> /dev/null
    then exit 0
    else let TRIES++
    fi
done
 
# Restart openvpn
killall openvpn
sleep 3
openvpn --config /etc/openvpn/client.conf
