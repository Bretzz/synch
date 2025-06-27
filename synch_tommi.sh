#!/bin/bash

ls ~/ | grep synch || (echo "fatal: no repo" && exit 1)

ls ~/ | grep storage || (echo "fatal: no storage" && exit 1)

cp ~/storage/shared/savs/*.sav ~/synch

cd ~/synch; git pull;  git add . && git commit -m "$(date)"; git push
