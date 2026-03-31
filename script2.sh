#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Atharva Singh | Reg No: 24BCE10172

PACKAGE="python3"

echo "=========================================="
echo "    AUDITING PACKAGE: $PACKAGE"
echo "=========================================="

# Check if the package is installed
if command -v $PACKAGE >/dev/null 2>&1; then
    VERSION=$($PACKAGE --version)
    echo "Status  : [INSTALLED]"
    echo "Version : $VERSION"
    
    # Case Statement (Unit 2 Requirement)
    case $PACKAGE in
        "python3")
            echo "Purpose : High-level programming language for AI & Web."
            ;;
        *)
            echo "Purpose : General Open Source Software."
            ;;
    esac
else
    echo "Status  : [NOT FOUND]"
fi
echo "=========================================="