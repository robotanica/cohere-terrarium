#!/bin/bash

# nvm npm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install --lts
npm install

# install service
sudo ln -s /home/nex/robotanica/cohere-terrarium/terrarium.service /lib/systemd/system/terrarium.service
sudo systemctl daemon-reload
sudo systemctl enable terrarium.service
sudo systemctl start terrarium.service
sudo systemctl status terrarium.service
