#!/bin/bash

#build docker image
docker build -t ghcr.io/huseinaby/karsajobs:latest .

#login ke ghcr.io
echo "$GHCR_TOKEN" | docker login ghcr.io -u Huseinaby --password-stdin


#push image ke ghcr.io
docker push ghcr.io/huseinaby/karsajobs:latest