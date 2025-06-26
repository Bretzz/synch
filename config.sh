#!/bin/bash

ls ~/.ssh | grep .pub || (ssh-keygen && exit)
echo FOUND SSH

ls | grep synch || git clone git@github.com:Bretzz/synch.giy
echo FOUND REPO

termux-setup-storage

mv ~/synch/synch.sh ~/.shortcuts/