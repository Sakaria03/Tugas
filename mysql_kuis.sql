1.
CREATE TABLE products(
ID VARCHAR(50) PRIMARY KEY,
Nama_Barang VARCHAR(50),
Harga_Barang VARCHAR(50),
Stok_Barang INT(10),
Category_Barang ENUM('Laptop', 'Handphone')
);
-- Describe products (untuk menampilkan tabel yg sudah di buat)
DESCRIBE products;


-- perintah sql menambahkan produk ke dalam tabel
2. 
INSERT INTO products (ID, Nama_Barang, Harga_Barang, Stok_Barang, Category_Barang)
VALUES
('P004', 'Laptop ASUS', '12000000', 50, 'Laptop');

-- perintah sql mencari rata-rata
3.
SELECT AVG(Harga_Barang)
FROM products;

-- mencari harga di atas rata-rata
SELECT * FROM
products
WHERE Harga_Barang > 4875000;

-- mengubah stok produk
4.
UPDATE products SET Stok_Barang = 75
WHERE id = 'P003';

-- menghitung jumlah produk yang dijual 
5.
-- membuat column baru dengan nama terjual
ALTER TABLE products ADD COLUMN terjual INT(10) AFTER diskon;
-- menambah data baru di column
UPDATE products SET terjual = 'P003';
-- jumlahkan setiap produk sesuai kategori
SELECT SUM(terjual) FROM products WHERE Category_Barang = 'Laptop';


-- menampilkan produk yang memiliki stok lebih dari 20 dan harga di atas 15000000
6.
SELECT * FROM products
WHERE Stok_Barang > 20 AND Harga_Barang < 15000000;

-- mengurutkan produk berdasarkan harga dari yang termurah ke termahal
7.
SELECT * FROM products ORDER BY Harga_Barang ASC;

8. 
-- ketika menjalankan perintah sql DELETE FROM products WHERE quantity < 10; 
-- Akan terjadi , produk dengan stok dibawah 10 akan terhapus.

9. SELECT SUM(Harga_Barang*Stok_Barang) FROM products GROUP BY ID;




-- menambahkan kolumn baru pada tabel
10.
ALTER TABLE products ADD COLUMN diskon  DECIMAL (5.2)
AFTER Stok_Barang;



