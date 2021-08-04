#! /bin/bash

sed -i 's!fd:// --containerd=/run/containerd/containerd.sock $OPTIONS $DOCKER_STORAGE_OPTIONS $DOCKER_ADD_RUNTIMES! tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock!g' /lib/systemd/system/docker.service ;
systemctl daemon-reload ;
service docker restart
