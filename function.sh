#!/bin/bash
#return
adder ( ){

return  $(($1+$2)) #$?

}
#function call
adder 2 3
result=$?
echo "$result"
