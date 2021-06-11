max=0
mFirst=mFirst
mLast=mLast

while IFS=, read -r first last birth join;
do
   if [ $(($join-$birth)) -gt $max ];
   then 
      max=$(($join-$birth))
      mFirst=$first
      mLast=$last
   fi    
done < workshop.csv

max=`date -r $max`
echo "$mFirst, $mLast, $max"
