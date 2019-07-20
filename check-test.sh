#!/usr/bin/env bash
set -e

if [ ! -f ./package.json ]; then
    echo "package.json not found!"
    exit 125;
fi

if [ ! -f ./test1.js ]; then
    echo "test1.js not found!"
    exit 125;
fi

npm install

git checkout -- package.json

npx mocha test1.js
