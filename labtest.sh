#!/bin/bash

is_prime() {
    n=$1

    if [ $n -le 1 ]; then
        return 1
    fi

    for ((i=2; i*i<=n; i++))
    do
        if [ $((n % i)) -eq 0 ]; then
            return 1
        fi
    done

    return 0
}

while read num
do
   
    if [ -z "$num" ]; then
        continue
    fi

    is_prime $num

    if [ $? -eq 0 ]; then
        echo "$num: Prime"
    else
        echo "$num: Non-prime"
    fi

done < test.txt
