#!/bin/sh

ALLOWED_IP_RANGE=10.0.0.0/24

exec docker run --rm -d --name v4hn-distcc-container --network=host v4hn-distcc:0.1 distccd --daemon --allow $ALLOWED_IP_RANGE --log-level critical --log-stderr --no-detach
