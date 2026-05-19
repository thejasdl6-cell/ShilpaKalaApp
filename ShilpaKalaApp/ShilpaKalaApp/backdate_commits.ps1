# backdate_commits.ps1
# This script will initialize a Git repository and create commits with backdated timestamps.

# Navigate to the correct directory (where this script is placed)
$scriptPath = $PSScriptRoot
if (-not $scriptPath) {
    $scriptPath = Get-Location
}
Set-Location $scriptPath

Write-Host "Initializing Git Repository..."
git init

Write-Host "Setting up Git User..."
git config user.name "thejasdl6-cell"
git config user.email "thejasdl6@gmail.com"

# 1. April 26, 2026 - Initial Project Setup
Write-Host "Committing April 26 files..."
$env:GIT_AUTHOR_DATE="2026-04-26T10:00:00+05:30"
$env:GIT_COMMITTER_DATE="2026-04-26T10:00:00+05:30"
git add build.gradle settings.gradle app/build.gradle
git commit -m "Initial project setup and gradle configuration"

# 2. April 28, 2026 - App Configuration
Write-Host "Committing April 28 files..."
$env:GIT_AUTHOR_DATE="2026-04-28T14:30:00+05:30"
$env:GIT_COMMITTER_DATE="2026-04-28T14:30:00+05:30"
git add app/src/main/AndroidManifest.xml app/src/main/res/values/strings.xml
git commit -m "Add core app manifest and string resources"

# 3. May 03, 2026 - UI Layouts (Pushing Screens)
Write-Host "Committing May 03 files..."
$env:GIT_AUTHOR_DATE="2026-05-03T11:15:00+05:30"
$env:GIT_COMMITTER_DATE="2026-05-03T11:15:00+05:30"
git add app/src/main/res/layout/
git commit -m "Create main activity user interface and layouts"

# 4. May 06, 2026 - Java Logic
Write-Host "Committing May 06 files..."
$env:GIT_AUTHOR_DATE="2026-05-06T16:45:00+05:30"
$env:GIT_COMMITTER_DATE="2026-05-06T16:45:00+05:30"
git add app/src/main/java/com/example/shilpakala/MainActivity.java
git commit -m "Implement main activity logic and photography guidelines"

# 5. May 13, 2026 - README and Remaining Files
Write-Host "Committing May 13 files..."
$env:GIT_AUTHOR_DATE="2026-05-13T09:30:00+05:30"
$env:GIT_COMMITTER_DATE="2026-05-13T09:30:00+05:30"
git add README.md
git add .
git commit -m "Add comprehensive README documentation and finalize project"

# Clean up environment variables
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

Write-Host "========================================================="
Write-Host "All commits have been successfully backdated locally!"
Write-Host ""
Write-Host "To push this to GitHub, please follow these steps:"
Write-Host "1. Create an empty repository on GitHub named 'ShilpaKalaApp'"
Write-Host "2. Run the following commands in this terminal:"
Write-Host "   git branch -M main"
Write-Host "   git remote add origin https://github.com/thejasdl6-cell/ShilpaKalaApp.git"
Write-Host "   git push -u origin main"
Write-Host "========================================================="
