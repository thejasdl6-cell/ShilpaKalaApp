#!/bin/bash
# backdate_commits.sh
# Run this script using Git Bash inside the ShilpaKalaApp directory

# Initialize Git Repository
git init

# Configure Git User
git config user.name "thejasdl6-cell"
git config user.email "thejasdl6@gmail.com"

# 1. April 26, 2026 - Initial Project Setup
export GIT_AUTHOR_DATE="2026-04-26T10:00:00+05:30"
export GIT_COMMITTER_DATE="2026-04-26T10:00:00+05:30"
git add build.gradle settings.gradle app/build.gradle
git commit -m "Initial project setup and gradle configuration"

# 2. April 28, 2026 - App Configuration
export GIT_AUTHOR_DATE="2026-04-28T14:30:00+05:30"
export GIT_COMMITTER_DATE="2026-04-28T14:30:00+05:30"
git add app/src/main/AndroidManifest.xml app/src/main/res/values/strings.xml
git commit -m "Add core app manifest and string resources"

# 3. May 03, 2026 - UI Layouts (Pushing Screens)
export GIT_AUTHOR_DATE="2026-05-03T11:15:00+05:30"
export GIT_COMMITTER_DATE="2026-05-03T11:15:00+05:30"
git add app/src/main/res/layout/
git commit -m "Create main activity user interface and layouts"

# 4. May 06, 2026 - Java Logic
export GIT_AUTHOR_DATE="2026-05-06T16:45:00+05:30"
export GIT_COMMITTER_DATE="2026-05-06T16:45:00+05:30"
git add app/src/main/java/com/example/shilpakala/MainActivity.java
git commit -m "Implement main activity logic and photography guidelines"

# 5. May 13, 2026 - README and Remaining Files
export GIT_AUTHOR_DATE="2026-05-13T09:30:00+05:30"
export GIT_COMMITTER_DATE="2026-05-13T09:30:00+05:30"
git add README.md
git add .
git commit -m "Add comprehensive README documentation and finalize project"

# Unset the variables so future commits use the real current date
unset GIT_AUTHOR_DATE
unset GIT_COMMITTER_DATE

echo "========================================================="
echo "All commits have been successfully backdated locally!"
echo ""
echo "To push this to GitHub, please follow these steps:"
echo "1. Create an empty repository on GitHub named 'ShilpaKalaApp'"
echo "2. Run the following commands:"
echo "   git branch -M main"
echo "   git remote add origin https://github.com/thejasdl6-cell/ShilpaKalaApp.git"
echo "   git push -u origin main"
echo "========================================================="
