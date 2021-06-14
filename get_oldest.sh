#!/bin/bash

max_first_name=''
max_last_name=''
max_age=0

while IFS=, read -r first_name last_name birth_date reg_date
do
	let "cur_age=$(($reg_date - $birth_date))"

	if [ $cur_age -gt $max_age ]
	then
		max_first_name=$first_name
		max_last_name=$last_name
		max_age=$cur_age
	fi

done < workshop.csv

year=31536000
let "age_year=$(($max_age / $year))"
echo "$max_age, $year"

echo "$max_first_name, $max_last_name, $age_year"
