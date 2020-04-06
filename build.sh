#!/usr/bin/env bash

cd ./mahjong-front
yarn build
cd ../

mv ./mahjong-front/build ./mahjong-front/client
cp ./mahjong-front/client ./mahjong-back/src/ -r
rm -rf ./mahjong-front

# Prepare for deploy
shopt -s dotglob nullglob
rm .git/ -rf
rm .gitmodules
mv ./mahjong-back/* .
rm -rf mahjong-back
shopt -u dotglob nullglob
