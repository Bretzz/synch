#!/bin/bash

ls ~/ | grep synch || (echo "fatal: no repo" && exit 1)

ls ~/ | grep storage || (echo "fatal: no storage" && exit 1)

cd ~/storage/shared/Uffa_butstillthnx/; git pull;  git add . && git commit -m "$(date)"; git push