# 🎨 Adobe Creative Cloud Silent Installer for Student PCs

This folder contains everything needed to silently install **Adobe Creative Cloud** on Windows devices, tailored for deployment via USB in school or organizational environments.

---

## 🔧 Overview

- **Goal:** Install Adobe Creative Cloud silently without user interaction.
- **Scope:** For Windows machines without Adobe CC installed.
- **Distribution:** Run the `.bat` installer from this folder on the target PC.
- **Run as Admin:** Required for installation.

---

## ✅ What’s Included

| Component                    | Status         |
|-----------------------------|----------------|
| Adobe Creative Cloud Setup   | ✅ Included    |
| Silent Installation Script   | ✅ Included    |

---

## 📁 Folder Structure


AdobeInstaller/
├── Creative_Cloud_Set-Up.exe ← Adobe CC installer executable
├── AdobeInstall.bat          ← Batch script to run silent install
└── README.md                 ← This document

## 🚀 How to Use
Insert the USB drive and navigate to AdobeInstaller folder.

Right-click AdobeInstall.bat and select Run as administrator.

The script will silently install Adobe Creative Cloud.

Upon completion, you will see a success or error message.

## 🔐 Notes
The installer executable must be in the same folder as the batch script.

Administrator privileges are required.

Logs and error messages (if implemented) will appear in the console window.

Customize the batch file for additional silent options if needed.

## 👨‍💼 Author
Developed by: @rKmasterworks
Role: IT operations technician (Apprentice)
Organization: Rogaland Fylkeskommune
Focus: Automation, endpoint configuration, Microsoft 365 & Adobe

## 📌 Future Enhancements
Add logging support to capture install output.

Support uninstall or update commands.

Package installers together with a master launcher script.

Integrate with Intune or other deployment tools.