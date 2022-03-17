#!/bin/bash
cat /etc/passwd |
awk '(!/^#/){print}' |
awk -F":" '{print $1}' |
awk '(NR%2==0){print}' |
rev |
sort -r |
awk -v a=$FT_LINE1 -v b=$FT_LINE2 '(NR>=a && NR<=b){print}' |
tr '\n' ',' |
sed -e 's/,/, /g' -e 's/, $/./' |
tr -d '\n'
