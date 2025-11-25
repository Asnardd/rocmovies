-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2025 at 03:56 PM
-- Server version: 8.0.41-0ubuntu0.24.04.1
-- PHP Version: 8.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rocmovies`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `birthdate` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`birthdate`, `id`, `firstname`, `lastname`) VALUES
('1987-05-08 07:08:47.107473', 1, 'Patricia', 'Smith'),
('1977-07-02 00:05:13.243962', 2, 'Sarah', 'Williams'),
('1941-09-07 22:41:44.571412', 3, 'Thomas', 'White'),
('1968-10-09 00:48:51.167414', 4, 'Susan', 'Garcia'),
('1957-03-07 10:06:05.398382', 5, 'Susan', 'Martinez'),
('1994-06-20 08:51:02.765179', 6, 'Patricia', 'Anderson'),
('1947-07-03 17:18:53.659176', 7, 'Joseph', 'Jackson'),
('1976-04-23 02:02:42.238968', 8, 'Karen', 'Anderson'),
('1994-04-28 03:24:17.475435', 9, 'Elizabeth', 'Williams'),
('1963-06-07 21:17:44.982153', 10, 'Barbara', 'Miller'),
('1980-03-18 23:15:10.484714', 11, 'John', 'White'),
('1999-11-23 17:14:43.340035', 12, 'Richard', 'Rodriguez'),
('1992-01-26 10:25:17.069403', 13, 'Mary', 'Garcia'),
('1996-12-11 06:41:31.414850', 14, 'Michael', 'Thompson'),
('1956-03-08 23:35:34.275504', 15, 'Joseph', 'Jones'),
('1997-10-13 11:14:08.534277', 16, 'Charles', 'Thomas'),
('1988-01-28 03:09:40.167753', 17, 'Jessica', 'Williams'),
('1944-07-13 19:29:33.263626', 18, 'Susan', 'White'),
('1983-12-04 21:56:34.787352', 19, 'Sarah', 'Smith'),
('1947-05-14 05:29:00.757168', 20, 'William', 'Martinez'),
('1988-03-17 03:55:40.312942', 21, 'William', 'Martin'),
('1952-03-12 05:34:49.967242', 22, 'Thomas', 'White'),
('1978-06-16 00:07:59.380612', 23, 'Thomas', 'Smith'),
('1943-04-19 02:05:46.509597', 24, 'Elizabeth', 'Garcia'),
('1989-03-05 21:30:35.173148', 25, 'John', 'Jackson'),
('1995-10-14 06:59:34.791952', 26, 'William', 'Martin'),
('1965-11-21 11:28:57.542717', 27, 'Michael', 'Wilson'),
('1955-04-03 10:01:37.580828', 28, 'Joseph', 'Brown'),
('1954-01-03 22:40:03.240062', 29, 'Linda', 'Thompson'),
('1995-06-03 16:15:17.701474', 30, 'John', 'Johnson'),
('1974-03-24 18:36:30.254801', 31, 'Jessica', 'Davis'),
('1952-02-04 21:27:22.444154', 32, 'Jessica', 'Thomas'),
('1995-12-02 21:41:41.103198', 33, 'Susan', 'Hernandez'),
('1986-06-26 03:15:12.199448', 34, 'Mary', 'Taylor'),
('1948-07-06 08:29:15.916964', 35, 'Sarah', 'Hernandez'),
('1991-09-04 01:41:34.876638', 36, 'John', 'Hernandez'),
('1999-04-06 13:31:30.224130', 37, 'James', 'Williams'),
('1950-07-01 12:16:59.822157', 38, 'Richard', 'Johnson'),
('1967-12-24 17:42:45.510311', 39, 'Joseph', 'Wilson'),
('1958-04-02 18:47:34.063918', 40, 'Robert', 'Davis'),
('1943-10-16 16:58:54.556926', 41, 'David', 'Johnson'),
('1972-02-28 05:04:38.071262', 42, 'Jennifer', 'Johnson'),
('1947-10-08 18:38:02.649468', 43, 'Linda', 'Taylor'),
('1982-10-19 16:20:59.273432', 44, 'John', 'Thomas'),
('1955-05-13 04:42:41.314569', 45, 'Michael', 'Martinez'),
('1999-02-01 14:39:36.104837', 46, 'Joseph', 'Martinez'),
('1953-09-09 04:59:22.923653', 47, 'John', 'Jackson'),
('1963-05-06 14:53:34.737715', 48, 'John', 'Garcia'),
('1991-11-17 00:42:52.581542', 49, 'Elizabeth', 'White'),
('2000-03-09 03:56:06.778480', 50, 'Elizabeth', 'Brown'),
('1957-05-20 06:45:21.213487', 51, 'Sarah', 'Jones'),
('1971-05-28 01:05:40.444151', 52, 'William', 'Martin'),
('1940-06-25 04:40:16.169430', 53, 'William', 'Johnson'),
('1985-07-18 00:07:04.990957', 54, 'Joseph', 'Jackson'),
('1942-06-19 17:09:27.133636', 55, 'Robert', 'Jackson'),
('1963-01-12 06:43:15.699330', 56, 'Mary', 'Wilson'),
('1989-09-28 13:39:47.162060', 57, 'Patricia', 'Anderson'),
('1991-03-14 00:11:47.969395', 58, 'Linda', 'Miller'),
('1991-11-28 23:51:15.279766', 59, 'David', 'Thomas'),
('1964-01-28 15:14:12.856253', 60, 'Jennifer', 'Brown'),
('1959-04-08 00:42:12.417821', 61, 'Joseph', 'Anderson'),
('1995-02-25 08:22:41.534150', 62, 'David', 'Rodriguez'),
('1961-01-04 08:11:37.278361', 63, 'Richard', 'Jackson'),
('1978-07-12 23:50:20.457592', 64, 'Mary', 'Brown'),
('1947-07-19 06:16:02.743215', 65, 'Karen', 'Martin'),
('1973-09-22 23:47:47.703204', 66, 'Susan', 'Smith'),
('1967-02-22 10:39:20.695612', 67, 'Michael', 'Anderson'),
('1972-05-22 13:20:25.731076', 68, 'Patricia', 'Wilson'),
('1948-04-14 21:24:43.784475', 69, 'Elizabeth', 'Jackson'),
('1976-05-13 17:53:00.318635', 70, 'Jennifer', 'White'),
('1967-10-20 20:20:29.463246', 71, 'Elizabeth', 'Davis'),
('1972-08-26 23:10:42.088914', 72, 'Joseph', 'Davis'),
('1982-11-20 10:05:52.998243', 73, 'Elizabeth', 'Martin'),
('1954-04-05 00:02:15.498216', 74, 'Linda', 'Wilson'),
('1969-07-21 18:12:45.730180', 75, 'Karen', 'Williams'),
('1965-04-05 20:44:00.936021', 76, 'Richard', 'Moore'),
('1954-03-26 22:33:29.052657', 77, 'Patricia', 'Thomas'),
('1998-02-15 04:51:29.700005', 78, 'Sarah', 'Garcia'),
('1978-06-25 14:39:52.754213', 79, 'Thomas', 'Jackson'),
('1993-09-15 05:47:55.497732', 80, 'Thomas', 'Thomas'),
('1988-04-27 20:17:49.815451', 81, 'Joseph', 'Rodriguez'),
('1980-04-09 14:04:45.299607', 82, 'Thomas', 'Moore'),
('1961-06-18 02:08:09.242495', 83, 'Linda', 'Rodriguez'),
('1985-04-03 13:26:21.568969', 84, 'Richard', 'Jones'),
('1943-04-27 13:24:57.807189', 85, 'Joseph', 'Thomas'),
('1994-10-13 15:00:22.313118', 86, 'Charles', 'Smith'),
('1974-12-24 17:51:38.941423', 87, 'Richard', 'Thomas'),
('1954-05-14 15:01:24.352457', 88, 'Linda', 'Moore'),
('1993-08-05 19:34:01.950983', 89, 'Richard', 'Miller'),
('1976-11-01 02:41:27.142291', 90, 'Richard', 'Thompson'),
('1943-05-13 10:13:29.342722', 91, 'Joseph', 'Miller'),
('1957-07-09 02:30:01.785408', 92, 'David', 'Taylor'),
('2000-06-08 20:04:49.683414', 93, 'Sarah', 'Johnson'),
('2000-04-07 00:39:09.250132', 94, 'Mary', 'Smith'),
('1982-02-19 06:29:44.268690', 95, 'Robert', 'Moore'),
('1978-10-24 22:07:49.859099', 96, 'Barbara', 'Miller'),
('1946-10-01 09:36:43.952134', 97, 'Jennifer', 'Wilson'),
('2000-12-07 02:37:44.870917', 98, 'Richard', 'Taylor'),
('1984-05-28 21:38:51.126935', 99, 'Linda', 'Brown'),
('1962-09-14 21:23:04.530538', 100, 'Charles', 'Johnson'),
('1994-07-27 15:06:27.379781', 101, 'David', 'Smith'),
('1967-03-24 16:41:17.645830', 102, 'Joseph', 'Jones'),
('1969-07-27 23:37:17.337960', 103, 'Sarah', 'Moore'),
('1957-08-08 14:36:39.700646', 104, 'Linda', 'Williams'),
('1941-08-28 10:11:31.222423', 105, 'Richard', 'Martinez'),
('1961-05-20 22:56:17.582789', 106, 'Barbara', 'Rodriguez'),
('2000-04-03 07:46:26.512311', 107, 'James', 'Martin'),
('1984-08-21 22:31:28.831450', 108, 'Sarah', 'Garcia'),
('1958-04-13 22:15:19.696212', 109, 'James', 'Williams'),
('1970-09-17 11:27:47.577124', 110, 'Charles', 'Anderson'),
('1984-08-09 09:16:14.126516', 111, 'David', 'Anderson'),
('1947-12-18 22:11:12.226895', 112, 'Michael', 'Martinez'),
('1986-10-25 16:38:18.105409', 113, 'Jessica', 'Rodriguez'),
('1954-06-06 09:00:45.560081', 114, 'Michael', 'Wilson'),
('1942-01-18 09:44:08.668854', 115, 'Robert', 'Rodriguez'),
('1995-01-19 09:30:30.461865', 116, 'Jessica', 'Brown'),
('1943-05-28 15:07:52.068517', 117, 'David', 'Miller'),
('1944-10-21 21:03:09.156445', 118, 'Richard', 'Moore'),
('1945-04-04 17:48:26.635770', 119, 'Charles', 'Wilson'),
('1954-09-13 14:58:28.311797', 120, 'Karen', 'White'),
('1959-10-20 01:39:47.104053', 121, 'Charles', 'Thomas'),
('1956-11-03 05:15:11.578805', 122, 'Michael', 'Davis'),
('1940-07-15 22:38:30.305407', 123, 'John', 'Miller'),
('1958-12-10 22:55:29.074637', 124, 'Mary', 'Garcia'),
('1990-11-19 21:51:59.207428', 125, 'Linda', 'Rodriguez'),
('1974-04-21 04:58:17.866785', 126, 'Susan', 'Brown'),
('1943-03-26 09:38:47.864278', 127, 'Robert', 'Williams'),
('1968-02-15 22:19:44.422060', 128, 'Charles', 'Wilson'),
('1974-08-15 02:38:02.932627', 129, 'William', 'Martin'),
('1978-05-01 02:14:43.876566', 130, 'Susan', 'Martinez'),
('2000-01-25 21:52:17.604238', 131, 'Charles', 'Thompson'),
('1970-09-21 14:58:17.190305', 132, 'Mary', 'Miller'),
('1980-08-03 15:22:26.349499', 133, 'Charles', 'Thomas'),
('1994-03-11 13:44:31.302218', 134, 'David', 'Brown'),
('1942-08-03 10:16:20.121552', 135, 'Richard', 'Jackson'),
('1992-01-22 17:29:26.056837', 136, 'Richard', 'Martin'),
('1963-10-25 15:40:28.796907', 137, 'Michael', 'Martin'),
('1957-09-05 09:28:56.732168', 138, 'Mary', 'Davis'),
('1941-11-20 07:45:10.325845', 139, 'Jessica', 'Brown'),
('1975-07-03 07:53:58.118972', 140, 'Sarah', 'Smith'),
('1981-03-16 22:18:32.739677', 141, 'Joseph', 'Brown'),
('1993-08-16 07:29:35.151668', 142, 'William', 'Thomas'),
('1998-10-17 23:56:08.905997', 143, 'Richard', 'Davis'),
('1989-07-11 16:17:52.002689', 144, 'John', 'Rodriguez'),
('1993-10-19 21:31:55.155813', 145, 'Elizabeth', 'Wilson'),
('1970-06-11 17:48:34.395533', 146, 'Joseph', 'Jackson'),
('1995-04-23 07:36:24.244907', 147, 'Joseph', 'Martinez'),
('1960-12-16 22:58:51.399749', 148, 'Susan', 'Johnson'),
('1971-01-05 16:37:21.911946', 149, 'Richard', 'Jones'),
('1946-09-15 00:46:09.429893', 150, 'Patricia', 'Hernandez'),
('1970-05-11 19:44:25.681403', 151, 'Robert', 'Williams'),
('1994-11-28 17:24:20.657246', 152, 'John', 'Martinez'),
('1942-10-03 07:40:43.965664', 153, 'Jessica', 'Jackson'),
('1987-02-14 03:48:40.738083', 154, 'Elizabeth', 'Garcia'),
('1950-12-10 00:02:20.834816', 155, 'Patricia', 'Hernandez'),
('1962-06-14 04:15:33.432067', 156, 'Mary', 'Wilson'),
('1950-03-03 19:55:24.649813', 157, 'Charles', 'Miller'),
('1998-10-05 07:29:40.266314', 158, 'Linda', 'Moore'),
('1982-01-26 14:57:18.710526', 159, 'Joseph', 'Rodriguez'),
('1944-08-12 18:19:40.444920', 160, 'Sarah', 'Miller');

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `customer_id` bigint NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `id` bigint NOT NULL,
  `movie_id` bigint NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `borrows`
--

INSERT INTO `borrows` (`customer_id`, `date`, `id`, `movie_id`, `status`) VALUES
(9, '2021-07-14 16:18:04.478987', 1, 33, 'returned'),
(36, '2023-09-22 05:11:46.846112', 2, 30, 'returned'),
(2, '2020-03-01 13:42:19.856113', 3, 26, 'borrowed'),
(14, '2018-08-15 21:28:34.047489', 4, 38, 'returned'),
(45, '2022-08-09 08:04:31.063182', 5, 5, 'late'),
(5, '2022-01-06 16:10:48.033276', 6, 60, 'returned'),
(12, '2019-02-25 18:18:29.803028', 7, 50, 'returned'),
(42, '2021-03-09 09:49:47.934631', 8, 27, 'returned'),
(25, '2018-09-07 07:52:23.715894', 9, 25, 'late'),
(35, '2023-07-24 11:02:02.902075', 10, 9, 'returned'),
(12, '2021-05-06 04:34:32.554531', 11, 35, 'borrowed'),
(15, '2018-01-11 18:59:14.792911', 12, 54, 'borrowed'),
(20, '2023-09-24 11:47:20.754024', 13, 30, 'returned'),
(35, '2025-01-02 02:12:15.240820', 14, 25, 'returned'),
(23, '2020-05-06 09:56:01.197636', 15, 10, 'late'),
(8, '2024-11-19 23:04:04.692267', 16, 3, 'returned'),
(2, '2019-10-03 06:33:34.070559', 17, 16, 'borrowed'),
(3, '2023-02-01 06:04:20.704667', 18, 29, 'returned'),
(4, '2024-04-19 18:44:42.046385', 19, 16, 'returned'),
(15, '2019-11-07 00:45:58.791030', 20, 35, 'returned'),
(4, '2022-04-15 13:11:51.303314', 21, 9, 'returned'),
(37, '2022-11-30 03:38:34.626962', 22, 21, 'returned'),
(21, '2020-07-26 13:11:13.918823', 23, 16, 'borrowed'),
(43, '2019-11-18 18:08:29.433649', 24, 34, 'returned'),
(4, '2023-01-13 05:53:53.922446', 25, 36, 'returned'),
(12, '2023-10-10 19:16:39.447952', 26, 41, 'returned'),
(4, '2023-06-22 17:07:20.703953', 27, 23, 'returned'),
(34, '2023-12-04 08:31:04.436548', 28, 21, 'returned'),
(20, '2019-07-26 07:00:37.791062', 29, 25, 'returned'),
(16, '2019-12-02 02:54:26.315344', 30, 55, 'returned'),
(10, '2021-12-09 13:39:29.959175', 31, 52, 'borrowed'),
(27, '2022-09-28 10:18:44.555736', 32, 27, 'borrowed'),
(16, '2019-09-24 17:53:08.346305', 33, 17, 'returned'),
(29, '2021-02-26 21:32:36.096955', 34, 55, 'returned'),
(13, '2020-04-14 01:56:48.395489', 35, 4, 'returned'),
(39, '2025-06-07 05:51:46.076319', 36, 3, 'returned'),
(38, '2023-09-18 02:58:47.585997', 37, 47, 'returned'),
(14, '2025-09-19 01:16:10.349138', 38, 56, 'returned'),
(1, '2025-12-21 15:41:49.199254', 39, 14, 'late'),
(8, '2024-06-01 14:58:36.502184', 40, 48, 'late'),
(45, '2023-12-27 12:47:21.214447', 41, 39, 'returned'),
(16, '2020-09-26 05:21:11.813185', 42, 36, 'returned'),
(30, '2023-07-09 12:10:09.376710', 43, 35, 'returned'),
(24, '2025-07-05 19:13:48.521433', 44, 33, 'returned'),
(31, '2025-02-21 22:53:43.335788', 45, 49, 'late'),
(24, '2021-07-10 00:52:15.047936', 46, 21, 'returned'),
(15, '2019-03-30 08:47:10.017007', 47, 48, 'returned'),
(38, '2024-02-15 23:58:52.437862', 48, 38, 'returned'),
(13, '2019-12-16 15:25:54.398290', 49, 22, 'returned'),
(16, '2022-09-07 18:52:59.686406', 50, 32, 'late'),
(22, '2024-06-29 16:17:36.861501', 51, 17, 'returned'),
(42, '2022-03-05 05:27:28.483214', 52, 48, 'returned'),
(23, '2019-03-11 20:03:50.755303', 53, 11, 'returned'),
(12, '2025-07-26 03:49:33.568471', 54, 59, 'late'),
(4, '2018-04-16 02:04:55.879827', 55, 34, 'returned'),
(43, '2024-07-02 17:14:07.006693', 56, 4, 'returned'),
(41, '2018-07-31 04:03:24.741521', 57, 15, 'returned'),
(14, '2021-11-17 18:32:41.391329', 58, 33, 'borrowed'),
(41, '2025-12-11 12:54:30.646467', 59, 43, 'late'),
(43, '2018-02-18 21:02:44.006933', 60, 32, 'returned'),
(27, '2018-02-21 23:11:30.555134', 61, 1, 'returned'),
(35, '2018-02-23 06:14:40.526611', 62, 19, 'returned'),
(44, '2024-11-09 16:13:13.985359', 63, 28, 'late'),
(7, '2018-10-27 05:41:02.549857', 64, 59, 'borrowed'),
(13, '2022-06-24 15:24:13.264679', 65, 40, 'returned'),
(18, '2021-05-18 02:44:32.082857', 66, 51, 'returned'),
(26, '2022-10-22 09:36:59.255021', 67, 30, 'late'),
(15, '2023-10-27 05:50:25.868286', 68, 20, 'returned'),
(42, '2023-07-13 03:38:32.796483', 69, 55, 'borrowed'),
(26, '2021-03-17 19:48:05.579549', 70, 25, 'returned'),
(41, '2023-12-24 15:55:59.179708', 71, 1, 'borrowed'),
(28, '2024-09-02 23:20:12.347362', 72, 42, 'returned'),
(7, '2022-06-29 22:24:10.963800', 73, 58, 'borrowed'),
(14, '2025-05-21 03:29:12.725916', 74, 58, 'returned'),
(31, '2018-05-25 15:54:43.969051', 75, 18, 'borrowed'),
(18, '2022-08-15 03:18:13.590882', 76, 58, 'returned'),
(12, '2025-03-27 04:28:40.329761', 77, 60, 'borrowed'),
(14, '2019-03-24 23:42:07.788795', 78, 38, 'returned'),
(26, '2018-08-28 00:52:30.313814', 79, 60, 'returned'),
(16, '2025-02-06 04:03:22.890704', 80, 37, 'returned'),
(35, '2021-04-07 13:38:53.792313', 81, 22, 'returned'),
(45, '2018-09-01 15:59:32.525119', 82, 47, 'returned'),
(23, '2018-10-31 11:58:48.458320', 83, 4, 'returned'),
(5, '2023-02-24 04:39:06.806360', 84, 22, 'returned'),
(39, '2024-07-31 08:26:06.342230', 85, 26, 'borrowed'),
(18, '2021-10-31 19:27:26.514435', 86, 51, 'returned'),
(36, '2021-09-03 16:55:00.194760', 87, 25, 'returned'),
(43, '2018-09-24 05:48:59.809676', 88, 25, 'returned'),
(16, '2018-08-17 09:03:20.086023', 89, 46, 'returned'),
(25, '2024-09-01 11:05:45.664693', 90, 46, 'returned'),
(25, '2021-01-25 15:45:31.111726', 91, 21, 'borrowed'),
(20, '2021-01-23 05:23:36.798329', 92, 29, 'returned'),
(9, '2019-08-06 04:56:39.451914', 93, 6, 'returned'),
(36, '2021-06-21 17:58:44.108310', 94, 33, 'borrowed'),
(23, '2018-10-17 03:22:27.625920', 95, 36, 'returned'),
(21, '2021-04-11 21:25:17.012940', 96, 56, 'returned'),
(25, '2018-09-21 03:39:12.760053', 97, 50, 'late'),
(16, '2022-06-08 00:22:13.177820', 98, 37, 'returned'),
(11, '2020-04-15 12:03:05.315759', 99, 9, 'returned'),
(10, '2019-06-04 11:53:14.455791', 100, 5, 'returned'),
(20, '2024-08-28 15:51:13.080657', 101, 31, 'returned'),
(16, '2023-04-26 21:53:22.519886', 102, 47, 'returned'),
(13, '2018-11-29 08:26:17.142071', 103, 30, 'returned'),
(26, '2025-02-27 19:14:32.650318', 104, 22, 'returned'),
(22, '2020-11-05 23:44:30.451533', 105, 29, 'returned'),
(42, '2019-02-27 22:10:35.315029', 106, 39, 'returned'),
(45, '2022-01-28 05:33:18.329445', 107, 13, 'returned'),
(26, '2020-06-24 11:56:57.770571', 108, 21, 'returned'),
(32, '2024-08-26 12:14:07.254200', 109, 37, 'returned'),
(18, '2024-09-07 14:27:21.412022', 110, 53, 'returned'),
(37, '2023-01-14 23:38:52.572133', 111, 13, 'returned'),
(36, '2024-03-09 08:57:31.484045', 112, 2, 'late'),
(14, '2024-10-14 07:44:36.305482', 113, 29, 'returned'),
(5, '2025-03-18 23:38:58.834306', 114, 53, 'returned'),
(44, '2019-03-09 09:56:50.664100', 115, 32, 'returned'),
(17, '2019-04-24 21:45:08.749979', 116, 43, 'returned'),
(25, '2021-10-27 04:50:29.626979', 117, 5, 'returned'),
(26, '2022-04-23 23:46:35.968355', 118, 35, 'late'),
(45, '2022-08-17 01:07:28.038551', 119, 27, 'returned'),
(24, '2025-08-14 05:25:56.851755', 120, 45, 'returned'),
(41, '2018-09-22 00:42:44.114682', 121, 59, 'returned'),
(43, '2021-01-07 23:22:34.174418', 122, 43, 'returned'),
(3, '2023-06-28 01:00:45.710380', 123, 37, 'returned'),
(22, '2021-08-30 09:05:30.111090', 124, 51, 'borrowed'),
(17, '2022-05-06 14:46:48.783132', 125, 15, 'returned'),
(38, '2022-11-23 04:39:37.231768', 126, 45, 'returned'),
(26, '2024-07-27 14:00:38.712565', 127, 30, 'returned'),
(33, '2020-12-07 18:37:57.025755', 128, 10, 'returned'),
(19, '2025-10-31 00:59:58.090025', 129, 27, 'borrowed'),
(10, '2020-08-27 00:13:47.359731', 130, 23, 'returned'),
(14, '2022-02-09 09:34:21.365219', 131, 34, 'returned'),
(29, '2023-12-05 18:26:05.474425', 132, 47, 'returned'),
(20, '2024-11-22 03:50:31.745305', 133, 3, 'borrowed'),
(22, '2018-12-06 18:40:20.710032', 134, 42, 'returned'),
(16, '2019-06-27 00:10:32.578719', 135, 34, 'returned'),
(36, '2021-12-06 13:15:18.243118', 136, 28, 'returned'),
(41, '2019-08-03 02:00:58.671590', 137, 12, 'returned'),
(26, '2024-04-09 23:39:42.643937', 138, 2, 'returned'),
(29, '2021-08-27 13:46:53.407723', 139, 38, 'borrowed'),
(14, '2020-05-14 18:53:40.788870', 140, 14, 'returned'),
(5, '2018-11-13 03:10:56.838338', 141, 37, 'returned'),
(12, '2020-10-09 19:11:48.206647', 142, 24, 'returned'),
(17, '2025-05-04 02:50:34.513261', 143, 43, 'returned'),
(41, '2023-01-29 17:22:16.407517', 144, 21, 'returned'),
(38, '2020-12-16 23:08:29.369082', 145, 8, 'returned'),
(40, '2024-12-03 04:43:19.706309', 146, 12, 'returned'),
(20, '2023-03-25 03:17:11.618836', 147, 59, 'borrowed'),
(9, '2019-01-02 04:24:07.250161', 148, 21, 'returned'),
(12, '2023-11-25 10:22:35.148225', 149, 24, 'returned'),
(27, '2019-03-05 08:07:50.602727', 150, 39, 'returned'),
(12, '2023-05-29 10:26:12.563483', 151, 32, 'returned'),
(42, '2019-06-23 05:19:22.581868', 152, 60, 'returned'),
(19, '2019-08-05 07:04:52.329861', 153, 9, 'returned'),
(40, '2025-05-13 02:00:55.376479', 154, 4, 'late'),
(32, '2019-08-30 05:50:04.854815', 155, 9, 'returned'),
(36, '2023-07-23 00:24:39.519013', 156, 33, 'returned'),
(32, '2024-01-16 08:03:11.880690', 157, 27, 'returned'),
(11, '2022-10-23 15:06:56.032359', 158, 6, 'returned'),
(15, '2018-04-12 13:55:20.288204', 159, 19, 'returned'),
(19, '2024-08-22 16:12:30.479536', 160, 11, 'returned'),
(32, '2022-05-07 00:27:16.118710', 161, 36, 'returned'),
(18, '2022-08-15 08:55:54.863274', 162, 50, 'late'),
(35, '2024-06-09 06:04:21.043631', 163, 53, 'returned'),
(29, '2019-11-10 23:40:03.445807', 164, 35, 'borrowed'),
(42, '2020-02-09 01:17:44.312170', 165, 49, 'returned'),
(3, '2020-03-27 12:55:24.365509', 166, 29, 'returned'),
(6, '2025-05-12 08:44:00.123088', 167, 29, 'returned'),
(16, '2024-11-23 18:22:32.773443', 168, 14, 'returned'),
(23, '2024-01-18 05:39:22.639905', 169, 56, 'returned'),
(11, '2019-03-09 14:06:40.822974', 170, 40, 'returned'),
(14, '2018-07-04 10:02:27.597766', 171, 52, 'returned'),
(18, '2022-08-01 21:29:41.176556', 172, 39, 'returned'),
(19, '2022-11-15 10:15:37.280329', 173, 19, 'late'),
(33, '2023-10-12 12:13:41.854779', 174, 58, 'borrowed'),
(27, '2018-07-04 04:40:33.290794', 175, 59, 'returned'),
(9, '2025-05-14 19:30:56.139136', 176, 45, 'returned'),
(21, '2020-02-09 03:01:08.798462', 177, 54, 'returned'),
(26, '2019-03-18 17:05:07.605474', 178, 32, 'returned'),
(41, '2021-03-11 14:52:35.473947', 179, 27, 'borrowed'),
(6, '2022-05-21 22:55:37.786224', 180, 26, 'returned'),
(24, '2022-02-25 07:14:03.343187', 181, 30, 'returned'),
(6, '2021-11-25 08:27:14.665678', 182, 47, 'returned'),
(23, '2018-07-16 18:16:40.834328', 183, 55, 'returned'),
(14, '2025-01-06 17:05:54.222142', 184, 28, 'returned'),
(21, '2020-05-31 02:13:57.354161', 185, 54, 'returned'),
(9, '2025-04-02 09:14:03.508913', 186, 37, 'returned'),
(44, '2018-05-31 09:39:22.048174', 187, 49, 'borrowed'),
(30, '2019-01-21 23:47:42.974581', 188, 2, 'returned'),
(29, '2018-01-03 02:24:02.448580', 189, 30, 'returned'),
(45, '2019-02-14 20:09:08.924998', 190, 59, 'returned'),
(11, '2025-12-07 21:03:31.919176', 191, 56, 'returned'),
(42, '2020-02-17 22:22:40.086424', 192, 24, 'returned'),
(42, '2018-06-10 21:32:20.415594', 193, 11, 'returned'),
(45, '2019-12-29 11:01:48.450081', 194, 49, 'returned'),
(7, '2019-10-26 01:50:10.499968', 195, 1, 'borrowed'),
(38, '2022-06-02 20:34:15.713013', 196, 15, 'returned'),
(1, '2020-12-03 10:44:43.856800', 197, 45, 'borrowed'),
(28, '2019-02-15 15:41:36.500905', 198, 45, 'borrowed'),
(25, '2024-03-20 09:40:00.845106', 199, 6, 'borrowed'),
(21, '2025-06-30 03:18:02.313791', 200, 24, 'borrowed'),
(9, '2023-10-05 19:00:01.149792', 201, 42, 'borrowed'),
(37, '2023-03-12 04:42:03.681595', 202, 1, 'returned'),
(23, '2019-10-24 22:33:56.658589', 203, 47, 'returned'),
(27, '2023-11-04 02:05:03.463873', 204, 40, 'returned'),
(6, '2018-11-09 03:13:19.146814', 205, 58, 'returned'),
(38, '2021-04-08 03:29:40.368611', 206, 47, 'late'),
(21, '2019-03-11 10:29:40.259822', 207, 51, 'returned'),
(6, '2022-09-16 08:14:37.630193', 208, 16, 'returned'),
(39, '2024-08-17 04:11:12.987002', 209, 19, 'returned'),
(43, '2020-07-26 04:36:17.215425', 210, 57, 'returned'),
(33, '2024-05-12 11:15:49.410780', 211, 13, 'returned'),
(4, '2025-08-21 17:12:47.832336', 212, 51, 'late'),
(32, '2018-12-17 06:46:36.252792', 213, 25, 'returned'),
(39, '2022-06-30 07:53:47.931895', 214, 5, 'late'),
(24, '2020-09-10 05:54:41.138394', 215, 60, 'returned'),
(37, '2021-02-09 07:07:41.572896', 216, 27, 'returned'),
(31, '2018-08-15 18:39:58.017500', 217, 50, 'returned'),
(1, '2019-11-02 06:57:35.041761', 218, 17, 'late'),
(26, '2020-06-09 02:04:42.659104', 219, 33, 'returned'),
(27, '2023-12-21 10:47:38.421818', 220, 28, 'borrowed'),
(35, '2023-03-29 23:47:52.160097', 221, 35, 'returned'),
(20, '2022-05-08 13:38:28.965659', 222, 6, 'returned'),
(10, '2020-10-12 04:16:05.409711', 223, 35, 'returned'),
(42, '2023-06-22 05:04:51.069326', 224, 44, 'returned'),
(28, '2025-03-14 21:14:15.250229', 225, 47, 'borrowed'),
(6, '2021-09-11 21:26:41.121620', 226, 60, 'returned'),
(39, '2020-08-18 22:20:19.698435', 227, 4, 'returned'),
(12, '2018-02-09 08:22:07.742287', 228, 8, 'borrowed'),
(1, '2022-03-23 07:13:51.999309', 229, 11, 'returned'),
(34, '2024-12-30 10:33:26.755777', 230, 51, 'returned'),
(24, '2024-05-18 11:22:44.819067', 231, 9, 'returned'),
(8, '2025-08-27 21:12:56.030782', 232, 50, 'returned'),
(28, '2022-06-16 13:24:05.066974', 233, 18, 'returned'),
(37, '2018-08-28 10:45:29.520248', 234, 41, 'returned'),
(24, '2022-04-02 05:37:19.901104', 235, 4, 'returned'),
(24, '2020-03-03 14:50:01.810894', 236, 11, 'borrowed'),
(37, '2024-02-24 14:15:43.120936', 237, 44, 'returned'),
(33, '2018-05-17 19:42:15.900400', 238, 1, 'returned'),
(16, '2022-01-05 17:19:03.381657', 239, 3, 'returned'),
(10, '2025-12-03 00:19:38.899138', 240, 12, 'borrowed'),
(42, '2019-11-29 13:04:31.337433', 241, 27, 'returned'),
(21, '2025-01-10 06:48:01.081670', 242, 18, 'returned'),
(8, '2023-09-23 22:48:14.945753', 243, 33, 'borrowed'),
(15, '2022-05-22 10:54:22.048159', 244, 52, 'late'),
(5, '2021-12-15 23:56:06.908100', 245, 57, 'returned'),
(20, '2018-09-26 09:22:16.579958', 246, 21, 'returned'),
(24, '2020-06-24 22:54:21.591194', 247, 13, 'returned'),
(40, '2021-12-12 08:52:52.386162', 248, 16, 'returned'),
(32, '2024-08-07 14:15:01.204915', 249, 50, 'returned'),
(35, '2024-10-09 00:05:20.257034', 250, 49, 'returned');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`) VALUES
(1, 'Rodriguez'),
(2, 'Hernandez'),
(3, 'Wilson'),
(4, 'Davis'),
(5, 'Taylor'),
(6, 'Moore'),
(7, 'Brown'),
(8, 'Garcia'),
(9, 'Taylor'),
(10, 'Thompson'),
(11, 'Anderson'),
(12, 'Thompson'),
(13, 'Wilson'),
(14, 'Wilson'),
(15, 'Smith'),
(16, 'Taylor'),
(17, 'Rodriguez'),
(18, 'Smith'),
(19, 'Thompson'),
(20, 'Johnson'),
(21, 'White'),
(22, 'Moore'),
(23, 'Wilson'),
(24, 'Garcia'),
(25, 'White'),
(26, 'Anderson'),
(27, 'Garcia'),
(28, 'Davis'),
(29, 'White'),
(30, 'Rodriguez'),
(31, 'Jones'),
(32, 'Brown'),
(33, 'Johnson'),
(34, 'Wilson'),
(35, 'Hernandez'),
(36, 'Johnson'),
(37, 'Thompson'),
(38, 'Anderson'),
(39, 'Jones'),
(40, 'Williams'),
(41, 'Wilson'),
(42, 'Martinez'),
(43, 'Thomas'),
(44, 'Miller'),
(45, 'Davis');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `production_year` int NOT NULL,
  `id` bigint NOT NULL,
  `movie_id` bigint DEFAULT NULL,
  `productor_id` bigint NOT NULL,
  `style_id` bigint NOT NULL,
  `title` varchar(100) NOT NULL,
  `reference` varchar(255) NOT NULL
) ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`production_year`, `id`, `movie_id`, `productor_id`, `style_id`, `title`, `reference`) VALUES
(1996, 1, NULL, 3, 9, 'The Eternal Journey', 'USA-100001'),
(1982, 2, NULL, 5, 3, 'Wild Guardians', 'GB-100002'),
(1993, 3, NULL, 5, 12, 'Royal Memories', 'FR-100003'),
(1968, 4, NULL, 8, 2, 'Lucky Promise', 'USA-100004'),
(1996, 5, NULL, 7, 9, 'The Lost Guardian', 'GB-100005'),
(1983, 6, NULL, 7, 1, 'Secret Memories', 'FR-100006'),
(1983, 7, NULL, 8, 6, 'Lonely Shadows', 'USA-100007'),
(1979, 8, NULL, 6, 2, 'Wild Journey', 'GB-100008'),
(1991, 9, NULL, 10, 9, 'Midnight Promise', 'FR-100009'),
(2009, 10, NULL, 2, 11, 'Burning River', 'USA-100010'),
(1967, 11, NULL, 7, 2, 'Red City', 'GB-100011'),
(1964, 12, NULL, 5, 8, 'Great Promise', 'FR-100012'),
(1999, 13, NULL, 9, 3, 'Strange Kingdom', 'USA-100013'),
(1969, 14, NULL, 9, 7, 'Blue Bridge', 'GB-100014'),
(2002, 15, NULL, 2, 8, 'Dark City', 'FR-100015'),
(2006, 16, NULL, 6, 4, 'Strange Promise', 'USA-100016'),
(1997, 17, NULL, 6, 2, 'Secret Bridge', 'GB-100017'),
(2000, 18, NULL, 6, 1, 'Dark Code', 'FR-100018'),
(1961, 19, NULL, 2, 8, 'Frozen Code', 'USA-100019'),
(1956, 20, NULL, 10, 1, 'Royal Sky', 'GB-100020'),
(2022, 21, NULL, 4, 3, 'Last Star', 'FR-100021'),
(1977, 22, NULL, 9, 4, 'First Sky', 'USA-100022'),
(1950, 23, NULL, 3, 10, 'Dark Night', 'GB-100023'),
(1982, 24, NULL, 3, 9, 'Royal Empire', 'FR-100024'),
(1953, 25, NULL, 2, 11, 'Hidden Journey', 'USA-100025'),
(1991, 26, NULL, 6, 4, 'Silent Empire', 'GB-100026'),
(1966, 27, NULL, 5, 1, 'Distant Garden', 'FR-100027'),
(1958, 28, NULL, 9, 2, 'Wild Blade', 'USA-100028'),
(1963, 29, NULL, 6, 9, 'Strange Quest', 'GB-100029'),
(1955, 30, NULL, 4, 10, 'Distant Guardian', 'FR-100030'),
(2008, 31, NULL, 9, 5, 'Crimson Journey', 'USA-100031'),
(2001, 32, NULL, 1, 8, 'Blue Truth', 'GB-100032'),
(2006, 33, NULL, 2, 8, 'Lost Star', 'FR-100033'),
(1968, 34, NULL, 6, 10, 'Lost Night', 'USA-100034'),
(2024, 35, NULL, 5, 10, 'Secret Storm', 'GB-100035'),
(2017, 36, NULL, 6, 7, 'Bright Blade', 'FR-100036'),
(2005, 37, NULL, 9, 10, 'Great Guardian', 'USA-100037'),
(2020, 38, NULL, 2, 11, 'Distant Code', 'GB-100038'),
(1979, 39, NULL, 7, 8, 'Blue Sky', 'FR-100039'),
(2003, 40, NULL, 8, 7, 'Distant Memory', 'USA-100040'),
(1990, 41, NULL, 6, 7, 'Frozen Road', 'GB-100041'),
(2010, 42, NULL, 6, 3, 'Lost Star', 'FR-100042'),
(2005, 43, NULL, 2, 2, 'Great Echo', 'USA-100043'),
(2021, 44, NULL, 6, 3, 'Red Dream', 'GB-100044'),
(1992, 45, NULL, 9, 9, 'Frozen Memory', 'FR-100045'),
(2004, 46, NULL, 7, 6, 'Distant City', 'USA-100046'),
(1989, 47, NULL, 5, 10, 'Invisible Memory', 'GB-100047'),
(1977, 48, NULL, 10, 9, 'Hidden Truth', 'FR-100048'),
(1963, 49, NULL, 8, 4, 'Invisible Island', 'USA-100049'),
(1985, 50, NULL, 6, 2, 'Lonely Promise', 'GB-100050'),
(2021, 51, NULL, 7, 9, 'Silent Signal', 'FR-100051'),
(1973, 52, NULL, 5, 1, 'Dark Storm', 'USA-100052'),
(1994, 53, NULL, 5, 6, 'Silent Empire', 'GB-100053'),
(2001, 54, NULL, 3, 10, 'Lost Night', 'FR-100054'),
(2017, 55, NULL, 1, 2, 'Last Shadow', 'USA-100055'),
(1993, 56, NULL, 7, 8, 'Final Kingdom', 'GB-100056'),
(1991, 57, NULL, 5, 12, 'Lucky Dream', 'FR-100057'),
(1956, 58, NULL, 10, 2, 'Hidden Empire', 'USA-100058'),
(1960, 59, NULL, 10, 1, 'Dark Blade', 'GB-100059'),
(2006, 60, NULL, 7, 8, 'Blue Road', 'FR-100060');

