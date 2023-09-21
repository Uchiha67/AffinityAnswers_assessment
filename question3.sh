#!/bin/bash

URL="https://www.amfiindia.com/spages/NAVAll.txt"

INPUT_FILE="nav_data_temp.txt"

# Output TSV file
TSV_FILE="nav_data.tsv"

# Download the data file using curl
curl -s "$URL" > "$INPUT_FILE"


# Extract Scheme Name and Asset Value fields and save them in the TSV file
awk -F ';' '{print $4 "\t" $5}' "$TEMP_FILE" > "$TSV_FILE"

echo "Data extracted and saved to $TSV_FILE"