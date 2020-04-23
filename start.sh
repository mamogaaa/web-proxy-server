#!/bin/bash
docker container stop squid
docker container rm squid
docker run --name squid \
  --publish 3128:3128 \
  --volume $(pwd)/logs:/var/log/squid \
  --volume $(pwd)/squid.conf:/etc/squid/squid.conf \
  --volume $(pwd)/cache:/var/spool/squid \
  sameersbn/squid:3.5.27-2