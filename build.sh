#!/usr/bin/env bash


mv ./mahjong-front ./mahjong-back/client/
cd ./mahjong-back/client/
yarn build

# Prepare for deploy
shopt -s dotglob nullglob
rm .git/ -rf
cd ../
rm .git/ -rf
cd ../
rm .git/ -rf
rm .gitmodules
mv ./mahjong-back/* .
rm -rf mahjong-back
shopt -u dotglob nullglob
