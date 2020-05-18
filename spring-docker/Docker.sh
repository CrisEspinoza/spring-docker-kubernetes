#!/usr/bin/env bash

IMAGE=distribuidos-img
CONTAINER=distribuidos-cnt
PORTSRV=1818
PORTCNT=1818

docker build -t $IMAGE .

if docker container ls | grep $CONTAINER > /dev/null; then
	docker container stop $CONTAINER
fi

if docker container ls -a | grep $CONTAINER > /dev/null; then
  docker container rm $CONTAINER
fi
#-p $PORTSRV:$PORTCNT
docker run --network=host --name $CONTAINER -d $IMAGE