### 1. Struktur Database
Database Learning Management System (LMS) ini dirancang dengan pendekatan relasional yang terdiri dari tiga tabel utama:
*   **`users`**: Menyimpan data pengguna aplikasi, baik itu siswa (*student*), pengajar (*instructor*), maupun pengelola sistem (*admin*).
*   **`course_category`**: Berfungsi sebagai tabel referensi (*master data*) untuk mengelompokkan berbagai jenis kursus ke dalam kategori spesifik.
*   **`course`**: Menyimpan informasi detail mengenai materi atau kelas yang tersedia, termasuk harga, kuota, serta merujuk pada siapa pembuatnya dan apa kategorinya.

### 2. Primary Key (PK) & Business Key (BK)
Setiap tabel memiliki kolom identifikasi yang terbagi menjadi *Primary Key* (dibuat oleh sistem) dan *Business Key* (identifikasi natural bisnis):
*   **Tabel `users`**:
    *   **Primary Key**: `id` (INT)
    *   **Business Key**: `email`
*   **Tabel `course_category`**:
    *   **Primary Key**: `id` (INT)
    *   **Business Key**: `name`
*   **Tabel `course`**:
    *   **Primary Key**: `id` (INT)
    *   **Business Key**: `tittle` (dicatat sebagai `tittle` pada ERD)

### 3. Relationship & Cardinality
Berdasarkan garis relasi dan simbol *crow's foot* pada ERD, hubungannya adalah sebagai berikut:

*   **Relasi `users` dan `course`**
    *   **Jenis:** 1-to-Many (One-to-Many).
    *   **Kardinalitas:** 1 : N (Simbol `||` di sisi users, dan `|<` di sisi course).
    *   **Penjelasan:** Satu pengguna (sebagai *instructor*) dapat membuat banyak kursus (*course*). Namun, setiap kursus hanya dimiliki oleh tepat satu pengguna.
*   **Relasi `course_category` dan `course`**
    *   **Jenis:** 1-to-Many (One-to-Many).
    *   **Kardinalitas:** 1 : N (Simbol `||` di sisi course_category, dan `|<` di sisi course).
    *   **Penjelasan:** Satu kategori dapat menampung banyak kursus. Namun, setiap kursus hanya dikelompokkan ke dalam satu kategori utama.

### 4. Skema Database MySQL (DDL)
Skema database dibangun dengan melakukan konversi panjang tipe data (*data type*) persis seperti yang tertulis pada ERD (misalnya `VARCHAR(25)` untuk email pengguna). Kolom yang ditandai sebagai *Business Key* (BK) diimplementasikan menggunakan pembatasan `UNIQUE` untuk mencegah duplikasi data secara bisnis, dan *Foreign Key* (FK) diatur dengan *constraint* relasi antar tabel untuk menjaga integritas referensial (seperti `ON DELETE CASCADE` atau `RESTRICT`). Skema database dapat dilihat pada file:
- *create_database.sql*
- *create_tables.sql*

### 5. Memasukkan Data (DML)
Proses pengisian data dilakukan menggunakan perintah DML untuk menyisipkan 10 hingga 15 baris data (*record*) dummy ke dalam setiap tabel. Panjang karakter pada nilai yang dimasukkan disesuaikan secara ketat agar tidak melampaui limitasi skema yang didefinisikan sebelumnya, seperti maksimal 25 karakter untuk data pada tabel pengguna dan 50 karakter untuk nama kategori maupun judul kursus. Isian data dapat dilihat pada file *insert_values.sql* yang berisi query:
- *insert_users.sql*
- *insert_course_category.sql*
- *insert_course.sql*

### 6. Menjalankan query untuk pengolahan data
Proses eksplorasi data dilakukan dengan menulis dan menjalankan beberapa query SQL yang terdiri dari:
i. SQL Fundamental => *case_study_i.sql*
ii. Aggregrate & Conditional Logic => *case_study_ii.sql*
iii. Join => *case_study_iii.sql*