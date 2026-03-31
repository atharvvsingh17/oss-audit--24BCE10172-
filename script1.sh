#!/bin/bash
# Script 1: System Identity Report
# Author: Atharva Singh
# Course: Open Source Software
# Concepts used: Variables, echo, command substitution $()

# --- Variables ---
STUDENT_NAME="Atharva Singh"
SOFTWARE_CHOICE="Python"

# --- System Info ---
# Using command substitution to run a command and save its output to a variable
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

# Reading the OS release file, searching for the pretty name, and cutting out the quotes
DISTRO=$(cat /etc/os-release | grep '^PRETTY_NAME' | cut -d= -f2 | tr -d '"')

# Formatting the current date and time
CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

# --- Display ---
echo "======================================"
echo "         Open Source Audit            "
echo "======================================"
echo "Student   : $STUDENT_NAME"
echo "Software  : $SOFTWARE_CHOICE"
echo "--------------------------------------"
echo "OS Distro : $DISTRO"
echo "Kernel    : $KERNEL"
echo "User      : $USER_NAME"
echo "Date/Time : $CURRENT_DATE"
echo "Uptime    : $UPTIME"
echo "--------------------------------------"
# A message stating which open-source license covers the OS
echo "License   : This operating system is primarily governed by the GNU General Public License (GPL)."
echo "======================================"
