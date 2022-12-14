#!/bin/bash
set -x

/opt/subfinder -oJ -d $TARGET | tee $TARGET.$(date +%F).$RANDOM.json | jq .host -r

