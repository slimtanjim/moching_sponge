#!/bin/bash
echo $(date)
echo "string to moch: "
read var1
var1_len=${#var1}
final_str=""

for ((i = 0; i < var1_len; i++)); do
    if((i % 2 != 0)); then   
        final_str+=$(echo "${var1:i:1}" | tr '[:lower:]' '[:upper:]')
    else
        final_str+="${var1:i:1}"
    fi
done
echo "$final_str"