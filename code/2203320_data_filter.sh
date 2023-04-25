#!usr/bin/bash
name=$1
field=$2
value=$3
#echoing first sentence as per syntax
echo ${name:0:2}_${field}_${value}.csv
#adding first line
echo "$1,$2,$3" >> ${name:0:2}_${field}_${value}.csv
#adding column header
grep -iw "$3" "$1" | wc -l >> ${name:0:2}_${field}_${value}.csv

head -n 1 "$1" >> ${name:0:2}_${field}_${value}.csv
grep -iw "$3" "$1" >> ${name:0:2}_${field}_${value}.csv

