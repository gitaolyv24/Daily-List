# Progress Report Project - MyNeeds

MyNeeds adalah aplikasi manajemen kebutuhan harian berbasis web yang dibangun menggunakan **Laravel 12**.  
Aplikasi ini bertujuan untuk membantu pengguna mencatat dan mengelola kebutuhan belanja agar lebih terorganisir berdasarkan prioritas dan status pembelian.

---

## 📌 User Story
Tujuan utama pengguna dalam aplikasi ini adalah:
1. Mengakses dashboard dengan tampilan yang responsif.
2. Menginput nama barang, jumlah, dan target tanggal pembelian.
3. Menentukan skala prioritas (Tinggi, Sedang, Rendah) untuk setiap item.
4. Menandai barang yang sudah dibeli agar daftar tetap diperbarui.
5. Menghapus data barang yang sudah tidak diperlukan.

---

## 🚀 Fitur Utama (SRS)
- **Manajemen Data (CRUD)**  
  Menambah, melihat, memperbarui, dan menghapus data kebutuhan harian
- **Indikator Prioritas**  
  Setiap item memiliki label prioritas untuk membantu menentukan urgensi
- **Status Pembelian**  
  Barang dapat ditandai sebagai “Sudah Dibeli” atau “Belum Dibeli”
- **Keamanan Aplikasi**  
  Validasi form dan proteksi CSRF bawaan Laravel
- **Otomatisasi Database**  
  Penggunaan Migration untuk menjaga konsistensi struktur tabel

---

## 🎨 Arsitektur Aplikasi

Aplikasi ini menerapkan konsep **MVC (Model-View-Controller)** untuk memisahkan logika aplikasi secara jelas sehingga mudah dikembangkan dan dipelihara.
- **Model**  
  `Need.php` berfungsi sebagai representasi tabel `needs` di database
- **Controller**  
  `NeedController.php` menangani alur logika bisnis dan pengolahan data
- **View**  
  Menggunakan Blade Template (`.blade.php`) untuk merender tampilan antarmuka
  
---

## 🖼️ Tampilan (Mock-Up)
- **Halaman Utama**  
  Menampilkan form input kebutuhan dan daftar kebutuhan harian

- **Database**  
  Tabel `needs` berisi kolom:
  - item_name
  - quantity
  - priority
  - need_date
  - status
  - created_at, updated_at

## 📂 Struktur Proyek
Aplikasi ini mengikuti pola arsitektur **MVC (Model-View-Controller)**:

```text
my-needs-app/
├── app/Http/Controllers/ <-- Logika Bisnis
├── app/Models/ <-- Model Database
├── database/migrations/ <-- Skema Tabel
├── resources/views/ <-- Tampilan (Blade)
└── routes/web.php <-- Routing Aplikasi

---

## 🚀 Cara Instalasi & Menjalankan Aplikasi

### 🗄️ Setup Database
1. Clone repositori ini
2. Jalankan:
   ```bash
   composer install
3. Konfigurasi database di file .env
4. Jalankan migration:
php artisan migrate
▶️ Menjalankan Aplikasi
php artisan serve

###  Akses Aplikasi
🌐 Akses Aplikasi
Laravel dijalankan menggunakan server internal.
Halaman Utama:
http://localhost:8000/needs
Landing Page:
http://localhost:8000


