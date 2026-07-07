-- =========================================================================
-- CODINGAN UTUH: MODUL 4
-- =========================================================================

-- Memastikan database yang digunakan benar
USE praktikum_abd;

-- -------------------------------------------------------------------------
-- Praktek 1 & 2: Pengurutan Data (ORDER BY) Default / Urutan Banyak Kolom
-- -------------------------------------------------------------------------
SELECT * FROM produk ORDER BY nama_produk;
SELECT * FROM tr_penjualan ORDER BY jumlah_barang, harga_barang;


-- -------------------------------------------------------------------------
-- Latihan Mandiri: Variasi Pengurutan Data (ORDER BY)
-- -------------------------------------------------------------------------
SELECT * FROM pelanggan ORDER BY nama_customer;
SELECT * FROM pelanggan ORDER BY alamat;
SELECT * FROM tr_penjualan ORDER BY kode_produk, tanggal_transaksi;
SELECT * FROM pelanggan ORDER BY nama_customer DESC;


-- -------------------------------------------------------------------------
-- Praktek 4 & 5: ORDER BY ASC, DESC, dan Hasil Perhitungan / Fungsi Matematika
-- -------------------------------------------------------------------------
SELECT * FROM tr_penjualan ORDER BY jumlah_barang ASC, harga_barang DESC;
SELECT kode_transaksi, jumlah_barang, harga_barang FROM tr_penjualan ORDER BY (jumlah_barang * harga_barang) DESC;
SELECT kode_transaksi, kode_produk, jumlah_barang, harga_barang, diskon FROM tr_penjualan ORDER BY ((jumlah_barang * harga_barang) - IFNULL(diskon, 0)) DESC;


-- -------------------------------------------------------------------------
-- Praktek Fungsi Agregasi (SUM, COUNT, AVG, MAX, MIN)
-- -------------------------------------------------------------------------
SELECT SUM(jumlah_barang) AS total_barang_terjual, COUNT(*) AS total_transaksi FROM tr_penjualan;
SELECT AVG(harga) AS rata_rata_harga, MAX(harga) AS harga_tertinggi, MIN(harga) AS harga_terendah FROM produk;
SELECT COUNT(*) AS total_baris, COUNT(DISTINCT kode_produk) AS variasi_produk FROM tr_penjualan;
SELECT kode_produk, SUM(jumlah_barang) AS total_kuantitas FROM tr_penjualan;


-- -------------------------------------------------------------------------
-- Praktek Pengelompokan Data (GROUP BY)
-- -------------------------------------------------------------------------
SELECT kode_produk FROM tr_penjualan GROUP BY kode_produk;
SELECT kode_produk, harga_barang FROM tr_penjualan GROUP BY kode_produk, harga_barang;
SELECT kode_produk, SUM(jumlah_barang) AS total_terjual FROM tr_penjualan GROUP BY kode_produk;
SELECT kode_produk, SUM(jumlah_barang) AS total_terjual FROM tr_penjualan GROUP BY kode_produk ORDER BY total_terjual DESC;


-- -------------------------------------------------------------------------
-- Praktek Penggunaan HAVING (Filter Hasil Agregasi) & Latihan Akhir Modul 4
-- -------------------------------------------------------------------------
SELECT kode_produk, SUM(jumlah_barang) AS total_terjual FROM tr_penjualan GROUP BY kode_produk HAVING SUM(jumlah_barang) > 1;
SELECT kode_produk, SUM(jumlah_barang) AS total_terjual FROM tr_penjualan GROUP BY kode_produk ORDER BY total_terjual ASC;
SELECT kode_produk, AVG(harga_barang) AS rata_rata_harga FROM tr_penjualan GROUP BY kode_produk;
SELECT kode_produk, SUM(jumlah_barang) AS total_terjual FROM tr_penjualan GROUP BY kode_produk HAVING SUM(jumlah_barang) > 1 ORDER BY total_terjual DESC;