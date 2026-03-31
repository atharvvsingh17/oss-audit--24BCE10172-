#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/syslog [keyword]
# Concepts used: while read loop, command-line arguments, if-then, counter variables

# Take the first argument as the log file, default to /var/log/syslog if none provided
LOGFILE=${1:-/var/log/syslog}

# Take the second argument as the keyword, default to "error" if none provided
KEYWORD=${2:-"error"}

# Initialize the counter variable
COUNT=0

# Check if the provided file exists and is a regular file
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Read the file line by line
while IFS= read -r LINE; do
    # Check if the line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Increment the counter
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Print the summary
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "--------------------------------------"
echo "Last 5 matching lines:"
# Use tail and grep to show the last 5 occurrences for context
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
