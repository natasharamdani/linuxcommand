#!/bin/bash
a=`date +%s`
cat workshop.csv | sort -t, -nk4 -r | awk -F "," 'NR == 1 {print $1, $2, $4-$3}'}