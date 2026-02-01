# Daily List Kebutuhan Sehari-hari App

Aplikasi manajemen kebutuhan sehari-hari berbasis web yang memungkinkan pengguna mengelola daftar kebutuhan secara terstruktur, kolaboratif, dan efisien. Aplikasi ini dibangun menggunakan PHP, MySQL, dan Bootstrap, serta dapat langsung dijalankan di XAMPP.

---

## 📌 Deskripsi Proyek
Daily List Kebutuhan Sehari-hari App adalah aplikasi web untuk mencatat, mengelola, dan memantau kebutuhan harian maupun mingguan. Aplikasi ini mendukung sistem login, manajemen daftar, checklist kebutuhan, prioritas item, serta progres penyelesaian secara real-time.

---

## 🚀 Fitur Lengkap
Untuk bagian Features di README GitHub, kamu harus menunjukkannya dengan poin-poin yang teknis namun tetap mudah dipahami. Ini akan menunjukkan kepada dosen bahwa aplikasi kamu bukan sekadar CRUD biasa, tapi memiliki logika yang matang.

Berikut adalah deskripsi fitur lengkap yang bisa kamu salin ke file README.md:

🚀 Fitur Lengkap Aplikasi (Detailed Features)
1. Elegant Landing Page
Hero Section: Tampilan penyambutan yang interaktif dengan desain Glassmorphism.

Smooth Navigation: Akses cepat menuju dashboard utama dengan tombol Call-to-Action yang responsif.

Visual Animation: Implementasi animasi floating untuk meningkatkan estetika antarmuka pengguna.

2. Smart Need Management (CRUD)
Dynamic Entry: Menambahkan daftar kebutuhan (nama barang, jumlah, prioritas, dan tanggal) secara real-time.

Status Tracking: Fitur untuk menandai kebutuhan yang sudah dibeli dengan satu klik (Update Status).

Secure Deletion: Sistem penghapusan data yang dilengkapi dengan dialog konfirmasi untuk mencegah kesalahan fatal (Accidental Delete).

3. Visual Priority System
Color-Coded Urgency: Visualisasi tingkat kepentingan menggunakan indikator warna dinamis:

🔴 High Priority: Untuk barang mendesak.

🟠 Medium Priority: Untuk kebutuhan rutin.

🟢 Low Priority: Untuk kebutuhan jangka panjang.

Semantic Badge: Penggunaan badge otomatis yang diproses melalui logika PHP di sisi server.

4. Data Validation & Security
Server-Side Validation: Menjamin integritas data dengan validasi tipe data (string/integer), batas minimal jumlah, dan format tanggal.

CSRF Protection: Keamanan tingkat tinggi terhadap serangan luar menggunakan token keamanan bawaan Laravel.

Error Reporting: Feedback visual yang informatif jika terjadi kesalahan input pada form.

5. Modern UI/UX Design
Responsive Layout: Menggunakan Grid System Bootstrap 5 sehingga aplikasi tetap tertata rapi di perangkat Mobile, Tablet, maupun Desktop.

---

## 🎨 Teknologi & Stack Teknis

Backend: PHP 8.2+ & Laravel 12.
Database: MySQL (Dikelola melalui phpMyAdmin).
Frontend: HTML5, Blade Templating, Bootstrap 5.3 (CSS Framework), dan Bootstrap Icons.
Design: Gradient Modern & Responsive Layout.

---

## 📂 Struktur Proyek
Aplikasi ini mengikuti pola arsitektur **MVC (Model-View-Controller)**:

```text
app/
├── Http/Controllers/NeedController.php  # Logika CRUD
└── Models/Need.php                     # Koneksi Database
database/migrations/                    # Skema Tabel MySQL
resources/views/
├── layouts/app.blade.php               # Template Utama
├── needs/index.blade.php               # Dashboard Utama
└── welcome.blade.php                   # Landing Page
---

## 🚀 Cara Instalasi & Menjalankan Aplikasi

### 🗄️ Setup Database (Laravel Way)
Aplikasi ini menggunakan fitur Migration, sehingga Anda tidak perlu mengimpor file .sql secara manual.
1. Aktifkan Server Lokal: Buka XAMPP Control Panel, lalu Start Apache dan MySQL.
2. Buat Database: Buka http://localhost/phpmyadmin dan buat database baru dengan nama daily_needs_db (sesuaikan dengan nama di gambar phpMyAdmin kamu).
3. Konfigurasi .env: Buka file .env di root folder proyek, lalu pastikan pengaturannya seperti ini:
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=daily_needs_db
DB_USERNAME=root
DB_PASSWORD=
4. Jalankan Migrasi: Buka terminal/CMD di folder proyek, lalu ketik:
php artisan migrate

###  Akses Aplikasi
🌐 Akses Aplikasi
Laravel tidak diakses melalui folder htdocs secara langsung, melainkan menggunakan server internal.
Jalankan Server Lokal:
php artisan serve
Buka Browser: Akses URL berikut:
Halaman Utama: http://localhost:8000/needs
Landing Page: http://localhost:8000

