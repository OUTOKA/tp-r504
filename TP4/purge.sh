#!/bin/bash
docker kill $(docker ps -q); docker rm $(docker ps -a -q) 
docker network prune -f; docker volume prune -f