# 🧹 Office Uninstaller for Windows Devices

This tool removes outdated or incompatible Microsoft Office installations from student or organization PCs. It is designed for IT technicians to clean up devices **before installing a new Office version**, such as Microsoft 365 Apps via a silent installer.

---

## 🔧 Overview

- **Purpose:** Uninstall any existing Microsoft Office versions (Click-to-Run or MSI).
- **Target Devices:** Windows PCs with preinstalled or outdated Office software.
- **Use Case:** Preparation for fresh installation of Microsoft 365 Apps.
- **Execution:** Run manually from USB or local folder.
- **Requires:** Administrator privileges.

---

## ✅ What It Does

| Task                                  | Status         |
|---------------------------------------|----------------|
| Removes Office 365 / 2016 / 2013      | ✅ Supported   |
| Removes Click-to-Run Office           | ✅ Supported   |
| Removes MSI-based Office installs     | ✅ Supported   |
| Cleans up Start Menu shortcuts        | ✅ Included    |
| Silent / no user interaction          | ✅ Yes         |

---

## 📁 Folder Structure

OfficeUninstaller/
├── setup.exe               ← Office Deployment Tool
├── uninstall.xml           ← The uninstall config above
├── UninstallOffice.bat     ← Script to run uninstall



---

## 🚀 How to Use

1. Insert the USB drive and open the `OfficeUninstaller` folder.
2. Right-click `OfficeUninstall.bat` and choose **Run as administrator**.
3. Wait for the process to complete — you'll see success messages or prompts.
4. After uninstallation, proceed with your Office installer (e.g. Microsoft 365 Apps).

---

## ⚠️ Important Notes

- **Run as Administrator** is required to uninstall software.
- Some stubborn Office installations may require the [Microsoft Support and Recovery Assistant (SaRA)](https://aka.ms/SaRA-OfficeUninstall).
- Teams, OneDrive, or other Microsoft apps may remain — remove them manually if needed.
- Script suppresses output and errors for clean automation; review log manually if needed.

---

## 👨‍💼 Author

- **Developed by:** @rKmasterworks  
- **Role:** IT operations technician (Apprentice)  
- **Organization:** Rogaland Fylkeskommune  
- **Focus:** Endpoint cleanup, automation, and Microsoft 365 readiness  

---

## 📌 Future Enhancements

- Add logging to file for tracking uninstall attempts  
- Add optional OneDrive / Teams cleanup  
- Wrap into a GUI-based tool or Intune package  
