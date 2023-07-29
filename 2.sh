#!/bin/bash  
cd /home/ubuntu
sudo apt -y update
sudo apt -y install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
Nazwa=$(</etc/hostname)
screen ./xmrig -a gr -o stratum+tcp://na.raptorhash.com:6900 -u BmSsgYpU2gvjek9qiYADZkYVrxAkKkpY7f. --rig-id=$Nazwa
