<div align="center">

# 📝 NotesApp

**A clean SwiftUI notes app backed by Core Data & CloudKit.**

[![Platform](https://img.shields.io/badge/Platform-iOS-000000?style=flat-square&logo=apple&logoColor=white)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-5.0-FA7343?style=flat-square&logo=swift&logoColor=white)](https://swift.org)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-0D96F6?style=flat-square&logo=swift&logoColor=white)](https://developer.apple.com/xcode/swiftui/)
[![Xcode](https://img.shields.io/badge/Xcode-16-147EFB?style=flat-square&logo=xcode&logoColor=white)](https://developer.apple.com/xcode/)
[![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/NotesApp?style=flat-square&color=6E48AA)](https://github.com/ahmetbostanciklioglu/NotesApp/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/NotesApp?style=flat-square&color=4776E6)](https://github.com/ahmetbostanciklioglu/NotesApp/commits)

</div>

## 📖 Overview

NotesApp is a lightweight note-taking application for iOS built entirely with SwiftUI. It persists your notes with Core Data through an `NSPersistentCloudKitContainer`, so the data model is ready for iCloud syncing across devices. The project follows an MVVM structure and ships with a small library of reusable UI components and the Poppins font family for a polished look.

## ✨ Features

- **Create, edit, and delete notes** — add a note through a modal sheet, tap any note to edit it in a full-screen editor, and swipe to delete.
- **Core Data + CloudKit persistence** — notes are stored via `NSPersistentCloudKitContainer`, keeping the model ready for iCloud sync.
- **Live-updating list** — the note list is driven by a Core Data `@FetchRequest` sorted by creation date, so changes appear instantly with animation.
- **Friendly empty state** — a `ContentUnavailableView` guides you to create your first note when the list is empty.
- **MVVM architecture** — `NoteViewModel` owns the save/add logic, keeping views declarative and free of business logic.
- **Custom design system** — bundled Poppins fonts, custom color assets, and reusable components (`NoteCard`, `NoteCell`, `SearchBar`, `SaveButton`).

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/NotesApp.git
cd NotesApp
open notes.xcodeproj
```

Once the project is open in Xcode, select an iOS Simulator (or a connected device) and press **⌘R** to build and run.

## 📋 Requirements

- iOS 18.0 or later
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
