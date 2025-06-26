#!/bin/bash

ls ~/ | grep synch || (echo "fatal: no repo" && exit 1)

cd ~/synch; git pull && git add . && git commit -m "$(date)";
