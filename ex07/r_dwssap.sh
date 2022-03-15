#!/bin/bash
cat /etc/passwd |
awk -F":" '{print $1}' |
awk '/^#/d{print}' |
awk '{
        if(NR%2==0){
            str=""
            for(j=(length($0));j!=0;j--){
                str =str substr($0,j,1)
            }
            print str
        }else{
            print $0
        }
    }'|
sort -r |
awk -v a=$FT_LINE1 -v b=$FT_LINE2 '(NR>=a && NR<=b){print}' |
sed -z -e 's/\n/, /g' -e 's/, $/./'
