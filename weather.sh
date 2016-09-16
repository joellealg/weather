#!/bin/bash

echo "What day do you want to know?"

read day

echo "What month do you want to know?"

read month

echo "What year do you want to know?"

read year

curl "https://www.wunderground.com/history/airport/GNV/$year/$month/$day/DailyHistory.heml?&format=1" > gnv.txt

maxTemp=`awk -F',' '{print $2}' gnv.txt | sort -n | tail -n1`

echo The Max temp is $maxTemp

