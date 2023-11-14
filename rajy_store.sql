-- Database: `rajy_store`

-- Table structure for table `tbl_barang`
CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `id_barang` int(6) NOT NULL AUTO_INCREMENT,
  `deskripsi` varchar(200) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `created` date NOT NULL,
  `nama_image` varchar(50) NOT NULL,
  `type_image` varchar(50) NOT NULL,
  `size_image` bigint(20) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `tbl_barang`
INSERT INTO `tbl_barang` (`id_barang`, `deskripsi`, `harga`, `stok`, `created`, `nama_image`, `type_image`, `size_image`) VALUES
(1, 'Jersey Barcelona HOME 2017/2018', 145000, 100, '2018-01-01', '1.PNG', 'image/png', 106168),
(2, 'Jersey Real Madrid HOME 2017/2018', 135000, 50, '2018-01-01', '3.png', 'image/png', 85919),
(3, 'Jersey Argentina HOME 2017/2018', 120000, 50, '2018-01-01', '2.png', 'image/png', 86296),
(4, 'Jersey Liverpool HOME 2017/2018', 135000, 100, '2018-01-01', '4.png', 'image/png', 92477),
(5, 'Jersey AC Milan HOME 2017/2018', 130000, 50, '2018-01-01', '5.png', 'image/png', 93559),
(6, 'Jersey Manchester City HOME 2017/2018', 145000, 100, '2018-01-01', '6.png', 'image/png', 98904),
(7, 'Jersey Bayern Munchen HOME 2017/2018', 130000, 50, '2018-01-01', '7.png', 'image/png', 99855),
(9, 'Jersey Borussia Dortmund HOME 2017/2018', 135000, 50, '2018-01-01', '8.png', 'image/png', 135955);

-- Table structure for table `tbl_keranjang`
CREATE TABLE IF NOT EXISTS `tbl_keranjang` (
  `id_keranjang` int(6) NOT NULL AUTO_INCREMENT,
  `id_user` int(6) NOT NULL,
  `id_barang` int(6) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `qty` int(50) NOT NULL,
  `kurir` varchar(15) NOT NULL,
  `date_in` date NOT NULL,
  `total` int(100) NOT NULL,
  PRIMARY KEY (`id_keranjang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `tbl_pesanan`
CREATE TABLE IF NOT EXISTS `tbl_pesanan` (
  `id_pesanan` int(6) NOT NULL AUTO_INCREMENT,
  `id_user` int(6) NOT NULL,
  `id_barang` int(6) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `qty` int(50) NOT NULL,
  `kurir` varchar(15) NOT NULL,
  `date_in` date NOT NULL,
  `total` int(100) NOT NULL,
  PRIMARY KEY (`id_pesanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Table structure for table `tbl_users`
CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id_user` int(100) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(8) NOT NULL,
  `password` varchar(8) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `title` varchar(10) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `tbl_users`
INSERT INTO `tbl_users` (`id_user`, `nama_lengkap`, `email`, `username`, `password`, `alamat`, `no_hp`, `title`) VALUES
(1, 'Yusi Maltia', 'yusimaltia@gmail.com', 'yusi123', 'yusi1234', 'Jl. Raya Sirkuit Sentul', '089668654632', 'Admin'),
(2, 'Reno Krisdianto', 'renokrisdianto@gmail.com', 'reno123', 'reno1234', 'Jl. Raya Citeureup', '085290446457', 'user'),
(3, 'M. Alwi Husaini', 'alwihusaini@gmail.com', 'alwi123', 'alwi1234', 'Jl. Raya Bojong Gede', '08988191540', 'user'),
(4, 'M. Arjuna Ridho', 'arjuna@gmail.com', 'juna123', 'juna1234', 'Jl. Kebon Pedes', '081398029053', 'user');