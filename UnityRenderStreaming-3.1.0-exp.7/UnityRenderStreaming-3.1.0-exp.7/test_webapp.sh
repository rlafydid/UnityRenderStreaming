#!/bin/bash -eu

cd WebApp
npm install --legacy-peer-deps
npm run lint
npm run test
npm run dev -- -p 8080 &
sleep 5
npm run newman -- -e ./test/env_macos.postman_environment.json
