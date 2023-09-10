#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   	echo "This script must be run as root" 
   	exit 1
fi

echo -n "Enter username for new configuration: "

read username

echo -n "Enter new local ip address: "

read ip_end

server_ip="123.0.0.1"
wg_path="/etc/wireguard/"
pr_key="${username}_privatekey"
pu_key="${username}_publickey"
wgpr="privatekey"
wgpu="publickey"

wg genkey | tee ${wg_path}${pr_key} \
 | wg pubkey | tee ${wg_path}${pu_key}

echo "
[Peer]
PublicKey = $(cat $pu_key)
AllowedIPs = 10.0.0.${ip_end}/32" >> ${wg_path}wg0.conf

systemctl restart wg-quick@wg0
systemctl status wg-quick@wg0

echo "[Interface]
PrivateKey = $(cat $pr_key)
Address = 10.0.0.${ip_end}/32
DNS = 8.8.8.8

[Peer]
PublicKey = $(cat $wgpu)
Endpoint = ${server_ip}:51830
AllowedIPs = 0.0.0.0/0
PersistentKeepalive = 20" >> ${username}_cli.conf


