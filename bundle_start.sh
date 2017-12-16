#!/usr/bin/env bash
if [ -d "$1"]; then
    cd $1
    if [ "$2" -eq "p"]; then
        echo "System will provision..."
    elif [ "$2" -eq "np"]; then
        echo "System will NOT provision..."
    fi
fi