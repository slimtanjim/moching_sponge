#!/bin/bash
echo $(date)
var2="appleapple"
var2_len=${#var2}
final_str=""

# if i%2==0 -> if i  is even do ^^ else keep same 
# 0 index is even 

for ((i = 0; i < var2_len; i++)); do
    if((i % 2 != 0)); then   
        final_str+=$(echo "${var2:i:1}" | tr '[:lower:]' '[:upper:]')
    else
        final_str+="${var2:i:1}"
    fi
done
echo "$final_str"

#-------
#echo $(date)
#echo sentence to moch:
#string count >>
    # str_len=${#str_val}
    # str_len=`expr "$str_val" : '.*'`
