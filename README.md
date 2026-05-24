# Mini Project Full-Stack Web Development - SQL Database (LMS)

Sebuah proyek perancangan dan implementasi basis data relasional untuk sistem Learning Management System (LMS) berskala kecil. Proyek ini mendemonstrasikan pemahaman mengenai Entity Relationship Diagram (ERD), pembuatan skema database MySQL (DDL), manipulasi data (DML), serta pengeksekusian kueri SQL tingkat dasar hingga menengah (Join dan Agregat).

## 🗂️ Struktur Database

Database `dibiedu_lms`[cite: 5] dirancang menggunakan tiga entitas utama[cite: 6]:
1. **`users`**: Menyimpan data pengguna dengan role spesifik (`student`, `instructor`, `admin`)[cite: 6].
2. **`course_category`**: Kategori kelas untuk mengelompokkan materi pembelajaran[cite: 6].
3. **`course`**: Menyimpan detail kelas, termasuk harga, kuota, serta relasi ke instruktur pembuatnya dan kategori kelas[cite: 6].

Struktur ini menerapkan *Primary Key* (PK) dan *Foreign Key* (FK) dengan constraint seperti `ON DELETE CASCADE` dan `ON DELETE RESTRICT` untuk menjaga integritas data[cite: 6].

## ⚙️ Fitur dan Kueri SQL yang Diimplementasikan

Proyek ini mencakup penyelesaian berbagai *case study* SQL untuk mengelola data LMS:

* **SQL Fundamentals**: Melakukan filter data (*WHERE* clause), kondisi majemuk (*AND/OR*), dan pengurutan data kelas berdasarkan harga tertinggi[cite: 2].
* **Aggregate & Conditional Logic**: Penggunaan fungsi seperti `COUNT()` dan `ROUND(AVG())` untuk menghitung total user/course, rata-rata harga kelas per kategori, hingga penggunaan klausa `HAVING`[cite: 3].
* **Join Statements**: Menggunakan `INNER JOIN` dan `LEFT JOIN` untuk merelasikan multi-tabel, seperti menampilkan daftar kursus beserta kategori[cite: 4], melihat performa upload tiap instruktur[cite: 4], hingga menampilkan seluruh kategori meskipun belum memiliki kursus yang terdaftar[cite: 4].

## 🚀 Cara Penggunaan

1. Jalankan script DDL untuk membuat database dan tabel-tabel terkait (lihat file SQL `create_tables`)[cite: 5, 6].
2. Lakukan *seeding* data menggunakan script DML `INSERT INTO` yang telah disediakan untuk mengisi *dummy data* pengguna dan kelas[cite: 7].
3. Eksekusi kueri pada folder *case study* untuk melihat hasil manipulasi dan filter data[cite: 2, 3, 4].

---
*Created by Muhammad Hamdan Yusuf*