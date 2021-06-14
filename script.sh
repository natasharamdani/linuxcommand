max=0

while IFS=, read -r first_name last_name birth_date register_date
do
    register_age=$((register_date - birth_date))
    if (($max < $register_age));
    then
        max=$register_age
        max_first_name=$first_name
        max_last_name=$last_name
    fi
done < workshop.csv

max_register_age=$(($(date -r $max +'%Y')-1970))
echo "$max_first_name,$max_last_name,$max_register_age"