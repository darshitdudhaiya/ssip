-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2022 at 07:15 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssip`
--

-- --------------------------------------------------------

--
-- Table structure for table `colleges`
--

CREATE TABLE `colleges` (
  `id` int(11) NOT NULL,
  `c_name` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `number` int(11) NOT NULL,
  `a_number` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `district` varchar(250) NOT NULL,
  `university` varchar(250) NOT NULL,
  `c_image` varchar(250) NOT NULL,
  `description` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colleges`
--

INSERT INTO `colleges` (`id`, `c_name`, `date`, `number`, `a_number`, `email`, `address`, `state`, `district`, `university`, `c_image`, `description`) VALUES
(1, '\r\nCZMG BCA', '2022-10-04', 2147483647, 2147483647, 'info.czmgbca@oshwaleducationtrust.org', 'Shah Bhagvandji Kachrabhai Edu. Complex, Ahead of Oshwal Circle, Indira Gandhi Marg, Jamnagar - 361004.', 'Gujarat', 'Jamnagar', 'Saurastra University', '../upload/logo.png', 'Smt C.Z.M. Gosrani BCA College was set up with the point of giving quality advanced education in field computer science comparable to global standards. It tirelessly looks for and embraces imaginative techniques to improve the nature of advanced education on a reliable premise. The campus has a sound atmosphere with students from all sides of the country. Experienced and learned instructors are firmly urged to sustain the students. The worldwide norms set at CZMG in the field of showing prod us on in our determined quest for greatness. Indeed, it has become a lifestyle for us. The exceptionally energetic adolescents on the grounds are a steady wellspring of pride.');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `s_name` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `number` int(11) NOT NULL,
  `a_number` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `district` varchar(250) NOT NULL,
  `board` varchar(250) NOT NULL,
  `s_image` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `s_name`, `date`, `number`, `a_number`, `email`, `address`, `state`, `district`, `board`, `s_image`, `description`) VALUES
(1, 'Haria School', '2022-09-28', 1234567890, 1234567890, 'info@hariaschool.edu.in', 'Haria School Building, Indira Gandhi Marg, Ranjitnagar, Jamnagar - 361005', 'Gujarat', 'Jamnagar', 'Gujarat Board', '../upload/haria.jpg', 'The history of Shri.L.G. Haria School can be traced back some 40 years ago, on 4th December 1981 when it marked its first step with merely a strength of 250 students which has proliferated to approximately 2000 at present.'),
(2, 'Pranami School', '2022-09-28', 2147483647, 2147483647, ' info@pranamiglobalschool.net', 'Hirji Mistry Road\r\nJamnagar, Gujarat - 361005', 'Gujarat', 'Jamnagar', 'Gujarat Board', '../upload/pranami-global-school-jamnagar-pranami-global-school-06.jpg', 'Pranami Global School (PGS) is one of Fastest Growing Organization to be Centres of Excellence for Physical, Mental, Spiritual and Congenital Development of pupils in Jamnagar. '),
(4, 'Briliiant School', '2022-09-28', 2147483647, 2147483647, 'lns@gmail.com', 'asdfghm,./', 'Maharastra', 'Mumbai', 'Maharastra Board', '../upload/brilliant.jpg', 'Good School');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `sc_name` varchar(250) NOT NULL,
  `slms_no` int(11) NOT NULL,
  `slms_password` varchar(250) NOT NULL,
  `stud_name` varchar(250) NOT NULL,
  `f_name` varchar(250) NOT NULL,
  `m_name` varchar(250) NOT NULL,
  `f_occupation` varchar(250) NOT NULL,
  `m_occupation` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dob` date NOT NULL,
  `blood` varchar(4) NOT NULL,
  `number` int(11) NOT NULL,
  `a_number` int(11) NOT NULL,
  `adhar` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `remarks` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `district` varchar(250) NOT NULL,
  `board` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `sc_name`, `slms_no`, `slms_password`, `stud_name`, `f_name`, `m_name`, `f_occupation`, `m_occupation`, `email`, `dob`, `blood`, `number`, `a_number`, `adhar`, `class`, `remarks`, `state`, `district`, `board`, `image`) VALUES
(1, 'Haria School', 1001, '1001', 'Jhaveri Jeet Asheetbhai', 'Jhaveri Asheetbhai Mahendrabhai', 'Jhaveri Kavitaben Asheetbhai ', 'Business', 'House Wife', 'jhaverij16@gmail.com', '2003-10-06', 'o+', 2147483647, 2147483647, 0, 12, 'Good Student', 'Gujarat', 'Jamnagar', 'Gujarat Board', '../upload/stud1.jpg'),
(2, 'Haria School', 1002, '1002', 'stud', 'Studs Father', 'Studs Mother', 'Business', 'House Wife', 'stud@gmail.com', '2022-09-28', 'b+', 1234567987, 1234567894, 0, 10, 'Bad Student', 'Gujarat', 'Jamnagar', 'Gujarat Board', '../upload/stud2.jpg'),
(3, 'Briliiant School', 1003, '1003', 'Patel Jay Ajaybhai', 'Ajay bhai Patel', 'Pravina Ben', 'Business', 'House Wife', 'patel@gmail.com', '2022-09-28', 'o+', 1234567810, 2147483647, 0, 12, 'sdfghjk', 'Maharastra', 'Mumbai', 'Maharastra Board', '../upload/college-student-3500990__340.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_type` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `username`, `password`) VALUES
(1, 'Government Panel', 'admin', '123'),
(2, 'School Panel', 'school', '123'),
(3, 'College Panel', 'college', '123'),
(4, 'University Panel', 'uni', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colleges`
--
ALTER TABLE `colleges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colleges`
--
ALTER TABLE `colleges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
