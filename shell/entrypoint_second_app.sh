#!/bin/bash

echo "using this so that the arguments are accepted and used"

program_name="$1"
first_arg="$2"
second_arg="$3"

python ${program_name} ${first_arg} ${second_arg}

while true
do
    sleep 5
done