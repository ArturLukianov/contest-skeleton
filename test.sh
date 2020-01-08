#!/bin/bash

echo "Testing application"

./build.sh
./main < test.in > test.out

echo "--[ANSWER]--"
cat test.ans
echo "------------"
echo ""
echo "--[OUTPUT]--"
cat test.out
echo "------------"
