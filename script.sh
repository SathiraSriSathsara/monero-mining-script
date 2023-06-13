#!/bin/bash


# Prompt for wallet address
echo "Monero mining script by Sathira Sri Sathsara."
read -p "Please enter your wallet address: " wallet_address
read -p "Woker Name: " name

# Run xmrig with the specified parameters
screen -s mine ./xmrig -o gulf.moneroocean.stream:10128 -u $wallet_address -p $name
