#!/bin/bash

max=0
awk -F ',' 'BEGIN {
    maxName=""
    maxLastName=""
    } {
        z=$4-$3
        if (z > max)
        {
            maxName=$1
            maxLastName=$2
            max=z
        }
    } END {printf "%s, %s, %.0f\n", maxName,maxLastName,max/(60*60*24*365)}' workshop.csv