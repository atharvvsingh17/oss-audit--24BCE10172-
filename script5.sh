#!/bin/bash
# Script 5: Final User-Interactive Audit
# Author: Atharva Singh | Reg No: 24BCE10172

# Unit 5 Requirement: Function
audit_summary() {
    echo "Summary: All 5 OSS Audit scripts executed successfully."
    echo "Environment: GitHub Codespaces (Linux Ubuntu)."
    echo "Auditor: Atharva Singh"
}

echo "=========================================="
echo "    FINAL AUDIT CONFIRMATION"
echo "=========================================="

# Unit 5 Requirement: Reading User Input
read -p "Did you complete all previous 4 audits? (yes/no): " ANSWER

if [ "$ANSWER" == "yes" ]; then
    echo "------------------------------------------"
    echo "Generating Final Report..."
    sleep 2
    audit_summary
    echo "------------------------------------------"
    echo "STATUS: AUDIT COMPLETE - READY FOR SUBMISSION"
else
    echo "Please complete all scripts before final confirmation."
fi
echo "=========================================="