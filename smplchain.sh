#!/bin/bash

# Prompt for root password and switch to root user
echo "Please enter the root password:"
su -c "
# Change directory to /tmp
cd /tmp

# Download and extract the Multichain package
wget https://www.multichain.com/download/multichain-2.3.3.tar.gz
tar -xvzf multichain-2.3.3.tar.gz

# Change directory to the extracted Multichain directory
cd multichain-2.3.3

# Move the Multichain binaries to /usr/local/bin
mv multichaind multichain-cli multichain-util /usr/local/bin

# Exit the root shell
exit"

# Start the Multichain daemon for SmplChain
multichaind SmplChain -daemon
