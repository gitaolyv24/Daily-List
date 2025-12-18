# Daily List Kebutuhan Sehari-hari App

Aplikasi manajemen kebutuhan sehari-hari berbasis web yang memungkinkan pengguna mengelola daftar kebutuhan secara terstruktur, kolaboratif, dan efisien. Aplikasi ini dibangun menggunakan PHP, MySQL, dan Bootstrap, serta dapat langsung dijalankan di XAMPP.

---

## 📌 Deskripsi Proyek
Daily List Kebutuhan Sehari-hari App adalah aplikasi web untuk mencatat, mengelola, dan memantau kebutuhan harian maupun mingguan. Aplikasi ini mendukung sistem login, manajemen daftar, checklist kebutuhan, prioritas item, serta progres penyelesaian secara real-time.

---

## 🚀 Fitur Lengkap
✅ User Management
Login & Register
Role: Admin & User
Session management

✅ List Management
Admin dapat membuat daftar (Harian/Mingguan/Lainnya)
User dapat join/leave daftar
Tampilan progress per daftar

✅ Item Management
3 Tipe Item: Teks, Link, Checklist
Prioritas item
Sequential unlock (item berikutnya terbuka jika sebelumnya selesai)
Mark complete/incomplete
CRUD penuh untuk admin

✅ Dashboard & Statistics
Total kebutuhan
Item selesai/belum selesai
Persentase penyelesaian
Filter & search daftar

---

## 🎨 Teknologi

Backend: PHP 7.4+
Database: MySQL 5.7+
Frontend: Bootstrap 5.3, Font Awesome 6
Design: Gradient modern, responsive

---

## 📂 Struktur File
needs_management/
├── config.php
├── login.php
├── index.php
├── view_list.php
├── browse_lists.php
├── create_list.php
├── api.php
├── logout.php
└── needs_management.sql

---

## 🚀 Cara Instalasi & Menjalankan Aplikasi

###  Setup Database

Buka XAMPP Control Panel
Start Apache dan MySQL
Buka browser, akses: http://localhost/phpmyadmin
Klik tab "SQL"
Copy-paste isi file needs_management.sql
Klik "Go" untuk eksekusi

###  Akses Aplikasi
Buka browser dan akses:
http://localhost/needs_management/login.php


