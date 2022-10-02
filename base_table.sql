-- Create Base Table
-- The query generated using MySQL Workbench 8.0 CE
-- Use data database table

CREATE TABLE `base_table` AS(select
						   	concat(pjl.id_invoice, pjl.id_barang) AS id_penjualan,
                            pjl.id_distributor,
						   	pjl.id_invoice,
						   	pjl.tanggal,
						   	pjl.id_customer,
						   	pjl.id_barang,
						   	pjl.jumlah_barang,
						   	pjl.unit,
						   	pjl.harga,
						   	pjl.mata_uang,
						   	plg.level,
						   	plg.nama,
						   	plg.id_cabang_sales,
						   	plg.cabang_sales,
						   	plg.group,
						   	brg.kode_barang,
						   	brg.nama_barang,
						   	brg.kemasan,
						   	brg.nama_tipe,
						   	brg.kode_lini,
						   	brg.lini
						   from penjualan AS pjl
						   left join pelanggan AS plg on plg.id_customer = pjl.id_customer
						   left join barang AS brg on brg.kode_barang = pjl.id_barang
						   );
						   
-- Determine Primary Key
ALTER TABLE `base_table` ADD PRIMARY KEY(`id_penjualan`);