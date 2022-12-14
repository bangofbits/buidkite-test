#!/bin/bash

/opt/subfinder -d $TARGET | tee $TARGET.$(date +%F).$RANDOM.json | jq .host -r

