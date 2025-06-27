#!/bin/bash

ls ~/ | grep storage || (echo "fatal: no storage" && exit 1)

ls ~/ | grep synch || (echo "fatal: no repo" && exit 1)

cd ~/storage/synch; git pull

cd ~/storage/synch; git add . && git commit -m "$(date)"; git push
