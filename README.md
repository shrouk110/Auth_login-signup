
A new Flutter project.
```markdown
# 🚀 Flutter Authentication App (Login & Sign Up with BLoC & Firebase)

![Flutter](https://img.shields.io/badge/Flutter-Framework-blue)
![BLoC](https://img.shields.io/badge/State-Management-yellow)
![Firebase](https://img.shields.io/badge/Firebase-Auth-orange)
![License](https://img.shields.io/badge/License-MIT-green)

## 📌 Overview  
This project is a **professional Flutter authentication app** built using **BLoC for state management** and **Firebase Authentication** for secure sign-up and login functionality.  

## 🖼️ Screenshots  

| Login Screen | Sign Up Screen | Success Navigation |
|--------------|---------------|--------------------|
| <img width="629" height="895" alt="sn1" src="https://github.com/user-attachments/assets/bd2dc403-422c-4603-9e18-864626abe7ac" />
 | ![SignUp](https://via.placeholder.com/200x400?text=SignUp) | ![Success](https://via.placeholder.com/200x400?text=Success) |

---

The application includes:  
✅ **Sign Up Screen** with form validation (Email, Password, Confirm Password)  
✅ **Login Screen** with error handling and Firebase authentication  
✅ **Navigation between Login and Sign Up screens**  
✅ **Custom UI with gradient background & toast/snackbar feedback**  

---

## 🛠️ Technologies Used
- **Flutter** (Dart)
- **BLoC State Management**
- **Firebase Authentication**
- **Fluttertoast**
- **Material Design UI**

---

## 📂 Project Structure
```

lib/
│
├── features/
│   ├── auth/
│   │   ├── bloc/
│   │   │   ├── login\_bloc.dart
│   │   │   ├── login\_event.dart
│   │   │   ├── login\_state.dart
│   │   ├── models/
│   │   │   ├── auth\_repo.dart
│   │   ├── login\_screen.dart
│   │
│   ├── signup/
│   │   ├── bloc/
│   │   │   ├── signup\_bloc.dart
│   │   │   ├── signup\_event.dart
│   │   │   ├── signup\_state.dart
│   │   ├── sing\_up\_screen\_whith\_bloc.dart
│
├── nav\_feature/
│   ├── nav\_examples.dart
│
├── utils/
│   ├── app\_strings.dart
│   ├── app\_colors.dart
│   ├── form\_validator.dart
│
└── main.dart

````

---

## ⚙️ Setup & Installation  

### 1️⃣ Clone the repository  
```bash
git clone https://github.com/yourusername/flutter_auth_bloc.git
cd flutter_auth_bloc
````

### 2️⃣ Install dependencies

```bash
flutter pub get
```

### 3️⃣ Configure Firebase

* Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/)
* Enable **Email/Password Authentication**
* Download `google-services.json` and add it to:

```
android/app/
```

* Update `build.gradle` to include Firebase SDKs.

### 4️⃣ Run the app

```bash
flutter run
```

---

## 🚀 Features

* **📧 Email & Password Authentication** (Firebase)
* **🔐 Secure Login & Sign Up** with form validation
* **🖌 Modern UI** (Gradient background, Material widgets)
* **🔥 BLoC State Management** (Clean separation of UI & logic)
* **📱 Responsive Design**

---

## 🧑‍💻 Contributors

👩‍💻 **Shrouk Nasser Ahmed** — *Lead Developer*

---

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

💡 *If you like this project, don't forget to give it a ⭐ on GitHub!*

```

---

📌 لو تحبي، أقدر أضيف **GIF Animation لتجربة التشغيل** (Login ➡️ Sign Up ➡️ Success) عشان يخلي README أكثر احترافية ويجذب أي حد.  

🔥 سؤال: تحبي أعملك نسخة README دي فيها **صور حقيقية من شاشات المشروع بدل الـ Placeholder** عشان يكون شكله بروفيشنال أوي على GitHub؟
```
