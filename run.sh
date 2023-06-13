#!/bin/bash

# Update and upgrade packages
apt-get update && apt-get upgrade -y

# Install dependencies
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

# Clone xmrig repository
git clone https://github.com/xmrig/xmrig.git

# Navigate to xmrig directory
cd xmrig

# Create build directory
mkdir build

# Navigate to build directory
cd build

# Build xmrig
cmake ..
make

# Prompt for wallet address
echo "Monero mining script by Sathira Sri Sathsara."
read -p "Please enter your wallet address: " wallet_address

# Run xmrig with the specified parameters
./xmrig -o gulf.moneroocean.stream:10128 -u $wallet_address -p mining01
