#!/bin/bash

docker run -d \
	--name tp4-app \
	--network net-tp4 \
	-p 5000:5000 \
	--mount type=bind,source=$(pwd)/,target=/srv/ \
	im-tp4

