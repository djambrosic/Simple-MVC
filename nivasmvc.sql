-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2016 at 08:39 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nivasmvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_croatian_ci NOT NULL,
  `description` text COLLATE utf8_croatian_ci NOT NULL,
  `article` text COLLATE utf8_croatian_ci NOT NULL,
  `dtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `article`, `dtime`) VALUES
(1, 'Prvi naslov', 'OVO JE SAZETAK PRVOG POSTA', 'OVO JE TEKST CIJELOG POSTA', '2016-02-29 15:58:02'),
(2, 'Drugi naslov', 'OVO JE SAZETAK DRUGOG POSTA', 'OVO JE TEKST CIJELOG POSTA BROJ 2', '2016-02-29 15:58:29'),
(3, 'Lorem Ipsum', 'U ovom clanku cete naci lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam interdum at nunc ac molestie. Duis a eros est. Nulla tellus augue, aliquet ut cursus quis, gravida id purus. Vestibulum eu lorem egestas, suscipit neque eget, sodales purus. Nunc tincidunt nisi eu justo mattis, eu aliquam dui tempus. Nunc ac felis placerat, convallis nulla eu, cursus turpis. Nulla pellentesque justo vel massa ultricies dignissim. Aliquam vestibulum iaculis ipsum eu sagittis. Nullam eu malesuada ligula, a maximus enim. Duis faucibus nisl in interdum venenatis. Vivamus quis cursus libero. Cras rutrum neque a dolor commodo aliquam. Nullam vel tellus auctor diam sodales pellentesque. Vivamus eu tellus fringilla massa pretium pellentesque at id nisl. Mauris eget congue diam. Pellentesque auctor ipsum nec sodales tincidunt.', '2016-02-29 20:37:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
