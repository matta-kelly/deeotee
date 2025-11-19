#!/bin/bash

# Check if wg0-client interface exists and is up
if ip link show wg0-client &> /dev/null; then
    echo "VPN ✓"
    echo "VPN"
    echo "connected"
else
    echo "VPN ✗"
    echo "VPN"
    echo "disconnected"
fi