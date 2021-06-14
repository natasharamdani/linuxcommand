INPUT=workshop.csv
OLDIFS=$IFS
IFS=','

[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

oldestRegisterAge=0
oldestLastName=""
oldestFirstName=""

while read firstName lastName birthDate registerDate
do      
        if [ $(($registerDate-$birthDate)) -gt $oldestRegisterAge ];
        then 
         oldestRegisterAge=$(($registerDate-$birthDate))
         oldestLastName=$lastName
         oldestFirstName=$firstName
        fi

done < $INPUT
IFS=$OLDIFS

echo "$oldestFirstName, $oldestLastName, $(($oldestRegisterAge/(86400*365)))"

