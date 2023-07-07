#!/bin/bash

status=$?
# changeing to root user
#echo " changeing to root user :${status}"
#sudo -s
ls -l
if test $status -eq 0
then
   echo "ls files listed :${status}"
else
   echo "ls file list failed :${status}"
fi
# copy a file 
#status=$?
cp test test3
if [ $? -eq 0 ]
   then
      echo "cp copied files  "
else
      echo "cp file copy failed "
fi
#  remove apparmor
echo " remove apparmor package"
systemctl disable apparmor
apt-get remove apparmor
if test $status -eq 0
then
   echo "remove files listed 0 :$?}"
else
   echo "remove file copy failed 1 :$?"
fi
# 
if apt-get remove apparmor -y; then
	echo "passed 0"
else
	echo "failed again 1"
fi
apt-get install selinux -y
setenforce 0
#
echo "wget https://releases.hashicorp.com/vault/1.13.3/vault_1.13.3_linux_amd64.zip"
if [ $? -eq 0 ]
   then
      echo "wget download files  "
else
      echo "wget file failed "
fi
apt-get install unzip curl unzip docker-compose -y
if [ $? -eq 0 ]
   then
      echo "package installed  files  "
else
      echo "package file failed "
fi

echo "unzip vault_1.13.3_linux_amd64.zip || mv vault /usr/local/bin"
#echo "mv vault /usr/bin"
if [ $? -eq 0 ]
   then
      echo "unzip unzip vault_1.13.3_linux_amd64.zip and copy to /usr/local/bin package installed  files  "
else
      echo "failed to unzip package file failed "
fi

# docker install
echo "sudo apt-get install docker-compose -y"
echo "sudo docker"
echo "sudo docker-compose"
echo "sudo docker ps"
echo "sudo usermod -aG docker $USER"
echo "sudo usermod -aG docker vagrant"
if [ $? -eq 0 ]
   then
      echo " Install docker and docker-compose and configure"
else
      echo "failed to install docker and config"
fi
echo "docker run hello-world"
if [ $? -eq 0 ]
   then
      echo "Check docker is runing"
else
      echo "failed to run docker"
fi
# get vault-monitoring 
#echo "git clone https://github.com/samgabrail/vault-monitoring.git"
#if [ $? -eq 0 ]
#   then
#      echo " git clone vault-monitoring"
#else
#      echo "failed to git clone vault-monitoring"
#fi
