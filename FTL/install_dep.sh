#!/bin/bash

# Add your script code here
# This script is used to install the dependencies for the FTL project
sudo apt install git wget ca-certificates build-essential libgmp-dev m4 cmake libidn2-dev libunistring-dev libreadline-dev xxd

# Install Nettle
wget https://ftp.gnu.org/gnu/nettle/nettle-3.9.1.tar.gz
tar -xzf nettle-3.9.1.tar.gz

# Install mbedTLS
wget https://github.com/Mbed-TLS/mbedtls/archive/refs/tags/v3.5.0.tar.gz -O mbedtls-3.5.0.tar.gz
tar -xzf mbedtls-3.5.0.tar.gz

# Get the source
git clone https://github.com/ankush3700/varunpt2.git && cd varunpt2 && cd FTL

# End of script