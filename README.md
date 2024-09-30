# Pemrograman Mobile dengan Flutter

Flutter adalah framework open-source yang dikembangkan oleh Google untuk membangun aplikasi mobile, web, dan desktop dari satu basis kode (codebase) yang sama. Flutter memudahkan para pengembang untuk membuat antarmuka pengguna (UI) yang cepat, responsif, dan menarik, dengan dukungan penuh terhadap perangkat iOS dan Android.

## Tujuan Praktikum

Tujuan dari praktikum ini adalah untuk memahami dan mengimplementasikan dasar-dasar pengembangan aplikasi mobile menggunakan Flutter. Melalui serangkaian modul yang disediakan, mahasiswa diharapkan dapat:

1. **Menguasai Bahasa Dart**: Memahami konsep dasar bahasa pemrograman Dart yang digunakan dalam pengembangan aplikasi Flutter, termasuk konsep seperti null safety, tipe data, dan fungsi.

2. **Membuat Proyek Flutter**: Mampu memulai proyek Flutter dari awal, mengatur lingkungan pengembangan, dan menjalankan aplikasi di emulator maupun perangkat fisik.

3. **Mengelola UI dengan Widget**: Mempelajari dan menggunakan widget dasar dan lanjutan dalam Flutter untuk membangun tampilan antarmuka yang menarik dan responsif.

4. **Memahami Konsep State Management**: Membedakan antara `StatelessWidget` dan `StatefulWidget`, serta mengimplementasikan state management menggunakan `Provider` untuk memudahkan pengelolaan data dalam aplikasi.

5. **Membangun Navigasi Antar Halaman**: Mengimplementasikan navigasi multi-halaman menggunakan `Navigator` dan routing dalam aplikasi Flutter.

6. **Membangun Aplikasi yang Responsif**: Mengembangkan aplikasi yang dapat beradaptasi dengan berbagai ukuran dan jenis perangkat, sehingga menghasilkan pengalaman pengguna yang optimal.

7. **Mengintegrasikan Firebase**: Mempelajari cara mengintegrasikan layanan cloud seperti Firebase ke dalam aplikasi Flutter untuk menyimpan data dan melakukan otentikasi pengguna.

8. **Mengelola Tema dan Memberikan Umpan Balik**: Mengimplementasikan tema dan memberikan umpan balik interaktif kepada pengguna melalui elemen visual dan widget feedback.

Dengan mengikuti praktikum ini, mahasiswa diharapkan memiliki keterampilan dasar yang diperlukan untuk membangun aplikasi mobile menggunakan Flutter, dari tahap perancangan UI hingga implementasi logika bisnis dan integrasi dengan layanan backend.

## Modul yang Dipakai

### 1. Dart Programming
Dart adalah bahasa pemrograman yang digunakan untuk menulis aplikasi di Flutter. Bahasa ini mendukung null safety, memiliki sintaks yang sederhana dan cepat, serta dikompilasi langsung ke dalam kode native untuk kinerja aplikasi yang lebih baik.

### 2. Start Project Flutter
Modul ini berfokus pada cara memulai proyek Flutter, termasuk pengaturan lingkungan pengembangan, membuat proyek baru, dan menjalankan aplikasi pertama di emulator atau perangkat fisik.

### 3. Widget Dasar 1
Pada modul ini, diperkenalkan konsep widget di Flutter. Widget adalah elemen dasar dalam pembangunan UI Flutter. Beberapa widget dasar yang dipelajari mencakup `Text`, `Container`, dan `Column`.

### 4. Widget Dasar 2
Melanjutkan pembelajaran dari modul sebelumnya, modul ini memperkenalkan widget lanjutan seperti `ListView`, `Stack`, dan `GridView`, yang memungkinkan pengaturan tata letak yang lebih dinamis dan kompleks.

