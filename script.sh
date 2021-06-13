#!/bin/bash


awk -F"," -v palingTua=0 '{
if (($4-$3) > palingTua){
	namaDepan=$1; 
	namaBelakang=$2;
	palingTua= $4-$3;
}}

END {print namaDepan, namaBelakang, (palingTua/31536000)}' workshop.csv
