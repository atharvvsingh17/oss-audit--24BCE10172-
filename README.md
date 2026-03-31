# oss-audit--24BCE10172-
A structured audit of the Python programming language, exploring its open-source philosophy, licensing, and Linux ecosystem. Created as a capstone project for the Open Source Software course.
# Open Source Audit: Python

**Course:** Open Source Software
**Student Name:** Atharva Singh
**Registration Number:** 24BCE10172
**Chosen Software:** Python

## Project Overview
This repository contains five shell scripts developed as part of a structured open-source audit of Python. These scripts demonstrate practical Linux skills, including system administration, package inspection, file system auditing, log analysis, and automated text generation.

## Shell Scripts Description
* **script1.sh (System Identity Report):** Fetches and displays the current Linux distribution, kernel version, logged-in user, system uptime, and the open-source license governing the OS.
* **script2.sh (FOSS Package Inspector):** Checks if `python3` is installed on the system using `dpkg` and prints a short philosophical description of the software using a case statement.
* **script3.sh (Disk and Permission Auditor):** Iterates through critical system directories (including Python's library path) to report their specific file sizes and ownership permissions.
* **script4.sh (Log File Analyzer):** Reads a specified log file line-by-line to count the occurrences of a specific keyword (defaulting to "error") and outputs the last 5 matching lines.
* **script5.sh (Open Source Manifesto Generator):** An interactive script that prompts the user for three inputs regarding their tech philosophy and concatenates them into a personalized, timestamped `.txt` manifesto file.

## System Requirements & Dependencies
To run these scripts successfully, your system must meet the following requirements:
* **Operating System:** A Debian/Ubuntu-based Linux distribution (or WSL running Ubuntu).
* **Software Dependencies:** `python3` must be installed for Script 2 to detect it.
* **Core Utilities:** Standard GNU coreutils (`awk`, `grep`, `du`, `uname`, `dpkg`).

## Instructions to Run on Linux
1. Open your Linux terminal.
2. Clone this repository to your local machine:
   `git clone https://github.com/[atharvvsingh17]/oss-audit-24BCE10172.git`
3. Navigate into the directory:
   `cd oss-audit-24BCE10172`
4. Grant execution permissions to all script files:
   `chmod +x *.sh`
5. Execute the scripts individually using the following commands:
   * `./script1.sh`
   * `./script2.sh`
   * `./script3.sh`
   * `./script4.sh /var/log/syslog` 
   * `./script5.sh`
