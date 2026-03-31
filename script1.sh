#!/bin/bash
# Script 1: System Identity Report
# Author: Atharva Singh | Reg No: 24BCE10172

# --- Variables ---
STUDENT_NAME="Atharva Singh"
SOFTWARE_CHOICE="Python"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep 'PRETTY_NAME' | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

# --- Display ---
echo "=========================================="
echo "    Open Source Audit - $STUDENT_NAME"
echo "=========================================="
echo "Student     : $STUDENT_NAME"
echo "Software    : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "OS Distro   : $DISTRO"
echo "Kernel      : $KERNEL"
echo "User        : $USER_NAME"
echo "Date/Time   : $CURRENT_DATE"
echo "Uptime      : $UPTIME"
echo "------------------------------------------"
echo "License     : This OS is governed by the GNU GPL."
echo "=========================================="