#!/bin/bash

CONTAINERS=( "nginx" "nginx-gen" "letsencrypt-nginx-proxy-companion")

for i in $CONTAINERS
do
    echo "Check container \"$i\""
    IS_RUNNING="$(docker inspect -f {{.State.Running}} $i)"

    if [ ! $IS_RUNNING = true ]; then
        echo "RESTART \"$i\" Container!"
        # docker start nginx-gen
    else
        echo "\"$i\" is already running!"
    fi
done
