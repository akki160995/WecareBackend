-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 02:17 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wecare`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `firstname`, `lastname`, `phone`, `email`, `date`, `doctor`, `message`) VALUES
(25, 'AKSHAY', 'SARGAR', '9975944224', 'AKKI@GMAIL.COM', '2021-12-01', 'dr. Alicia Bridges', 'HII I AM AKSHAY '),
(27, 'akshay', 'sargar', '7387935306', 'akisargar@gmail.com', '2020-07-08', 'dr. Aaron Neville', 'noo');

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `provinance` varchar(255) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`id`, `firstname`, `lastname`, `email`, `phone`, `address`, `city`, `provinance`, `note`) VALUES
(1, 'akshay1', 'sargar2', 'akki@gmail.com', '7387935306', 'kolhapur', 'kop', 'unchagav', 'HIiiiiiiiiiiiiiii'),
(2, 'akshay', 'sargar', 'mhg@jhgg.kjh', '55649687', 'mhgu', 'kjh', 'kjh', 'jhkjhkjhkj'),
(12, 'akshay', 'sargar', 'Akisargar3@gmail.com', '7387935306', 'kolhapur', 'kolhapur', 'kolhapur', 'hii ,I am akshay'),
(13, 'akshay', 'sargar', 'hkj@kh.kjhg', '7387935306', 'kolhapuri', 'kolhapur', 'kolhapur', 'hiii'),
(15, 'ngfd', 'hgfj', 'Akisargar3@gmail.com', '9865324168', 'jhgkyr', 'fgdhtrwq', '`gfdjeu4', 'jhgkuyr'),
(17, 'akshay', 'sargar', 'akisargar@gmail.com', '7387935306', 'b-10,Babanagar,Unchagav', 'kolhapur', 'kolhapur', 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `firstname`, `lastname`, `email`, `phone`, `message`) VALUES
(1, 'akki', 'sargar', 'akisatr@hgjhg.hgh', '87987984458', 'habibih jhgdkjhg jhvkkhg hjvjkhg hjvukhguyy kjhvkjhgvouyvouyouyvouyouyvf hgvvkguvvvvvvvvvvvvvv khhvvvvvvvvvvvvvvvvvvv fgcgjfcjhgcjg'),
(2, 'akshay ', 'sargar', 'akki@gmail.com', '98575648525', 'ajijijij');

-- --------------------------------------------------------

--
-- Table structure for table `deptappoint`
--

CREATE TABLE `deptappoint` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deptappoint`
--

INSERT INTO `deptappoint` (`id`, `firstname`, `lastname`, `phone`, `email`, `department`, `message`, `date`) VALUES
(8, 'akshay', 'sargar', '7387935306', 'akisargar@gmail.com', 'Burn Center', 'i am Unknown', '2021-06-17'),
(9, 'akki', 'sargar', '7387935306', 'akki@gmail.com', 'Breast Screening', 'ndbdb', '2021-06-17'),
(10, 'akki', 'mhhvxjk', '5487', 'jhgjh@nhg.cjh', 'Acute Medical Unit', 'kjshsui', '2020-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) DEFAULT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `Doctor` varchar(255) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctorinfo`
--

