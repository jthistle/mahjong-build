#!/usr/bin/env bash

mv ./mahjong-front ./mahjong-back/client

cd ./mahjong-back
yarn

cd ./client
yarn

