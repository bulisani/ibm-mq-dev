#!/bin/bash
docker kill QM1
docker rm QM1
docker run --env LICENSE=accept --env MQ_QMGR_NAME=QM1 --publish 1414:1414 --publish 9443:9443 --detach --volume /mnt/c/code/mq/dev.mqsc:/etc/mqm/20-config.mqsc  --env MQ_APP_PASSWORD=passw0rd --name QM1 icr.io/ibm-messaging/mq:latest
docker logs QM1 -f