CREATE TABLE `doctorinfo` (
  `id` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Addr` int(11) NOT NULL,
  `Specialization` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `evantinfo`
--

CREATE TABLE `evantinfo` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evantinfo`
--

INSERT INTO `evantinfo` (`id`, `firstname`, `lastname`, `phone`, `email`, `team`, `message`) VALUES
(1, 'fff', '', '2147483647', 'sargar.akshay96@gmail.com', 'Seminar', 'lk'),
(2, 'akshay', 'sargar', '7387935306', 'sargar.akshay96@gmail.com', 'Seminar', 'demo msg'),
(3, 'manik', 'khot', '7387935306', 'mk@gmail.com', 'Vaccine', 'hii there'),
(4, 'Mukesh', 'Kolnad', '7387935306', 'sargar.akshay96@gmail.com', 'Seminar', 'kjjhkjhkjhhhhhhhhhhhhhhhhhhhh'),
(5, 'Mukesh', 'Kolnad', '9856475963', 'sargar.akshay96@gmail.com', 'Vaccine', 'om');

-- --------------------------------------------------------

--
-- Table structure for table `eventreg`
--

CREATE TABLE `eventreg` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `allergies` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eventreg`
--

INSERT INTO `eventreg` (`id`, `firstname`, `lastname`, `age`, `email`, `address`, `allergies`) VALUES
(1, 'akshay', 'sargar', 25, 'aki@gmail.com', 'kopnn', 'no ll'),
(4, 'akshay', 'sargarpp', 255, 'aesa@jkjg.jhf', 'hgfty', 'hjguyfgiuy'),
(5, 'akshay', 'sargar', 26, 'aki@gmai.com', 'kkk', 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `body`, `date`) VALUES
(73, 'NEW VIDEO SHOWCASES BUILDING’S ROLE IN PANDEMIC RESPONSE', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque purus semper eget duis at tellus at urna. Erat imperdiet sed euismod nisi. Turpis egestas maecenas pharetra convallis p', '2021-05-21'),
(74, 'this is test demo1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque purus semper eget duis at tellus at urna. Erat imperdiet sed euismod nisi. Turpis egestas maecenas pharetra convallis posuere morbi. Amet facilisis magna etiam tempor orci eu lobortis. Neque sodales ut etiam sit. Vitae purus faucibus ornare suspendisse sed nisi lacus sed viverra. Odio aenean sed adipiscing diam. Eu mi bibendum neque egestas congue quisque egestas diam in. Augue eget arcu dictum varius duis. Id aliquet risus feugiat in ante.\n\nViverra orci sagittis eu volutpat odio. Aliquam malesuada bibendum arcu vitae elementum. Imperdiet massa tincidunt nunc pulvinar sapien et ligula. Eu mi bibendum neque egestas congue quisque egestas diam in. Tincidunt vitae semper quis lectus nulla at. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mi eget mauris pharetra et ultrices neque ornare aenean. Sed faucibus turpis in eu mi bibendum neque egestas congue. Nullam non nisi est sit amet facilisis magna etiam. Diam maecenas sed enim ut sem viverra aliquet eget. Pharetra pharetra massa massa ultricies mi quis. Ligula ullamcorper malesuada proin libero nunc consequat. Dolor sit amet consectetur adipiscing elit ut aliquam. Tincidunt id aliquet risus feugiat in ante. Facilisi morbi tempus iaculis urna id volutpat lacus. In nibh mauris cursus mattis molestie a iaculis at. Eu turpis egestas pretium aenean pharetra magna. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Id cursus metus aliquam eleifend mi in nulla posuere. Sagittis orci a scelerisque purus.', '2021-05-21'),
(75, 'hii', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque purus semper eget duis at tellus at urna. Erat imperdiet sed euismod nisi. Turpis egestas maecenas pharetra convallis posuere morbi. Amet facilisis magna etiam tempor orci eu lobortis. Neque sodales ut etiam sit. Vitae purus faucibus ornare suspendisse sed nisi lacus sed viverra. Odio aenean sed adipiscing diam. Eu mi bibendum neque egestas congue quisque egestas diam in. Augue eget arcu dictum varius duis. Id aliquet risus feugiat in ante. Viverra orci sagittis eu volutpat odio. Aliquam malesuada bibendum arcu vitae elementum. Imperdiet massa tincidunt nunc pulvinar sapien et ligula. Eu mi bibendum neque egestas congue quisque egestas diam in. Tincidunt vitae semper quis lectus nulla at. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec. Mi eget mauris pharetra et ultrices neque ornare aenean. Sed faucibus turpis in eu mi bibendum neque egestas congue. Nullam non nisi est sit amet facilisis magna etiam. Diam maecenas sed enim ut sem viverra aliquet eget. Pharetra pharetra massa massa ultricies mi quis. Ligula ullamcorper malesuada proin libero nunc consequat. Dolor sit amet consectetur adipiscing elit ut aliquam. Tincidunt id aliquet risus feugiat in ante. Facilisi morbi tempus iaculis urna id volutpat lacus. In nibh mauris cursus mattis molestie a iaculis at. Eu turpis egestas pretium aenean pharetra magna. Eu lobortis elementum nibh tellus molestie nunc non blandit massa. Id cursus metus aliquam eleifend mi in nulla posuere. Sagittis orci a scelerisque purus.	', '2021-05-23');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `Heading` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `Heading`, `Description`) VALUES
(1, 'hi', 'one demo'),
(2, 'demo', 'this text is demo text');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(6, 'akshay', 'aki@gmail.com', '$2y$10$QC7yrlF140kZx92g/PgPOOt9uvMFh04.S7N4H9ji12Os/HdcW.tDS'),
(7, 'akshay', 'akki@gmail.com', '$2y$10$poWrVsd4L7T1upSXvt52yeeIYrSZ4eD/ha6tvC7CuPvEhQC.oTHlG'),
(8, 'akshay sargar', 'akkias@gmail.com', '$2y$10$kDzYaf6xyIdgjngeGN8a2eZpNU/o.8qe9eXsn4.5fwF8klVemCc06'),
(9, 'Nikita', 'nikitadesai@gmail.com', '$2y$10$eXsLjLHbdwHO1oXkGMUrmOn46jAujnc/AeeWLSPGaC1jXU5wSZz7W');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deptappoint`
--
ALTER TABLE `deptappoint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evantinfo`
--
ALTER TABLE `evantinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventreg`
--
ALTER TABLE `eventreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deptappoint`
--
ALTER TABLE `deptappoint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `evantinfo`
--
ALTER TABLE `evantinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eventreg`
--
ALTER TABLE `eventreg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
