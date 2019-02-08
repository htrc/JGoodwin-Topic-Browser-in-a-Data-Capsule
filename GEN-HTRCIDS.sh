#!/bin/bash

echo "Extracting ids from fiction_metadata.csv"

cat fiction_metadata.csv | awk -F, '{print $1}' | tail -n +2 > htids.txt

echo "-> Saved htid list in 'htids.txt'"

