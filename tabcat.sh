#!/bin/bash

BROWSER="firefox"
DELAY=.5
TABFLAG=-"new-tab"

while read -r addr
do
    $BROWSER $TABFLAG "$addr"
    echo $addr
    sleep $DELAY
done
