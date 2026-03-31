#!/bin/bash
# Script 4: Disk Space Health Audit
# Author: Atharva Singh | Reg No: 24BCE10172

echo "=========================================="
echo "    DISK SPACE AUDIT (CONDITIONALS)"
echo "=========================================="

# Get the current disk usage percentage of the root directory
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "Current Disk Usage: $USAGE%"

# Unit 4 Requirement: IF-ELSE Conditionals
if [ "$USAGE" -gt 90 ]; then
    echo "Status: [CRITICAL] - Storage nearly full!"
elif [ "$USAGE" -gt 70 ]; then
    echo "Status: [WARNING] - Storage usage is high."
else
    echo "Status: [HEALTHY] - Sufficient space for Python."
fi

echo "=========================================="