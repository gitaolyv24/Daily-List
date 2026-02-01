# Progress Report Project - MyNeeds

MyNeeds adalah aplikasi manajemen kebutuhan harian berbasis web yang dibangun dengan Laravel 12. Aplikasi ini dibuat untuk mempermudah pencatatan barang belanjaan agar lebih terorganisir. Pengguna dapat memberikan label prioritas pada setiap barang untuk menentukan tingkat urgensi kebutuhan.

---

## 📌 User Story
Tujuan utama pengguna dalam aplikasi ini adalah:
Mengakses dashboard dengan tampilan yang responsif.
Menginput nama barang, jumlah, dan target tanggal pembelian.
Menentukan skala prioritas (Tinggi, Sedang, Rendah) untuk setiap item.
Menandai barang yang sudah dibeli agar daftar tetap diperbarui.
Menghapus data barang yang sudah tidak diperlukan.

---

## 🚀 Fitur Utama (SRS)
Manajemen Data (CRUD): Fasilitas untuk menambah, melihat, memperbarui, dan menghapus daftar kebutuhan.
Indikator Prioritas: Sistem pewarnaan otomatis untuk membantu identifikasi barang yang paling mendesak.
Keamanan Aplikasi: Implementasi validasi form dan proteksi CSRF standar Laravel untuk menjaga integritas data.
Otomatisasi Database: Penggunaan Migration untuk pengelolaan skema tabel secara konsisten.

---

## 🎨 Arsitektur Aplikasi

Aplikasi menggunakan konsep MVC (Model-View-Controller) untuk pemisahan logika yang jelas:
Model: File Need.php menangani interaksi langsung dengan tabel di database.
Controller: File NeedController.php menangani seluruh alur logika bisnis dan pemrosesan data.
View: Menggunakan Blade Engine (.blade.php) untuk merender antarmuka pengguna.

---

## Tampilan (Mock-Up)
Halaman Utama: Dashboard yang berisi form input serta tabel daftar kebutuhan.
Database: Struktur tabel needs pada MySQL yang mencakup kolom item_name, quantity, priority, dan status.

## 📂 Struktur Proyek
Aplikasi ini mengikuti pola arsitektur **MVC (Model-View-Controller)**:

```text
my-needs-app/
├── app/Http/Controllers/   <-- Logika Bisnis (Controller)
├── app/Models/             <-- Representasi Database (Model)
├── database/migrations/    <-- Skema Tabel (Migration)
├── resources/views/        <-- Antarmuka Pengguna (View)
└── routes/web.php          <-- Pengaturan URL (Routing)
---

## 🚀 Cara Instalasi & Menjalankan Aplikasi

### 🗄️ Setup Database (Laravel Way)
Lakukan Clone pada repositori ini.
Jalankan perintah composer install melalui terminal.
Lakukan konfigurasi database pada file .env.
Jalankan php artisan migrate untuk membuat struktur tabel secara otomatis.
Jalankan php artisan serve untuk mengaktifkan server lokal.

###  Akses Aplikasi
🌐 Akses Aplikasi
Laravel tidak diakses melalui folder htdocs secara langsung, melainkan menggunakan server internal.
Jalankan Server Lokal:
php artisan serve
Buka Browser: Akses URL berikut:
Halaman Utama: http://localhost:8000/needs
Landing Page: http://localhost:8000

