#!/bin/bash

# Define the input file
input_file="sequences.fasta"

# Define the output file
output_file="alignment.fasta"

# Use grep to find sequences that match "ParentSequence"
grep -A 1 "ParentSequence" "$input_file" > "$output_file"

# Use sed to replace all T's with U's
sed -i 's/T/U/g' "$output_file"

echo "Modified sequences saved to 'alignment.fasta'"