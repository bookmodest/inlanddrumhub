#!/usr/bin/env bash
set -e
TAG="golden-anchor-cosmic-cedar"
LIB="chilly-hose.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/bookmodest/inlanddrumhub/releases/download/${TAG}/${LIB}"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
