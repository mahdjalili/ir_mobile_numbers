#!/bin/bash

# Output file
output_file="iranian_mobile_numbers.txt"

# Clear the output file if it exists
> $output_file

# Function to generate numbers and append to output file
generate_numbers() {
    local prefix=$1
    local temp_file="temp_${prefix}_numbers.txt"
    crunch 11 11 -t ${prefix}%%%%%%% -o $temp_file
    cat $temp_file >> $output_file
    rm $temp_file
}

# MCI Prefixes
for prefix in 0910 0911 0912 0913 0914 0915 0916 0917 0918 0919 0990 0991
do
    generate_numbers $prefix
done

# MTN Irancell Prefixes
for prefix in 0901 0902 0903 0930 0933 0935 0936 0937 0938 0939
do
    generate_numbers $prefix
done

# Rightel Prefixes
for prefix in 0920 0921 0922
do
    generate_numbers $prefix
done

echo "All phone numbers have been generated and concatenated into $output_file"

