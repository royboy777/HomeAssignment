#!/bin/bash
#add fix to exercise5-server1 here
#Solution to the issue of Password-less ssh implemented on server1 in order to ssh server2 without password
#This is by implementing procedure for that , including : generating key in case not exist already, chmod to authorized_keys
#Installing sshpass (in order to copy file to remote server) , copy the id_rsa.pub file to server2, adding it to server2 authorized_keys
#Delete the id_rsa.pub on server1
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
chmod 600 ~/.ssh/authorized_keys
sudo apt-get update
sudo apt-get install sshpass
cat ~/.ssh/id_rsa.pub | sshpass -p "vagrant" ssh -o StrictHostKeyChecking=no vagrant@192.168.100.11 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
rm ~/.ssh/id_rsa.pub
