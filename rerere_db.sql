-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Mei 2020 pada 06.04
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rerere.db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_dosen`
--

CREATE TABLE IF NOT EXISTS `tb_dosen` (
  `kode_dosen` varchar(7) NOT NULL,
  `nama_dosen` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_dosen`
--

INSERT INTO `tb_dosen` (`kode_dosen`, `nama_dosen`) VALUES
('DOS-001', 'khanif'),
('DOS-002', 'buang'),
('DOS-003', 'toni'),
('DOS-004', 'adi'),
('DOS-005', 'harminto'),
('DOS-006', 'teguh'),
('DOS-007', 'gentur'),
('DOS-008', 'aeny'),
('DOS-009', 'nadia'),
('DOS-010', 'sarwido'),
('DOS-011', 'syamsul');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `nim` char(12) NOT NULL,
  `nama_mhs` varchar(24) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `no_telpon` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`nim`, `nama_mhs`, `alamat`, `no_telpon`) VALUES
('181240000736', 'dhoharotul fadillah', 'tegalsambi', '087833937695'),
('181240000737', 'ahmad ragil saputra', 'mayong', '0895386017638'),
('181240000741', 'khasan nur hadi', 'welahan', '082328280225'),
('181240000748', 'siti nur ellya', 'kerso', '0895386851102'),
('181240000751', 'affan arifian', 'bangsri', '085875875020'),
('181240000786', 'della widya farianti', 'panggang', '0895410561144'),
('181240000789', 'suko haryanto', 'donorojo', '085641121918'),
('181240000811', 'arbi ulul hidayati', 'bangsri', '089649081467'),
('181240000858', 'bagus bowo leksono', 'donorojo', '0895361892757'),
('181240000859', 'rere tias m', 'jepara', '089667445321');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_makul`
--

CREATE TABLE IF NOT EXISTS `tb_makul` (
  `kode_makul` varchar(7) NOT NULL,
  `nama_makul` varchar(20) DEFAULT NULL,
  `sks` int(3) DEFAULT NULL,
  `ruang` int(5) DEFAULT NULL,
  `kode_dosen` varchar(7) DEFAULT NULL,
  `waktu` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_makul`
--

INSERT INTO `tb_makul` (`kode_makul`, `nama_makul`, `sks`, `ruang`, `kode_dosen`, `waktu`) VALUES
('TIF5315', 'basis data lanjut', 2, 103, 'DOS-009', 'jumat 18:00-19:30'),
('TIF5316', 'strategi algoritma', 3, 304, 'DOS-002', 'ahad 16:00-17:30'),
('TIF5317', 'grafika komputer', 3, 104, 'DOS-003', 'sabtu 16:00-17:30'),
('TIF5318', 'RPL', 2, 302, 'DOS-009', 'sabtu 13:00-14:30'),
('TIF5319', 'pemrograman web', 3, 103, 'DOS-007', 'ahad 14:30-16:00'),
('TIF5320', 'jaringan komputer', 3, 105, 'DOS-008', 'ahad 13:00-14:30'),
('TIF5321', 'PBO lanjut', 3, 105, 'DOS-006', 'jumat 16:00-17:30'),
('TIF5334', 'IMK', 2, 304, 'DOS-007', 'ahad 14:30-16:00'),
('UN17105', 'aswaja', 2, 302, 'DOS-011', 'ahad 08:00-09:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE IF NOT EXISTS `tb_nilai` (
  `nim` char(12) DEFAULT NULL,
  `kode_makul` varchar(7) DEFAULT NULL,
  `nilai` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`nim`, `kode_makul`, `nilai`) VALUES
('181240000786', 'TIF5320', 80),
('181240000786', 'TIF5318', 85),
('181240000786', 'TIF5317', 75),
('181240000789', 'TIF5317', 77),
('181240000789', 'TIF5319', 82),
('181240000858', 'TIF5319', 83),
('181240000858', 'TIF5320', 79),
('181240000737', 'TIF5320', 80),
('181240000737', 'UN17105', 90),
('181240000741', 'UN17105', 89),
('181240000741', 'TIF5317', 77);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
 ADD PRIMARY KEY (`kode_dosen`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
 ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tb_makul`
--
ALTER TABLE `tb_makul`
 ADD PRIMARY KEY (`kode_makul`), ADD KEY `tb_makul_ibfk_1` (`kode_dosen`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
 ADD KEY `tb_nilai_ibfk_2` (`nim`), ADD KEY `tb_nilai_ibfk_3` (`kode_makul`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_makul`
--
ALTER TABLE `tb_makul`
ADD CONSTRAINT `tb_makul_ibfk_1` FOREIGN KEY (`kode_dosen`) REFERENCES `tb_dosen` (`kode_dosen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
ADD CONSTRAINT `tb_nilai_ibfk_2` FOREIGN KEY (`nim`) REFERENCES `tb_mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_nilai_ibfk_3` FOREIGN KEY (`kode_makul`) REFERENCES `tb_makul` (`kode_makul`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
