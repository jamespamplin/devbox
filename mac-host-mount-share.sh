#!/bin/bash

sudo mkdir -p /Volumes/devbox-mount/
sudo mount -t nfs -o sync 192.168.19.84:/home/vagrant /Volumes/devbox-mount/
