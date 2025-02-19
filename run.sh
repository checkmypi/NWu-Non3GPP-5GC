#!/bin/bash

[ ! -d /dev/net ] && mkdir /dev/net
[ ! -c /dev/net/tun ] && mknod /dev/net/tun c 10 200

MY_IP=$(ip -br a ls dev eth0 | awk '{print $3}' | awk -F"/" '{print $1}')

CORE_IP=${1:-192.168.1.193}

python3 nwu_emulator.py -I 001010000002001 -K 00112233445566778899AABBCCDDEEFF -C 279eb54971771559879284fddde3ee0c -s ${MY_IP} -d ${CORE_IP} -M 001 -N 01

#python3 nwu_emulator.py -I 001010000002001 -K 00112233445566778899AABBCCDDEEFF -C 279eb54971771559879284fddde3ee0c -s 192.168.1.42 -d 192.168.1.192 -M 001 -N 01 -F
#python3 nwu_emulator.py -I 001010000002001 -K 00112233445566778899AABBCCDDEEFF -C 279eb54971771559879284fddde3ee0c -s 192.168.1.42 -d 192.168.1.194 -M 001 -N 01 -F
