#!/bin/bash
cat workshop.csv | awk -F "," '{print $1,$2,$4-$3}' | sort -t" " -nk3 -r | awk -F " " 'NR == 1 {print $1","$2","int($3/(365*24*60*60))}'