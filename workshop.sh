#!/bin/bash
cat workshop.csv | awk -F ',' '{print $1","$2","int(($4-$3)/(365*24*60*60))}' | sort -t "," -k 3 -nr | head -1