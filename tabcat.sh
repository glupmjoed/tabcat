#!/bin/bash

BROWSER="firefox"
DELAY=.5
TABFLAG=-"new-tab"

usage="Usage: $0 [FILE]"

while getopts "" opt; do
    case ${opt} in
        \? ) echo $usage 1>&2
             exit 1 ;;
    esac
done
shift $((OPTIND - 1))

while read -r addr
do
    $BROWSER $TABFLAG "$addr"
    echo $addr
    sleep $DELAY
done
