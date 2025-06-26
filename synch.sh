#!/bin/bash

ls ~/ | grep synch && (echo "NO REPO" && exit)

cd ~/synch; git pull && git add . && git commit -m $(date) && git push