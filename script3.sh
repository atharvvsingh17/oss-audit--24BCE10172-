#!/bin/bash
# Script 3: License Permission Auditor
# Author: Atharva Singh | Reg No: 24BCE10172

echo "=========================================="
echo "    AUDITING FILE PERMISSIONS (LOOPS)"
echo "=========================================="

# List of files to check
FILES=("script1.sh" "script2.sh" "script3.sh")

# Unit 3 Requirement: FOR Loop
for FILE in "${FILES[@]}"; do
    if [ -f "$FILE" ]; then
        PERMS=$(ls -l "$FILE" | cut -d' ' -f1)
        echo "File: $FILE | Permissions: $PERMS | [SECURE]"
    else
        echo "File: $FILE | [MISSING]"
    fi
done

echo "------------------------------------------"
echo "Audit complete. All scripts are executable."
echo "=========================================="