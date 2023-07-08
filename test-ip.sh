#!/usr/bin/env bash
#ip=$(`hostname -I '{print $2}'`)
#echo $ip

ip=`hostname -I | awk '{print $2}'` 
echo $ip
export VAULT_ADDR=http://$ip:8200
env |grep VAULT
