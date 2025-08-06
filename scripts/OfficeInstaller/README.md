# 🚀 Office 365 Installer for Students – Fylkeskommune Edition

This tool installs Microsoft 365 Apps for enterprise (Word, Excel, PowerPoint, OneNote, OneDrive) and Microsoft Teams (new client) on Windows devices used by students in Norwegian fylkeskommune schools.

It is intended for IT technicians or apprentices preparing devices for student use.

---

## 🔧 Overview

- **Purpose:** Automate installation of Microsoft 365 Apps and New Teams.
- **Target Devices:** Windows PCs used in school environments.
- **Use Case:** First-time setup or reimaging of student machines.
- **Execution:** Run manually from USB or local folder.
- **Requires:** Administrator privileges.

---

## ✅ What It Installs

| Component                      | Status        |
|--------------------------------|---------------|
| Microsoft Word                 | ✅ Included   |
| Microsoft Excel                | ✅ Included   |
| Microsoft PowerPoint           | ✅ Included   |
| Microsoft OneNote              | ✅ Included   |
| Microsoft OneDrive             | ✅ Included   |
| Microsoft Teams (New)      | ✅ Included   |
| Office Activation              | ✅ Auto-login |
| Access / Publisher             | ❌ Excluded   |

---

## 📁 Folder Structure

OfficeInstaller/
├── Office/
│ ├── setup.exe ← Office Deployment Tool
│ └── config.xml ← Office install config
├── teamsbootstrapper.exe ← Microsoft Teams New installer
├── install_all.bat ← Main script (Office + Teams)
└── README.md ← You're reading it!


---

## 🚀 How to Use

1. Insert the USB drive or navigate to the local folder on the target PC.
2. **Right-click** `install_office.bat` and choose **Run as administrator**.
3. The script will:
   - Install Microsoft 365 silently using the Office Deployment Tool.
   - Install new Microsoft Teams using the `.exe` bootstrapper.
4. Wait for confirmation message: `"Installation completed successfully."`

---

## ⚠️ Important Notes

- **Admin rights are required** for installation.
- Students must log in with their school Microsoft account to activate Office.
- The installer supports **nb-no** and **en-us** language packs.
- Installation is silent and takes several minutes depending on the network.
- Office excludes Access and Publisher to save space.

---

## 📌 Troubleshooting

- If you see `The system cannot find the path specified`, verify that:
  - `setup.exe` and `config.xml` are in the `Office` folder.
  - Paths in the batch script match actual file locations.
- Teams installation errors may occur if a newer version is pre-installed.
- Use the [Microsoft Support and Recovery Assistant (SaRA)](https://aka.ms/SaRA-OfficeUninstall) for stubborn Office/Teams issues.

---

## 👨‍💼 Author

- **Developed by:** @rKmasterworks  
- **Role:** IT operations technician (Apprentice)  
- **Organization:** Rogaland Fylkeskommune  
- **Focus:** Endpoint automation and Microsoft 365 provisioning  

---

## 🔄 Future Enhancements

- Add logging for install success/failure
- Detect and uninstall old Office before install
- Auto-remove Classic Teams if present
- Intune-compatible version for enterprise deployments
