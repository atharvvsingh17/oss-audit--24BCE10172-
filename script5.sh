#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Concepts used: read for user input, writing to a file with >, appending with >>, variables

echo "Answer three questions to generate your manifesto."
echo "--------------------------------------------------"

# Read user input into variables
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get today's date
DATE=$(date +'%d %B %Y')

# Define the output file name using the current user's name
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph and overwrite (>) the file with the first line
echo "On this day, $DATE, I declare that tools like $TOOL empower us to create without limits." > "$OUTPUT"

# Append (>>) the remaining lines to the file
echo "To me, open source represents $FREEDOM." >> "$OUTPUT"
echo "In that spirit, I pledge to one day build and share $BUILD with the world." >> "$OUTPUT"

echo "--------------------------------------------------"
echo "Manifesto successfully saved to $OUTPUT"
echo "Here is your manifesto:"
echo "--------------------------------------------------"

# Display the contents of the newly created file
cat "$OUTPUT"
