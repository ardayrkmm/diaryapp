# 📔 Diary App - Smart Journaling

**Diary App** adalah aplikasi catatan harian personal yang dikembangkan dengan Flutter. Bukan sekadar buku harian digital, aplikasi ini dilengkapi dengan fitur cerdas yang dapat memantau kondisi emosional pengguna melalui tulisan mereka, memberikan dukungan moral secara otomatis saat dibutuhkan.

---

## ✨ Fitur Utama

* **📝 Digital Journaling**: Mencatat kegiatan sehari-hari, cerita, ide, atau perasaan dengan antarmuka yang bersih dan nyaman.
* **📊 Emotional Monitoring**: Sistem akan menganalisis catatan pengguna. Jika dalam periode tertentu terdeteksi terlalu banyak emosi sedih, aplikasi akan menyadarinya.
* **🔔 Smart Notification & Recommendation**: Ketika pengguna terdeteksi sedang berduka atau sedih berlebih, aplikasi akan mengirimkan notifikasi penyemangat dan memberikan rekomendasi aktivitas positif (seperti: "Ayo jalan-jalan!", "Dengarkan musik ceria ini", atau motivasi lainnya).
* **☁️ Real-time Sync**: Semua data tersimpan aman di cloud, sehingga tidak akan hilang meskipun berganti perangkat.

---

## 🛠️ Teknologi yang Digunakan

* **Frontend**: [Flutter](https://flutter.dev/) (UI yang responsif dan cantik)
* **Backend & Database**: [Firebase](https://firebase.google.com/)
    * *Firestore*: Untuk penyimpanan catatan harian.
    * *Firebase Auth*: Untuk sistem login pengguna.
* **Logic**: Analisis kata kunci (Keyword Analysis) untuk mendeteksi kondisi emosional pengguna.

---

## 🚀 Cara Menjalankan Aplikasi

1.  **Clone repository**:
    ```bash
    git clone [https://github.com/username-kamu/diary-app.git](https://github.com/username-kamu/diary-app.git)
    ```
2.  **Masuk ke folder proyek**:
    ```bash
    cd diary-app
    ```
3.  **Setup Firebase**:
    * Hubungkan proyek Flutter dengan Firebase (masukkan file `google-services.json` untuk Android atau `GoogleService-Info.plist` untuk iOS).
4.  **Install dependencies**:
    ```bash
    flutter pub get
    ```
5.  **Jalankan aplikasi**:
    ```bash
    flutter run
    ```

---

## 👤 Developer

Proyek ini dikembangkan secara mandiri oleh:

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

## 🎯 Tujuan Pengembangan

* Menyediakan ruang aman bagi pengguna untuk mencurahkan isi hati secara digital.
* Membantu menjaga kesehatan mental pengguna melalui fitur deteksi emosi dini.
* Menerapkan integrasi Flutter dengan Firebase secara maksimal.

---

## 📄 Lisensi

Proyek ini dibuat untuk keperluan **edukasi dan pengembangan pribadi**. Penggunaan dan modifikasi diperbolehkan dengan tetap mencantumkan kredit pengembang.
