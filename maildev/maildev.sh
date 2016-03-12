#!/bin/bash

docker run \
	-d \
	--restart=always \
	-e "VIRTUAL_HOST=maildev" \
	-e "VIRTUAL_PORT=80" \
	-l "traefik.port=80" \
	--name maildev \
	djfarrelly/maildev