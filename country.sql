-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 10:16 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atlasapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(4) NOT NULL,
  `countryCode` varchar(10) NOT NULL,
  `countryName` varchar(20) NOT NULL,
  `countryCapital` varchar(20) NOT NULL,
  `countryFlag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countryCode`, `countryName`, `countryCapital`, `countryFlag`) VALUES
(1, 'AF', 'Afghanistan', 'Kabul', 'https://bit.ly/3RhJfic'),
(2, 'DZ', 'Algeria', 'Algiers', 'https://bit.ly/3RBOIA7'),
(3, 'AR', 'Argentina', 'Buenos Aires', 'https://bit.ly/3KNitMa'),
(4, 'AU', 'Australia', 'Canberra', 'https://bit.ly/3KNiOOW'),
(5, 'AT', 'Austria', 'Vienna', 'https://bit.ly/3BePVId'),
(6, 'BS', 'Bahamas', 'Nassau', 'https://bit.ly/3QkzAX1'),
(7, 'BH', 'Baharain', 'Manama', 'https://bit.ly/3RfaZEa'),
(8, 'BD', 'Bangladesh', 'Dhaka', 'https://bit.ly/3AIef3W'),
(9, 'BY', 'Belarus', 'Minsk', 'https://bit.ly/3wXG6fp'),
(10, 'BE', 'Belgium', 'Brussels', 'https://bit.ly/3TMiEeM'),
(11, 'BT', 'Bhutan', 'Thimpu', 'https://bit.ly/3qbaxLi\r\n'),
(12, 'BR', 'Brazil', 'Brasilia', 'https://bit.ly/3cOzFEB'),
(13, 'KH', 'Cambodia', 'Phnom Penh', 'https://bit.ly/3KQjGCl'),
(14, 'CA', 'Canada', 'Ottawa', 'https://bit.ly/3KNDmH0'),
(15, 'CL', 'Chile', 'Santiago', 'https://bit.ly/3Rjy5cZ'),
(16, 'CN', 'China', 'Beijing', 'https://bit.ly/3AQqZpl'),
(17, 'CU', 'Cuba', 'Havana', 'https://bit.ly/3RER8Oq'),
(18, 'DK', 'Denmark', 'Copenhagen', 'https://bit.ly/3Ri5kx3'),
(19, 'EG', 'Egypt', 'Cairo', 'https://bit.ly/3KNDOoG'),
(20, 'FR', 'France', 'Paris', 'https://bit.ly/3qee4Zb'),
(21, 'DE', 'Germany', 'Berlin', 'https://bit.ly/3D7YiGS'),
(22, 'GR', 'Greece', 'Athens', 'https://bit.ly/3QkAYsH'),
(23, 'HU', 'Hungary', 'Budapest', 'https://bit.ly/3QjsgKY'),
(24, 'IS', 'Iceland', 'Reykjavik', 'https://bit.ly/3ATmhH5'),
(25, 'IN', 'India', 'New Delhi', 'https://bit.ly/3RCAY8h'),
(26, 'ID', 'Indonesia', 'Jakarta', 'https://bit.ly/3RDFZ0t'),
(27, 'IR', 'Iran', 'Tehran', 'https://bit.ly/3THFBzV'),
(28, 'IQ', 'Iraq', 'Baghdad', 'https://bit.ly/3Bhw2jK'),
(29, 'IE', 'Ireland', 'Dublin', 'https://bit.ly/3cUpWMV'),
(30, 'IL', 'Israel', 'Tel Aviv', 'https://bit.ly/3CVl5Wx'),
(31, 'IT', 'Italy', 'Rome', 'https://bit.ly/3cLStUU'),
(32, 'JM', 'Jamaica', 'Kingston', 'https://bit.ly/3Bh3CXt'),
(33, 'JP', 'Japan', 'Tokyo', 'https://bit.ly/3eqtLtC'),
(34, 'KE', 'Kenya', 'Nairobi', 'https://bit.ly/3QdizOt'),
(35, 'LB', 'Lebanon', 'Beirut', 'https://bit.ly/3RqAse8'),
(36, 'MY', 'Malaysia', 'Kuala Lumpur', 'https://bit.ly/3D7YTZ8'),
(37, 'MV', 'Maldives', 'Male', 'https://bit.ly/3TINK76'),
(38, 'MX', 'Mexico', 'Mexico City', 'https://bit.ly/3TMEPS0'),
(39, 'NP', 'Nepal', 'Kathmandu', 'https://bit.ly/3es3JXa'),
(40, 'NL', 'Netherlands', 'Amsterdam', 'https://bit.ly/3ep915M'),
(41, 'NZ', 'New Zealand', 'Wellington', 'https://bit.ly/3qbgzeT'),
(42, 'PK', 'Pakistan', 'Islamabad', 'https://bit.ly/3wYYy7h'),
(43, 'PL', 'Poland', 'Warsaw', 'https://bit.ly/3BfJHrP'),
(44, 'PT', 'Portugal', 'Lisbon', 'https://bit.ly/3D0tyI6'),
(45, 'QA', 'Qatar', 'Doha', 'https://bit.ly/3Qh8Mqv'),
(46, 'RU', 'Russia', 'Moscow', 'https://bit.ly/3erWLkZ'),
(47, 'SA', 'Saudi Arabia', 'Riyadh', 'https://bit.ly/3D3z6kW'),
(48, 'SG', 'Singapore', 'Singapore City', 'https://cutt.ly/dCzu3Tj'),
(49, 'ZA', 'South Africa', 'Pretoria', 'https://cutt.ly/8Czu6nU'),
(50, 'SK', 'South Korea', 'Seoul', 'https://cutt.ly/LCzir9I'),
(51, 'ES', 'Spain', 'Madrid', 'https://cutt.ly/LCziuMs'),
(52, 'LK', 'Sri Lanka', 'Sri Jayawardenepura ', 'https://cutt.ly/ICzip37'),
(53, 'SE', 'Sweden ', 'Stockholm', 'https://cutt.ly/zCzizeu'),
(54, 'CH', 'Switzerland', 'Bern', 'https://cutt.ly/dCzivEs'),
(55, 'TH', 'Thailand', 'Bangkok', 'https://cutt.ly/BCzimxo'),
(56, 'TT', 'Trinidad and Tobago', 'Port of Spain', 'https://cutt.ly/9CziRbC'),
(57, 'TR', 'Turkey', 'Ankara', 'https://cutt.ly/hCziOu5'),
(58, 'AE', 'United Arab Emirates', 'Dubai', 'https://cutt.ly/KCziSK4'),
(59, 'GB', 'United Kingdom', 'London', 'https://cutt.ly/yCziGHt'),
(60, 'US', 'United States of Ame', 'Washington D.C.', 'https://cutt.ly/LCziLfp'),
(61, 'US', 'United States of Ame', 'WashingtonDC', 'https://cutt.ly/LCziLfp'),
(62, 'UA', 'Ukraine', 'Keiv', 'https://cutt.ly/XCziVWu'),
(63, 'UY', 'Uruguay', 'Montevideo', 'https://cutt.ly/lCzi9Ee'),
(64, 'VN', 'Vietnam', 'Hanoi', 'https://cutt.ly/KCzi4dT'),
(65, 'ZW', 'Zimbabwe', 'Harare', 'https://cutt.ly/ZCzi5cl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