-- --------------------------------------------------------

--
-- Table structure for table `productors`
--

CREATE TABLE `productors` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `productors`
--

INSERT INTO `productors` (`id`, `name`) VALUES
(1, 'Producer 1'),
(2, 'Producer 2'),
(3, 'Producer 3'),
(4, 'Producer 4'),
(5, 'Producer 5'),
(6, 'Producer 6'),
(7, 'Producer 7'),
(8, 'Producer 8'),
(9, 'Producer 9'),
(10, 'Producer 10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `actor_id` bigint NOT NULL,
  `id` bigint NOT NULL,
  `movie_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`actor_id`, `id`, `movie_id`, `name`) VALUES
(132, 1, 1, 'Sam Reed'),
(30, 2, 1, 'Lee Wells'),
(89, 3, 1, 'Jamie Reed'),
(111, 4, 1, 'Alex Hill'),
(154, 5, 2, 'Morgan Reed'),
(15, 6, 2, 'Jordan Cole'),
(2, 7, 2, 'Sam Smith'),
(53, 8, 2, 'Charlie Fox'),
(78, 9, 2, 'Morgan Brooks'),
(55, 10, 2, 'Riley Hill'),
(19, 11, 3, 'Charlie Jones'),
(102, 12, 3, 'Casey Fox'),
(11, 13, 3, 'Lee Fox'),
(112, 14, 3, 'Riley Reed'),
(5, 15, 3, 'Sam Fox'),
(84, 16, 4, 'Charlie Cole'),
(44, 17, 4, 'Sam Fox'),
(159, 18, 4, 'Sam Hill'),
(151, 19, 5, 'Casey Hill'),
(103, 20, 5, 'Casey Brooks'),
(135, 21, 5, 'Sam Jones'),
(21, 22, 5, 'Jamie Hill'),
(102, 23, 5, 'Casey Cole'),
(80, 24, 5, 'Morgan Hill'),
(38, 25, 6, 'Morgan Brooks'),
(66, 26, 6, 'Sam Brooks'),
(51, 27, 6, 'Charlie Wells'),
(145, 28, 7, 'Sam Wells'),
(160, 29, 7, 'Charlie Reed'),
(83, 30, 7, 'Jordan Smith'),
(81, 31, 7, 'Casey Jones'),
(39, 32, 7, 'Jordan Wells'),
(113, 33, 7, 'Charlie Smith'),
(95, 34, 8, 'Sam Fox'),
(74, 35, 8, 'Charlie Smith'),
(20, 36, 8, 'Charlie Hill'),
(155, 37, 9, 'Charlie Jones'),
(122, 38, 9, 'Casey Jones'),
(129, 39, 9, 'Jamie Brooks'),
(39, 40, 9, 'Alex Hill'),
(16, 41, 9, 'Charlie Wells'),
(94, 42, 10, 'Riley Cole'),
(96, 43, 10, 'Lee Smith'),
(73, 44, 10, 'Casey Jones'),
(100, 45, 10, 'Casey Jones'),
(73, 46, 11, 'Lee Brooks'),
(65, 47, 11, 'Casey Reed'),
(155, 48, 11, 'Riley Brooks'),
(39, 49, 11, 'Lee Jones'),
(86, 50, 11, 'Jordan Fox'),
(21, 51, 11, 'Casey Brooks'),
(109, 52, 12, 'Alex Cole'),
(131, 53, 12, 'Jordan Brooks'),
(93, 54, 12, 'Taylor Cole'),
(50, 55, 13, 'Sam Smith'),
(58, 56, 13, 'Casey Brooks'),
(36, 57, 13, 'Lee Fox'),
(40, 58, 13, 'Morgan Brooks'),
(20, 59, 13, 'Morgan Brooks'),
(76, 60, 13, 'Charlie Smith'),
(94, 61, 14, 'Taylor Hill'),
(61, 62, 14, 'Jordan Wells'),
(114, 63, 14, 'Taylor Cole'),
(157, 64, 14, 'Lee Wells'),
(73, 65, 14, 'Charlie Reed'),
(115, 66, 14, 'Riley Fox'),
(52, 67, 15, 'Alex Wells'),
(155, 68, 15, 'Casey Jones'),
(36, 69, 15, 'Jamie Jones'),
(65, 70, 15, 'Jordan Jones'),
(70, 71, 16, 'Riley Jones'),
(116, 72, 16, 'Taylor Wells'),
(132, 73, 16, 'Casey Smith'),
(38, 74, 16, 'Riley Smith'),
(129, 75, 17, 'Alex Cole'),
(96, 76, 17, 'Sam Cole'),
(61, 77, 17, 'Morgan Brooks'),
(99, 78, 17, 'Alex Reed'),
(21, 79, 17, 'Charlie Brooks'),
(58, 80, 17, 'Charlie Wells'),
(21, 81, 18, 'Taylor Brooks'),
(5, 82, 18, 'Jamie Fox'),
(66, 83, 18, 'Sam Reed'),
(78, 84, 19, 'Riley Wells'),
(32, 85, 19, 'Sam Jones'),
(13, 86, 19, 'Charlie Smith'),
(62, 87, 19, 'Jamie Hill'),
(75, 88, 20, 'Casey Hill'),
(110, 89, 20, 'Lee Fox'),
(1, 90, 20, 'Morgan Jones'),
(158, 91, 20, 'Jamie Cole'),
(135, 92, 21, 'Jamie Smith'),
(140, 93, 21, 'Riley Wells'),
(130, 94, 21, 'Alex Fox'),
(65, 95, 22, 'Taylor Jones'),
(5, 96, 22, 'Lee Cole'),
(92, 97, 22, 'Morgan Smith'),
(18, 98, 22, 'Casey Cole'),
(89, 99, 22, 'Morgan Wells'),
(47, 100, 23, 'Taylor Smith'),
(35, 101, 23, 'Taylor Smith'),
(17, 102, 23, 'Casey Reed'),
(118, 103, 23, 'Jamie Fox'),
(10, 104, 23, 'Jamie Wells'),
(76, 105, 23, 'Jordan Smith'),
(74, 106, 24, 'Jordan Jones'),
(92, 107, 24, 'Casey Fox'),
(13, 108, 24, 'Riley Wells'),
(85, 109, 24, 'Riley Cole'),
(128, 110, 25, 'Sam Fox'),
(95, 111, 25, 'Sam Fox'),
(133, 112, 25, 'Lee Brooks'),
(69, 113, 25, 'Jamie Reed'),
(27, 114, 26, 'Charlie Fox'),
(21, 115, 26, 'Morgan Wells'),
(84, 116, 26, 'Casey Wells'),
(76, 117, 26, 'Alex Cole'),
(79, 118, 26, 'Lee Fox'),
(15, 119, 27, 'Morgan Smith'),
(20, 120, 27, 'Morgan Wells'),
(104, 121, 27, 'Alex Brooks'),
(94, 122, 27, 'Sam Hill'),
(132, 123, 27, 'Casey Cole'),
(146, 124, 28, 'Casey Wells'),
(9, 125, 28, 'Sam Brooks'),
(155, 126, 28, 'Jamie Cole'),
(40, 127, 28, 'Riley Cole'),
(116, 128, 28, 'Jordan Hill'),
(95, 129, 28, 'Sam Smith'),
(128, 130, 29, 'Sam Reed'),
(133, 131, 29, 'Jordan Wells'),
(100, 132, 29, 'Taylor Reed'),
(144, 133, 29, 'Charlie Hill'),
(35, 134, 30, 'Morgan Wells'),
(19, 135, 30, 'Sam Cole'),
(116, 136, 30, 'Casey Jones'),
(77, 137, 31, 'Taylor Jones'),
(41, 138, 31, 'Taylor Brooks'),
(45, 139, 31, 'Taylor Wells'),
(93, 140, 31, 'Alex Cole'),
(131, 141, 31, 'Jamie Cole'),
(142, 142, 32, 'Riley Wells'),
(34, 143, 32, 'Jamie Fox'),
(157, 144, 32, 'Riley Jones'),
(23, 145, 32, 'Morgan Cole'),
(17, 146, 32, 'Sam Wells'),
(80, 147, 32, 'Charlie Cole'),
(142, 148, 33, 'Riley Smith'),
(151, 149, 33, 'Sam Brooks'),
(47, 150, 33, 'Jordan Brooks'),
(34, 151, 33, 'Morgan Cole'),
(89, 152, 34, 'Jordan Hill'),
(133, 153, 34, 'Jamie Reed'),
(73, 154, 34, 'Morgan Reed'),
(21, 155, 34, 'Lee Jones'),
(152, 156, 35, 'Lee Cole'),
(149, 157, 35, 'Lee Smith'),
(40, 158, 35, 'Alex Jones'),
(44, 159, 35, 'Alex Reed'),
(147, 160, 36, 'Charlie Reed'),
(107, 161, 36, 'Jordan Wells'),
(159, 162, 36, 'Taylor Fox'),
(8, 163, 36, 'Jordan Wells'),
(16, 164, 37, 'Riley Wells'),
(41, 165, 37, 'Charlie Hill'),
(113, 166, 37, 'Casey Brooks'),
(82, 167, 38, 'Jamie Jones'),
(89, 168, 38, 'Casey Hill'),
(103, 169, 38, 'Charlie Jones'),
(34, 170, 38, 'Jordan Wells'),
(95, 171, 38, 'Taylor Brooks'),
(13, 172, 39, 'Lee Fox'),
(75, 173, 39, 'Taylor Brooks'),
(99, 174, 39, 'Casey Cole'),
(41, 175, 40, 'Charlie Reed'),
(128, 176, 40, 'Charlie Smith'),
(132, 177, 40, 'Sam Fox'),
(120, 178, 40, 'Jamie Wells'),
(56, 179, 41, 'Alex Reed'),
(150, 180, 41, 'Charlie Wells'),
(91, 181, 41, 'Jordan Smith'),
(13, 182, 41, 'Sam Fox'),
(68, 183, 42, 'Riley Smith'),
(94, 184, 42, 'Lee Hill'),
(104, 185, 42, 'Casey Reed'),
(12, 186, 42, 'Sam Fox'),
(141, 187, 43, 'Sam Fox'),
(72, 188, 43, 'Casey Cole'),
(160, 189, 43, 'Jamie Cole'),
(157, 190, 43, 'Morgan Hill'),
(31, 191, 43, 'Lee Fox'),
(33, 192, 43, 'Jamie Smith'),
(10, 193, 44, 'Charlie Wells'),
(36, 194, 44, 'Morgan Brooks'),
(86, 195, 44, 'Casey Cole'),
(101, 196, 45, 'Casey Wells'),
(158, 197, 45, 'Lee Reed'),
(77, 198, 45, 'Charlie Smith'),
(152, 199, 45, 'Casey Cole'),
(107, 200, 46, 'Alex Wells'),
(150, 201, 46, 'Jordan Hill'),
(79, 202, 46, 'Alex Wells'),
(135, 203, 47, 'Taylor Smith'),
(159, 204, 47, 'Lee Jones'),
(98, 205, 47, 'Taylor Smith'),
(38, 206, 47, 'Charlie Cole'),
(39, 207, 48, 'Alex Brooks'),
(106, 208, 48, 'Jamie Hill'),
(53, 209, 48, 'Jamie Cole'),
(129, 210, 48, 'Charlie Fox'),
(157, 211, 48, 'Casey Brooks'),
(121, 212, 48, 'Charlie Cole'),
(68, 213, 49, 'Jordan Reed'),
(157, 214, 49, 'Taylor Reed'),
(124, 215, 49, 'Jordan Hill'),
(50, 216, 49, 'Charlie Cole'),
(64, 217, 49, 'Charlie Cole'),
(74, 218, 50, 'Riley Cole'),
(32, 219, 50, 'Morgan Reed'),
(147, 220, 50, 'Alex Reed'),
(140, 221, 50, 'Sam Cole'),
(98, 222, 50, 'Charlie Reed'),
(55, 223, 51, 'Sam Hill'),
(52, 224, 51, 'Taylor Smith'),
(138, 225, 51, 'Jamie Hill'),
(70, 226, 51, 'Taylor Smith'),
(144, 227, 51, 'Sam Fox'),
(36, 228, 51, 'Casey Wells'),
(36, 229, 52, 'Morgan Fox'),
(2, 230, 52, 'Charlie Wells'),
(141, 231, 52, 'Taylor Reed'),
(74, 232, 53, 'Jamie Smith'),
(16, 233, 53, 'Morgan Fox'),
(23, 234, 53, 'Morgan Smith'),
(147, 235, 53, 'Riley Wells'),
(60, 236, 53, 'Morgan Reed'),
(3, 237, 54, 'Lee Jones'),
(77, 238, 54, 'Casey Reed'),
(146, 239, 54, 'Charlie Wells'),
(130, 240, 55, 'Sam Cole'),
(120, 241, 55, 'Morgan Wells'),
(70, 242, 55, 'Jordan Brooks'),
(50, 243, 55, 'Alex Cole'),
(146, 244, 56, 'Riley Cole'),
(50, 245, 56, 'Sam Fox'),
(45, 246, 56, 'Sam Brooks'),
(157, 247, 56, 'Morgan Wells'),
(104, 248, 56, 'Casey Hill'),
(67, 249, 57, 'Charlie Reed'),
(99, 250, 57, 'Casey Reed'),
(61, 251, 57, 'Lee Smith'),
(93, 252, 58, 'Jordan Brooks'),
(61, 253, 58, 'Riley Reed'),
(16, 254, 58, 'Sam Reed'),
(31, 255, 58, 'Casey Hill'),
(120, 256, 58, 'Taylor Brooks'),
(40, 257, 59, 'Charlie Hill'),
(117, 258, 59, 'Taylor Jones'),
(156, 259, 59, 'Jamie Wells'),
(96, 260, 59, 'Jamie Cole'),
(107, 261, 59, 'Sam Jones'),
(141, 262, 59, 'Alex Hill'),
(43, 263, 60, 'Sam Hill'),
(84, 264, 60, 'Lee Wells'),
(134, 265, 60, 'Sam Wells'),
(114, 266, 60, 'Alex Wells');

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` bigint NOT NULL,
  `name` enum('ACTION','ANIMATION','COMEDY','CRIME','DOCUMENTARY','DRAMA','FANTASY','HORROR','MYSTERY','ROMANCE','SF','THRILLER') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`id`, `name`) VALUES
