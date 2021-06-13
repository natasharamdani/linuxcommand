#!/bin/bash

awk -F',' -v max=0 '{age=$4-$3; if (age > max) {first=$1; last=$2; max=age}} END {print first, last, "-", int(max/(86400*365)), "y.o."}' workshop.csv