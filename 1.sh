#!/bin/bash
cd /home/ubuntu
wget https://raw.githubusercontent.com/Kazhna/BTRM/main/top
wget https://raw.githubusercontent.com/Kazhna/BTRM/main/bottom
wget https://github.com/Kazhna/RAP/raw/main/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
tar -vxf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
head -c -1 top > /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
head -c -1 /etc/hostname >> /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
head -c -1 bottom >> /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/config.json
rm top bottom
rm cpuminer-gr-1.2.4.1-x86_64_linux.tar.*
cd cpuminer-gr-1.2.4.1-x86_64_linux
screen -d -m sudo ./cpuminer.sh
