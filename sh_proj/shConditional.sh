#! /bin/bash
# test for Common Conditional statements

cat "$1"

if [ "$?" -ne "0"  ]; then
    echo "Error: Reading $1 failed."
if