(1, 'ACTION'),
(2, 'COMEDY'),
(3, 'DRAMA'),
(4, 'SF'),
(5, 'HORROR'),
(6, 'DOCUMENTARY'),
(7, 'ROMANCE'),
(8, 'THRILLER'),
(9, 'FANTASY'),
(10, 'CRIME'),
(11, 'ANIMATION'),
(12, 'MYSTERY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKetfpb8t7v27mvi0piss726o7t` (`customer_id`),
  ADD KEY `FKeuf864uemqpdsg2kwvrhnv0cf` (`movie_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKljpllcu7q6ll3o4qncr63mg6w` (`productor_id`),
  ADD KEY `FKjlet6f5pa78062vf6s44fukpc` (`style_id`),
  ADD KEY `FK6drf44bm3k1rcs0bivj89d2qh` (`movie_id`);

--
-- Indexes for table `productors`
--
ALTER TABLE `productors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKq3lwmnvolv5yb7tqikogot73l` (`actor_id`),
  ADD KEY `FKth07k2vg8bv6xi8mp86vw1ln0` (`movie_id`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `borrows`
--
ALTER TABLE `borrows`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productors`
--
ALTER TABLE `productors`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrows`
--
ALTER TABLE `borrows`
  ADD CONSTRAINT `FKetfpb8t7v27mvi0piss726o7t` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `FKeuf864uemqpdsg2kwvrhnv0cf` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `FK6drf44bm3k1rcs0bivj89d2qh` FOREIGN KEY (`movie_id`) REFERENCES `productors` (`id`),
  ADD CONSTRAINT `FKjlet6f5pa78062vf6s44fukpc` FOREIGN KEY (`style_id`) REFERENCES `styles` (`id`),
  ADD CONSTRAINT `FKljpllcu7q6ll3o4qncr63mg6w` FOREIGN KEY (`productor_id`) REFERENCES `productors` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `FKq3lwmnvolv5yb7tqikogot73l` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  ADD CONSTRAINT `FKth07k2vg8bv6xi8mp86vw1ln0` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
