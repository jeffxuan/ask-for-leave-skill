# Ask for Leave Skill - Installation Script
# For Windows PowerShell

Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "  Ask for Leave Skill - Installer" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host ""

# Determine the installation directory
$SkillDir = "$env:APPDATA\qianfan-desktop-app\qianfan_desk_xdg\global\data\skills"

Write-Host "Installation directory: $SkillDir"
Write-Host ""

# Check if the skill already exists
if (Test-Path "$SkillDir\ask-for-leave") {
    Write-Host "Warning: ask-for-leave skill already exists." -ForegroundColor Yellow
    $Response = Read-Host "Do you want to overwrite it? (y/N)"
    if ($Response -ne "y" -and $Response -ne "Y") {
        Write-Host "Installation cancelled."
        exit
    }
    Write-Host "Removing existing installation..."
    Remove-Item -Recurse -Force "$SkillDir\ask-for-leave"
}

# Create the skills directory if it doesn't exist
Write-Host "Creating skills directory..."
New-Item -ItemType Directory -Force -Path $SkillDir | Out-Null

# Get the script directory (where the skill files are)
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Copy the skill files
Write-Host "Copying skill files..."
Copy-Item -Recurse -Force -Path $ScriptDir -Destination "$SkillDir\ask-for-leave"

# Remove the install scripts from the installed directory
Remove-Item -Force "$SkillDir\ask-for-leave\install.sh" -ErrorAction SilentlyContinue
Remove-Item -Force "$SkillDir\ask-for-leave\install.ps1" -ErrorAction SilentlyContinue

Write-Host ""
Write-Host "✓ Installation successful!" -ForegroundColor Green
Write-Host ""
Write-Host "The 'ask-for-leave' skill has been installed to:"
Write-Host "$SkillDir\ask-for-leave"
Write-Host ""
Write-Host "To use it, restart your Qianfan DuMate application."
Write-Host ""
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "  Installation Complete!" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan
