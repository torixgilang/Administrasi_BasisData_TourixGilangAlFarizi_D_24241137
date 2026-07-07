CREATE DATABASE praktikum_abd;
USE praktikum_abd;

CREATE TABLE pelanggan (
    id_customer VARCHAR(10) PRIMARY KEY,
    nama_customer VARCHAR(50),
    alamat VARCHAR(100)
);

CREATE TABLE produk (
    kode_produk VARCHAR(10) PRIMARY KEY,
    nama_produk VARCHAR(50),
    harga INT
);

CREATE TABLE tr_penjualan (
    kode_transaksi VARCHAR(15) PRIMARY KEY,
    id_customer VARCHAR(10),
    kode_produk VARCHAR(10),
    jumlah_barang INT,
    harga_barang INT,
    diskon INT,
    tanggal_transaksi DATE,
    FOREIGN KEY (id_customer) REFERENCES pelanggan(id_customer),
    FOREIGN KEY (kode_produk) REFERENCES produk(kode_produk)
);

REPLACE INTO pelanggan (id_customer, nama_customer, alamat) VALUES
('P001', 'Surya Ramdhani', 'Mataram'),
('P002', 'Dede Angrian', 'Lombok Barat'),
('P003', 'Dodik Pratama', 'Lombok Tengah');

REPLACE INTO produk (kode_produk, nama_produk, harga) VALUES
('PRD01', 'Kopi Robusta', 25000),
('PRD02', 'Americano', 15000),
('PRD03', 'Gula Aren Cair', 20000);

REPLACE INTO tr_penjualan (kode_transaksi, id_customer, kode_produk, jumlah_barang, harga_barang, diskon, tanggal_transaksi) VALUES
('TR001', 'P001', 'PRD01', 1, 25000, 0, '2026-07-05'),
('TR002', 'P002', 'PRD02', 2, 15000, 0, '2026-07-05'),
('TR003', 'P003', 'PRD03', 1, 20000, 0, '2026-07-05');