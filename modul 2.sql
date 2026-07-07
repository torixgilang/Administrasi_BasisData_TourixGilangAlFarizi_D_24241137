-- =========================================================================
-- GABUNGAN CODINGAN MODUL 2: SELECT, PREFIX, DAN ALIAS
-- =========================================================================

-- Memastikan database yang digunakan benar
USE praktikum_abd;

-- -------------------------------------------------------------------------
-- Praktek 1 & 2: Mengambil Satu atau Lebih Kolom dari Tabel
-- -------------------------------------------------------------------------
SELECT nama_produk FROM produk;
SELECT nama_produk, harga FROM produk;

-- -------------------------------------------------------------------------
-- Praktek 3: Mengambil Seluruh Kolom dari Tabel
-- -------------------------------------------------------------------------
SELECT * FROM produk;

-- -------------------------------------------------------------------------
-- Praktek 4 & 5: Penggunaan PREFIX (Nama Tabel atau Nama Database)
-- -------------------------------------------------------------------------
SELECT produk.nama_produk FROM produk;
SELECT praktikum_abd.produk.nama_produk FROM produk;

-- -------------------------------------------------------------------------
-- Praktek 6 & 7: Penggunaan ALIAS (Nama Samaran) pada Kolom
-- -------------------------------------------------------------------------
SELECT nama_produk AS nama, harga AS harga_jual FROM produk;
SELECT nama_produk nama, harga harga_jual FROM produk; -- Tanpa kata kunci AS

-- -------------------------------------------------------------------------
-- Praktek 8 & 9: Penggunaan ALIAS pada Tabel
-- -------------------------------------------------------------------------
SELECT p.nama_produk FROM produk AS p;
SELECT p.nama_produk, p.harga FROM produk p; -- Tanpa kata kunci AS

-- -------------------------------------------------------------------------
-- Latihan Mandiri / Studi Kasus Modul 2
-- -------------------------------------------------------------------------
SELECT nama_customer, alamat FROM pelanggan;
SELECT nama_produk, harga FROM produk;