### 5. Stateful Widget
Modul ini menjelaskan perbedaan antara `StatelessWidget` dan `StatefulWidget`. `StatefulWidget` memungkinkan UI untuk berubah berdasarkan interaksi pengguna atau data yang dinamis, membuatnya esensial dalam pengembangan aplikasi interaktif.

### 6. Navigation & Route
Pada modul ini, dipelajari cara melakukan navigasi antar halaman dalam aplikasi Flutter. Menggunakan routing, pengembang dapat berpindah antar halaman dengan mudah menggunakan widget `Navigator` dan membuat sistem navigasi multi-halaman yang kompleks.

### 7. Responsive & Adaptive
Modul ini fokus pada bagaimana membangun aplikasi yang responsif dan adaptif, yang berarti aplikasi dapat beradaptasi dengan berbagai ukuran layar, dari smartphone hingga tablet dan desktop, serta mempertimbangkan platform spesifik.

### 8. Feedback & Theme
Modul ini menjelaskan cara mengelola tema aplikasi dan memberikan umpan balik kepada pengguna. Mengatur tema mencakup perubahan warna, font, dan efek visual lainnya yang konsisten di seluruh aplikasi. Selain itu, memberikan umpan balik seperti animasi dan snackbar juga dipelajari.

### 9. Provider
Modul ini memperkenalkan state management menggunakan `Provider`. Provider adalah solusi state management di Flutter yang membantu mengelola dan berbagi state di seluruh aplikasi tanpa menulis terlalu banyak kode boilerplate.

### 10. Firebase
Firebase adalah platform pengembangan aplikasi yang mendukung berbagai fitur seperti otentikasi pengguna, database real-time, dan penyimpanan. Pada modul ini, dipelajari cara mengintegrasikan Firebase ke dalam aplikasi Flutter untuk melakukan CRUD dan menyimpan data secara aman di cloud.

## Mengapa Flutter?

![Flutter Logo](https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png)

1. **Kinerja Tinggi**: Flutter menggunakan mesin rendering khusus yang memungkinkan aplikasi berjalan dengan kinerja tinggi pada kedua platform iOS dan Android.
2. **Pengembangan Cepat (Hot Reload)**: Flutter memiliki fitur *hot reload* yang memungkinkan pengembang untuk melihat perubahan kode secara langsung tanpa harus memulai ulang aplikasi.
3. **Basis Kode Tunggal**: Dengan Flutter, kamu hanya perlu menulis satu kali kode untuk aplikasi yang dapat berjalan di berbagai platform, menghemat waktu dan usaha pengembangan.
4. **Widget**: Flutter didesain dengan menggunakan sistem widget yang memungkinkan pembuatan UI yang indah dan dapat disesuaikan sepenuhnya.
5. **Dukungan Komunitas dan Ekosistem**: Flutter memiliki komunitas yang besar dan terus berkembang, serta dukungan terhadap berbagai pustaka dan plugin yang memudahkan pengembangan aplikasi.

## Arsitektur Flutter

Flutter terdiri dari dua bagian utama:
- **Flutter SDK**: Kumpulan alat yang digunakan untuk mengembangkan aplikasi, termasuk kumpulan widget siap pakai.
- **Dart**: Bahasa pemrograman yang digunakan untuk menulis aplikasi Flutter. Dart adalah bahasa yang mudah dipelajari, mendukung *null safety*, dan dikompilasi ke kode native untuk meningkatkan kinerja.

## Fitur Utama

- **Hot Reload**: Melihat perubahan dalam aplikasi secara langsung tanpa kehilangan status aplikasi.
- **Widget**: Flutter menyediakan koleksi widget yang kaya dan fleksibel untuk membuat UI modern.
- **Platform Terintegrasi**: Flutter memiliki integrasi yang mendalam dengan sistem operasi Android dan iOS untuk akses ke fitur native seperti kamera, GPS, dan sensor lainnya.
- **Cross-Platform Development**: Menulis kode sekali dan menjalankannya di berbagai platform seperti Android, iOS, Web, dan Desktop.
