# Daily List Kebutuhan Sehari-hari App

Aplikasi manajemen kebutuhan sehari-hari berbasis web yang memungkinkan pengguna mengelola daftar kebutuhan secara terstruktur, kolaboratif, dan efisien. Aplikasi ini dibangun menggunakan PHP, MySQL, dan Bootstrap, serta dapat langsung dijalankan di XAMPP.

---

## 📌 Deskripsi Proyek
Daily List Kebutuhan Sehari-hari App adalah aplikasi web untuk mencatat, mengelola, dan memantau kebutuhan harian maupun mingguan. Aplikasi ini mendukung sistem login, manajemen daftar, checklist kebutuhan, prioritas item, serta progres penyelesaian secara real-time.

---

## ✨ Fitur Utama
- Autentikasi pengguna (Login & Register)
- Role pengguna (Admin & User)
- Admin dapat membuat daftar kebutuhan
- User dapat bergabung (join) ke daftar
- CRUD daftar & item kebutuhan
- Item dengan tipe:
  - Teks
  - Link
  - Checklist
- Prioritas item
- Sequential unlock (item terbuka berurutan)
- Tandai item selesai
- Statistik real-time (total, selesai, progres)
- UI modern & responsive menggunakan Bootstrap

---

## 🛠️ Teknologi yang Digunakan
- **Backend**: PHP (Native)
- **Database**: MySQL
- **Frontend**: HTML, CSS, Bootstrap
- **AJAX**: JavaScript
- **Server Lokal**: XAMPP
- **Icons**: Font Awesome

---

## 📂 Struktur File
needs_management/
├── needs_management.sql

├── config.php

├── login.php

├── index.php

├── view_list.php

├── browse_lists.php

├── create_list.php

├── api.php

├── logout.php

└── README.md

---

## 🚀 Cara Instalasi & Menjalankan Aplikasi

### 1️⃣ Persiapan
- Install **XAMPP**
- Jalankan **Apache** dan **MySQL**

### 2️⃣ Setup Project
1. Copy seluruh file project ke:
C:\xampp\htdocs\needs_management\

2. Buka **phpMyAdmin**
3. Buat database atau langsung import:
- Pilih menu **SQL**
- Paste isi file `needs_management.sql`
- Klik **Go**

### 3️⃣ Akses Aplikasi
Buka browser dan akses:
http://localhost/needs_management/login.php


