#!/usr/bin/env bash

mv ./mahjong-front ./mahjong-back/client/
cd ./mahjong-back/client/
yarn build

# Prepare for deploy
cd ../../
mv ./mahjong-back/* .
rm -rf mahjong-back
rm .gitmodules