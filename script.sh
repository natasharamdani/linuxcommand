#!/bin/bash

awk -F',' -v maxAge=0 '{age=$4-$3; if (age > maxAge) {firstName=$1; lastName=$2; maxAge=age}} END {print firstName, " ", lastName, " ", int(maxAge/(86400*365)), "years old"}' workshop.csv
