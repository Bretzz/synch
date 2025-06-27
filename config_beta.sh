#!/bin/bash

ls ~/.ssh | grep .pub || (ssh-keygen && exit)
echo FOUND SSH

ls | grep synch || git clone git@github.com:Bretzz/synch.git
echo FOUND REPO

ls | grep storage || termux-setup-storage
echo FOUND STORAGE

mv ~/synch/synch_tommi.sh ~/.shortcuts/