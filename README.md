# Implementasi-SQL-Sistem-Manajemen-Basis-Data
Proyek ini merupakan contoh implementasi SQL untuk sistem manajemen event sederhana, mencakup pembuatan tabel dan relasi antar entitas.

---

## 📌 Fitur
- Struktur database untuk klien, tema acara, dan event.
- Relasi many-to-many antara klien dan event.
- Contoh query DDL untuk pembuatan tabel.

---

## 🛠️ Teknologi
- SQL (MySQL/PostgreSQL compatible)

---

## 📂 Struktur Database

### Tabel `CLIENTS`
| Kolom        | Tipe Data     | Deskripsi               |
|--------------|---------------|-------------------------|
| id           | INT           | Primary Key             |
| first_name   | VARCHAR(50)   | Nama depan klien        |
| last_name    | VARCHAR(50)   | Nama belakang klien     |
| phone_num    | VARCHAR(15)   | Nomor telepon           |
| email        | VARCHAR(100)  | Alamat email            |

### Tabel `THEMES`
| Kolom        | Tipe Data     | Deskripsi               |
|--------------|---------------|-------------------------|
| code         | VARCHAR(10)   | Primary Key (kode tema) |
| description  | VARCHAR(100)  | Deskripsi tema          |

### Tabel `EVENTS`
| Kolom        | Tipe Data     | Deskripsi               |
|--------------|---------------|-------------------------|
| id           | INT           | Primary Key             |
| name         | VARCHAR(100)  | Nama event              |
| date         | DATE          | Tanggal pelaksanaan     |
| description  | VARCHAR(100)  | Detail event            |
| cost         | DECIMAL(10,2) | Biaya                   |
| client_id    | INT           | Foreign Key ke CLIENTS  |
| theme_code   | VARCHAR(10)   | Foreign Key ke THEMES   |

---

**luqmanaru**

sebagai bagian dari pembelajaran Sistem Manajemen Basis Data.
