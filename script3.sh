#!/bin/bash
# Script 3: Disk and Permission Auditor
# Concepts used: for loop, arrays, if-then (directory check), awk, cut

# Define an array of important system directories, including our software's footprint
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/usr/lib/python3")

echo "Directory Audit Report"
echo "======================================"

# Loop through each directory in the array
for DIR in "${DIRS[@]}"; do
    # Check if the directory actually exists on this system
    if [ -d "$DIR" ]; then
        # Use ls -ld to get directory info, then awk to extract permission and owner columns
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Use du -sh to get the human-readable size, suppressing errors, and cutting just the size value
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done
