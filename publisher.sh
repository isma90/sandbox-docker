#!/usr/bin/env bash

if [[ ! -n $4 ]]; then
    echo "Param not found."
    exit -1
fi

USER=$1
PASS=$2
PROJECT=$3
VERSION=$4

docker login -u $USER -p $PASS

docker build -t $USER/$PROJECT:$VERSION .
docker build -t $USER/$PROJECT:latest .

docker push $USER/$PROJECT:$VERSION
docker push $USER/$PROJECT:latest
