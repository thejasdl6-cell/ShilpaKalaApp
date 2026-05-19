# ShilpaKalaApp

## Problem Statement
Wood carvers and "Gombe" makers in places like Channapatna and Kinnala have great skills but struggle with "Product Photography." Their photos on WhatsApp look dull, which makes their high-quality work look "cheap" to city buyers. 

## Features
- Provides easy-to-use photography templates and settings for traditional wooden toys and crafts.
- Guides artisans to capture high-quality, professional-looking images.
- Enhances color, lighting, and background specifically for wood carver projects.
- Easy export and share via WhatsApp and other platforms.

## Tech Stack
- **Platform:** Android
- **Language:** Java
- **Build System:** Gradle
- **UI:** XML Layouts

## Installation Steps
1. Clone the repository: `git clone https://github.com/thejasdl6-cell/ShilpaKalaApp.git`
2. Open the project in Android Studio.
3. Sync the project with Gradle files.
4. Ensure you have the latest Android SDK and appropriate Build Tools installed.

## Run Command
- You can run the app directly via Android Studio using the **Run** ('Shift + F10') button.
- Wait for the Gradle build to complete, then open the emulator or connected device to view the app.
- Alternatively, via command line:
  ```bash
  ./gradlew assembleDebug
  ```

## Folder Structure
```text
ShilpaKalaApp/
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/example/shilpakala/  # Application Logic (Java)
│   │   │   ├── res/                          # Resources (layouts, strings, themes)
│   │   │   └── AndroidManifest.xml           # App configuration
│   └── build.gradle                          # Module-level build script
├── build.gradle                              # Top-level build script
└── settings.gradle                           # Project settings
```

## Future Improvements
- Implement AI-based automatic background removal and lighting enhancements.
- Add real-time augmented reality (AR) photo guidelines.
- Support multiple regional languages (Kannada, Hindi, etc.) for local artisans.
- Cloud sync and secure portfolio creation for sharing directly with city buyers.
