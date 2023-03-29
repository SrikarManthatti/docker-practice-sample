#!/bin/bash

echo "using this so that the arguments are accepted and used"

first_arg="$1"
second_arg="$2"

python ./kub_sample.py ${first_arg} ${second_arg}

while true
do
    sleep 5
done