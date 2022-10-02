-- Create Aggregate Table
-- The query generated using MySQL Workbench 8.0 CE
-- Use data base table

CREATE TABLE `aggregat_table` AS(SELECT
							   	id_penjualan,
							   	id_invoice,
							   	tanggal,
							   	id_customer,
						   		id_barang,
						   		jumlah_barang,
						   		harga,
							   	nama AS customer,
							   	id_cabang_sales,
						   		cabang_sales,
						   		id_distributor,
						   		grup,
						   		nama_barang AS barang,
						   		kemasan,
						   		nama_tipe,
						   		kode_brand,
						   		brand,
							   	SUM(jumlah_barang * harga) AS total
							   FROM base_table
							   GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17
							  );