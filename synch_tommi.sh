#!/bin/bash

ls ~/ | grep storage || (echo "fatal: no storage" && exit 1)

ls ~/storage/shared | grep synch || (echo "fatal: no repo" && exit 1)

cd ~/storage/shared/synch; git pull

cd ~/storage/shared/synch; git add . && git commit -m "$(date)"; git push
