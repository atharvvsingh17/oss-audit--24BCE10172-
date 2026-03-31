#!/bin/bash
# Script 2: FOSS Package Inspector
# Concepts used: if-then-else, case statement, dpkg, pipe with grep

PACKAGE="python3"

# Check if the package is installed using dpkg (Debian/Ubuntu specific)
# The output is piped to grep, and -q makes it quiet (only returns true/false)
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "$PACKAGE is installed."
    # Extract version and description details
    dpkg -s $PACKAGE | grep -E 'Version|Status|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo "--------------------------------------"

# A case statement that prints a one-line philosophy note about the package
case $PACKAGE in
    python3) 
        echo "Philosophy: Python is a language shaped entirely by community." 
        ;;
    apache2) 
        echo "Philosophy: Apache is the web server that built the open internet." 
        ;;
    mysql-server) 
        echo "Philosophy: MySQL is open source at the heart of millions of apps." 
        ;;
    git) 
        echo "Philosophy: Git is the tool Linus built when proprietary failed him." 
        ;;
    *) 
        echo "Philosophy: Unknown FOSS package." 
        ;;
esac
