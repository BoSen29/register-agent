#!/bin/sh
VERSION=$(cat package.json | jq -r .version)
npm run build
docker build -t taghub:5000/register-agent:$VERSION .
