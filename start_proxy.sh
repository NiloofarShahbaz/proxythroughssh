#!/bin/sh

ssh $NP_USERNAME@$NP_HOST -D 0.0.0.0:$NP_SOCKS_PORT -qN