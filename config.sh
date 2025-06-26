#!/bin/bash

ls ~/.ssh | grep .pup || (ssh-keygen && exit)
echo FOUND SSH

ls | grep synch || git clone git@github.com:Bretzz/synch
echo FOUND REPO
