-- Create table
-- The query generated using MySQL Workbench 8.0 CE
-- Use data rakamin dataset

create table `barang` (
  `kode_barang` varchar(7)not null,
  `sektor` varchar(1)not null,
  `nama_barang` varchar(41)not null,
  `tipe` varchar(4)not null,
  `nama_tipe` varchar(11)not null,
  `kode_lini` int not null,
  `lini` varchar(8)not null,
  `kemasan` varchar(6)not null
);

create table `barang_ds` (
  `kode_barang` varchar(7)not null,
  `nama_barang` varchar(41)not null,
  `kemasan` varchar(6)not null,
  `harga` varchar(11)not null,
  `nama_tipe` varchar(11)not null,
  `kode_brand` int not null,
  `brand` varchar(8)not null
);

create table `pelanggan` (
  `id_customer` varchar(9)not null,
  `level` varchar(7)not null,
  `nama` varchar(17)not null,
  `id_cabang_sales` varchar(5)not null,
  `cabang_sales` varchar(9)not null,
  `id_group` varchar(3)not null,
  `group` varchar(6)not null 
);

create table `pelanggan_ds` (
  `id_customer` varchar(9)not null,
  `level` varchar(7)not null,
  `nama` varchar(17)not null,
  `id_cabang_sales` varchar(5)not null,
  `cabang_sales` varchar(9)not null,
  `id_distributor` varchar(3)not null,
  `group` varchar(6)not null
);

create table `penjualan` (
  `id_distributor` varchar(3)not null,
  `id_cabang` varchar(5)not null,
  `id_invoice` varchar(6)not null,
  `tanggal` date not null,
  `id_customer` varchar(9)not null,
  `id_barang` varchar(7)not null,
  `jumlah_barang` int not null,
  `unit` varchar(3)not null,
  `harga` int not null,
  `mata_uang` varchar(3)not null,
  `brand_id` varchar(7)not null,
  `lini` varchar(8)not null
);

CREATE TABLE `penjualan_ds` (
  `id_invoice` varchar(6)not null,
  `tanggal` date not null,
  `id_customer` varchar(9)not null,
  `id_barang` varchar(7)not null,
  `jumlah_barang` int not null,
  `unit` varchar(3)not null,
  `harga` int not null,
  `mata_uang` varchar(3)not null
  );
  
  -- Import data table with Table Data Import Wizard