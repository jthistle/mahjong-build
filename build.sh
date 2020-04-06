#!/usr/bin/env bash

mv ./mahjong-front ./mahjong-back/client/
cd ./mahjong-back/client/
yarn build
rm .git/ -rf

# Prepare for deploy
cd ../
rm .git/ -rf
cd ../
rm .git/ -rf
rm .gitmodules
mv ./mahjong-back/* .
rm -rf mahjong-back

git init
git commit -am "initial commit"
