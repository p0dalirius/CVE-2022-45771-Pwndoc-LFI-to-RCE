#!/bin/bash

git clone https://github.com/pwndoc/pwndoc ./pwndoc
cd ./pwndoc
git checkout 40a78f61cb21dfeab7135557940c4c40421d3226

wget https://github.com/pwndoc/pwndoc/pull/384.patch -O 384.patch
git apply --verbose 384.patch

docker-compose up