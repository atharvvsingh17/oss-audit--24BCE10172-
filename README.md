# 🛡️ Open Source Audit: Python (NGMC Capstone)
**Student Name:** ATHARVA SINGH  
**Registration Number:** 24BCE10172  
**Course:** Open Source Software  
**Slot:** E11 | **Submission Date:** 31/03/26

---

## 📌 Project Overview
This project is a comprehensive audit of **Python**, exploring its role as a cornerstone of the Open Source Software (OSS) movement. [cite_start]The audit covers historical origins, the **PSF License** agreement, and practical system administration via Bash scripting [cite: 10, 54-55].

## 🏗️ Technical Environment
- [cite_start]**Operating System:** Ubuntu 24.04.3 LTS (Verified via script1.sh).
- [cite_start]**Kernel Version:** 6.8.0-1044-azure.
- [cite_start]**Environment:** GitHub Codespaces[cite: 282].
- [cite_start]**Target Software:** Python 3.12.1[cite: 205].

## 📂 Audit Scripts (Units 1–5 Coverage)
This repository contains five modular scripts designed to audit the Linux footprint of Python:

1.  [cite_start]**System Identity (`script1.sh`):** Uses command substitution and `/etc/os-release` to report on the host environment [cite: 134-135].
2.  [cite_start]**Package Inspector (`script2.sh`):** Features a **Case Statement** to verify the installation status and explain the high-level purpose of Python3 [cite: 121-124].
3.  [cite_start]**Permission Auditor (`script3.sh`):** Implements a **For Loop** to audit the security and executability of all project files [cite: 216-218].
4.  [cite_start]**Disk Health Auditor (`script4.sh`):** Monitors root directory usage with **IF-ELSE Conditionals** to ensure sufficient space for OSS libraries [cite: 261-264].
5.  [cite_start]**Manifesto & Finalization (`script5.sh`):** A **User-Interactive** tool utilizing functions and the `read` command to confirm audit completion [cite: 279-281, 289].

## 🚀 How to Execute the Audit
To run these scripts in a fresh Linux environment, follow these steps:

1. **Clone the repository:**
   `git clone https://github.com/atharvvsingh17/oss-audit--24BCE10172-`
2. **Grant Permissions:**
   `chmod +x *.sh`
3. **Execute in Sequence:**
   `./script1.sh` through `./script5.sh`

## ⚖️ License and Ethics
[cite_start]This project acknowledges the **PSF License** and its **GPL-compatibility**, which allows for global collaborative innovation without proprietary restrictions [cite: 58-59, 71].
