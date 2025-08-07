Write-Output "Starting full Office & Teams cleanup..."

# 1. Uninstall MSI-based Office products
Write-Output "Uninstalling MSI Office products..."
Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "Microsoft Office" } | ForEach-Object {
    Write-Output "Uninstalling $($_.Name)..."
    $_.Uninstall() | Out-Null
}

# 2. Uninstall Click-to-Run Office (Microsoft 365 Apps)
Write-Output "Uninstalling Click-to-Run Microsoft 365 Apps..."
$officeC2RPath = "${env:ProgramFiles}\Common Files\Microsoft Shared\ClickToRun\OfficeC2RClient.exe"
if (Test-Path $officeC2RPath) {
    Write-Output "Running Office Click-to-Run uninstall..."
    Start-Process -FilePath $officeC2RPath -ArgumentList "/uninstall ProPlusRetail /quiet /norestart" -Wait
} else {
    Write-Output "OfficeC2RClient.exe not found, skipping Click-to-Run uninstall."
}

# 3. Remove Microsoft Store version of Office
Write-Output "Removing Microsoft Store version of Office (if any)..."
Get-AppxPackage | Where-Object { $_.Name -like "*office*" } | ForEach-Object {
    Write-Output "Removing $($_.Name)..."
    Remove-AppxPackage -Package $_.PackageFullName -ErrorAction SilentlyContinue
}

# 4. Remove Classic Microsoft Teams (MSI)
Write-Output "Removing Classic Microsoft Teams (MSI)..."
Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -match "Microsoft Teams" } | ForEach-Object {
    Write-Output "Uninstalling $($_.Name)..."
    $_.Uninstall() | Out-Null
}

# 5. Remove New Microsoft Teams (Appx)
Write-Output "Removing New Microsoft Teams (Appx)..."
Get-AppxPackage -Name "MSTeams" | ForEach-Object {
    Write-Output "Removing $($_.Name)..."
    Remove-AppxPackage -Package $_.PackageFullName -ErrorAction SilentlyContinue
}

# 6. Remove leftover folders
$paths = @(
    "$env:ProgramFiles\Microsoft Office",
    "$env:ProgramFiles(x86)\Microsoft Office",
    "$env:LOCALAPPDATA\Microsoft\Office",
    "$env:APPDATA\Microsoft\Teams",
    "$env:LOCALAPPDATA\Microsoft\Teams"
)

foreach ($p in $paths) {
    if (Test-Path $p) {
        Write-Output "Removing folder $p"
        Remove-Item -Path $p -Recurse -Force -ErrorAction SilentlyContinue
    }
}

# 7. Remove Office and Teams registry keys (backup your registry first!)
$registryPaths = @(
    "HKLM:\SOFTWARE\Microsoft\Office",
    "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Office",
    "HKCU:\Software\Microsoft\Office",
    "HKCU:\Software\Microsoft\Office\ClickToRun"
)

foreach ($regPath in $registryPaths) {
    if (Test-Path $regPath) {
        Write-Output "Removing registry key $regPath"
        Remove-Item -Path $regPath -Recurse -Force -ErrorAction SilentlyContinue
    }
}

Write-Output "Cleanup completed. Please restart your computer to finalize the removal."

# Prompt for reboot
$answer = Read-Host "Do you want to restart now? (Y/N)"
if ($answer -match '^[Yy]$') {
    Write-Output "Restarting system..."
    Restart-Computer
} else {
    Write-Output "Restart manually later to complete cleanup."
}
