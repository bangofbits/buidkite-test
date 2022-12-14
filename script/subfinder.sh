#!/bin/bash
set -x

/opt/subfinder -d $TARGET | tee $TARGET.$(date +%F).$RANDOM.json | jq .host -r

