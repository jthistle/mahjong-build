#/usr/bin/env bash

git submodule update --remote && git add . && git commit -m "update to latest" && git push origin master
