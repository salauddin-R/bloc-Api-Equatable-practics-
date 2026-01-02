# 🚀 Flutter BLoC REST API App

A Flutter application demonstrating **BLoC state management**, **REST API integration**, and **Equatable** for efficient state comparison.  
This project fetches user data from a public API and displays it in a clean, responsive UI.

---

## ✨ Features

- 🔁 State management using **flutter_bloc**
- 🌐 REST API integration using **http**
- ⚡ Efficient state comparison with **Equatable**
- ⏳ Loading state handling
- ❌ Error state handling
- 📃 ListView UI to display user data
- 🧱 Clean and scalable architecture

---

## 🧠 Architecture Overview

The app follows the **BLoC (Business Logic Component)** pattern:

UI (HomePage)
↓ Event
Bloc (BlocPage)
↓ State
UI Rebuild

yaml
Copy code

---

## 📦 Packages Used

| Package | Purpose |
|------|--------|
| flutter_bloc | State management |
| equatable | State & event comparison |
| http | REST API calls |

---

## 🌐 API Used

Public REST API from **JSONPlaceholder**:

https://jsonplaceholder.typicode.com/users

yaml
Copy code

---

## 🧩 BLoC Structure

### 🔹 Events
- `getUserData` → Trigger API request

### 🔹 States
- `InitialState` → Initial app state
- `loadingState` → While fetching data
- `UpdateDataLoaded` → Data successfully loaded
- `ErrorState` → API or parsing error

---

## 🔄 Data Flow

1. App starts
2. `BlocProvider` dispatches `getUserData`
3. BLoC emits `loadingState`
4. API request is executed
5. On success → `UpdateDataLoaded`
6. On failure → `ErrorState`
7. UI updates automatically

---

## 🖥️ UI Preview

- Displays a loading indicator while fetching data
- Shows a list of users (name & email)
- Displays error message if data loading fails

---

## 📁 Folder Structure

lib/
│
├── Core/
│ └── restClient.dart
│
├── Data/
│ └── UserModels.dart
│
├── Presentation/
│ ├── Bloc/
│ │ ├── BlocPage.dart
│ │ ├── BlocEvent.dart
│ │ └── BlocState.dart
│ │
│ └── Screen/
│ └── HomePage.dart
│
└── main.dart

yaml
Copy code

---

## ▶️ How to Run

1. Clone the repository
2. Run `flutter pub get`
3. Ensure internet permission is added (Android)
4. Run the app

---

## 📝 Notes

- Uses **StatelessWidget** with event dispatch in `BlocProvider`
- Follows best practices for BLoC and API handling
- Suitable for beginners learning **Flutter BLoC + API**

---

## 👨‍💻 Author

**Flutter Developer (Beginner Friendly Project)**  
Built to practice and understand real-world BLoC architecture.

---

⭐ If you like this project, give it a star and feel free to improve it!