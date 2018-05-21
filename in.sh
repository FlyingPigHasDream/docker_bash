#!/bin/bash
CNAME=$1
CPID=$(docker inspect --fotmat "{{.State.Pid}}" $CNAME)
nsenter --target "$CPID" --mount --uts --ipc --net --pid
