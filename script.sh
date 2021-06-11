awk -F',' '{print $1, $2, $4 - $3|"sort -nrk3"}' workshop.csv | sed -n '1p' | awk '{print $1","$2","int($3/31556926)}'

# marde.aza@BA-00016843 linuxcommand % bash script.sh
# Eugenia,Moya,46