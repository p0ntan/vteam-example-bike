#!/bin/bash

# Output CSV file name
output_csv="bike_data.csv"

# Write the CSV header
echo "id,city,status" > "$output_csv"

# Loop through all JSON files and append data to the CSV
for file in *.json; do
    # Extract the id from the filename (removing the .json extension)
    id="${file%.json}"

    # Extract the city from the JSON file
    city=$(jq -r '.city' "$file")

    # Append id, city, and status to the CSV file
    echo "$id,$city,0" >> "$output_csv"
done
