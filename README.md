# 📔 Diary App - Smart Journaling

**Diary App** is a personal daily journal application developed with Flutter. More than just a digital diary, this app is equipped with smart features that can monitor the user's emotional condition through their writing, providing automatic moral support when needed.

---

## ✨ Key Features

* **📝 Digital Journaling**: Record daily activities, stories, ideas, or feelings with a clean and comfortable interface.
* **📊 Emotional Monitoring**: The system will analyze user entries. If too many sad emotions are detected over a certain period, the app will recognize it.
* **🔔 Smart Notification & Recommendation**: When a user is detected to be grieving or excessively sad, the app will send encouraging notifications and provide recommendations for positive activities (such as: "Let's go for a walk!", "Listen to this cheerful music", or other motivations).
* **☁️ Real-time Sync**: All data is stored securely in the cloud, ensuring it won't be lost even when switching devices.

---

## 🛠️ Technologies Used

* **Frontend**: [Flutter](https://flutter.dev/) (Responsive and beautiful UI)
* **Backend & Database**: [Firebase](https://firebase.google.com/)
    * *Firestore*: For storing daily entries.
    * *Firebase Auth*: For the user login system.
* **Logic**: Keyword Analysis to detect the user's emotional condition.

---

## 🚀 How to Run the Application

1.  **Clone repository**:
    ```bash
    git clone [https://github.com/your-username/diary-app.git](https://github.com/your-username/diary-app.git)
    ```
2.  **Navigate to the project folder**:
    ```bash
    cd diary-app
    ```
3.  **Setup Firebase**:
    * Connect the Flutter project with Firebase (insert the `google-services.json` file for Android or `GoogleService-Info.plist` for iOS).
4.  **Install dependencies**:
    ```bash
    flutter pub get
    ```
5.  **Run the application**:
    ```bash
    flutter run
    ```

---

## 👤 Developer

This project was developed independently by:

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/ardayrkmm">
        <img src="https://github.com/ardayrkmm.png" width="100px;" alt="Developer"/><br />
        <sub><b>Arda</b></sub>
      </a>
    </td>
  </tr>
</table>

---

## 🎯 Development Goals

* Provide a safe space for users to express their hearts digitally.
* Help maintain user mental health through early emotion detection features.
* Implement Flutter and Firebase integration to its full potential.

---

## 📄 License

This project was created for **educational and personal development** purposes. Use and modification are permitted as long as developer credit is maintained.
