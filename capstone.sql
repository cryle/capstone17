-- phpMyAdmin SQL Dump

-- version 5.2.0

-- https://www.phpmyadmin.net/

--

-- Host: 127.0.0.1

-- Generation Time: Apr 16, 2023 at 04:17 PM

-- Server version: 10.4.27-MariaDB

-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!40101 SET NAMES utf8mb4 */

;

--

-- Database: `capstone`

--

-- --------------------------------------------------------

--

-- Table structure for table `findings`

--

CREATE TABLE
    `findings` (
        `p_id_no` int(11) NOT NULL,
        `f_id` int(11) NOT NULL,
        `pr_findings_id` int(11) NOT NULL,
        `f_date` date NOT NULL DEFAULT current_timestamp(),
        `f_chief_complaint` varchar(255) NOT NULL,
        `f_physical_exam` varchar(255) NOT NULL,
        `f_diagnosis` varchar(255) NOT NULL,
        `f_bp` varchar(255) NOT NULL,
        `f_rr` varchar(255) NOT NULL,
        `f_cr` varchar(255) NOT NULL,
        `f_temp` varchar(255) NOT NULL,
        `f_wt` varchar(255) NOT NULL,
        `f_pr` varchar(255) NOT NULL,
        `f_med` varchar(255) NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--

-- Table structure for table `patient_record`

--

CREATE TABLE
    `patient_record` (
        `id_no` int(11) NOT NULL,
        `pr_id` int(11) NOT NULL,
        `pr_lname` varchar(20) NOT NULL,
        `pr_fname` varchar(20) NOT NULL,
        `pr_mname` varchar(20) NOT NULL,
        `pr_contact_no` varchar(255) NOT NULL,
        `pr_guardians_no` varchar(255) NOT NULL,
        `pr_grade` varchar(255) NOT NULL,
        `pr_section` varchar(255) NOT NULL,
        `pr_strand` varchar(255) NOT NULL,
        `pr_gender` varchar(20) NOT NULL,
        `pr_age` int(11) NOT NULL,
        `pr_province` varchar(255) NOT NULL,
        `pr_city` varchar(255) NOT NULL,
        `pr_barangay` varchar(255) NOT NULL,
        `pr_addrs` varchar(255) NOT NULL,
        `pr_date` date NOT NULL DEFAULT current_timestamp(),
        `pr_bdate` date NOT NULL
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--

-- Table structure for table `users`

--

CREATE TABLE
    `users` (
        `user_id` int(11) NOT NULL,
        `user_fname` varchar(255) NOT NULL,
        `user_lname` varchar(255) NOT NULL,
        `role` varchar(255) NOT NULL,
        `username` varchar(255) NOT NULL,
        `password` varchar(255) NOT NULL,
        `user_created` date NOT NULL DEFAULT current_timestamp()
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--

-- Dumping data for table `users`

--

INSERT INTO
    `users` (
        `user_id`,
        `user_fname`,
        `user_lname`,
        `role`,
        `username`,
        `password`,
        `user_created`
    )
VALUES (
        1,
        'Dharyll',
        'Cocos',
        'admin',
        'admin',
        'admin',
        '2023-04-16'
    ), (
        2,
        'Jay',
        'Jo',
        'nurse',
        'nurse',
        'nurse',
        '2023-04-16'
    );

--

-- Indexes for dumped tables

--

--

-- Indexes for table `findings`

--

ALTER TABLE `findings` ADD PRIMARY KEY (`f_id`);

--

-- Indexes for table `patient_record`

--

ALTER TABLE `patient_record` ADD PRIMARY KEY (`pr_id`);

--

-- Indexes for table `users`

--

ALTER TABLE `users` ADD PRIMARY KEY (`user_id`);

--

-- AUTO_INCREMENT for dumped tables

--

--

-- AUTO_INCREMENT for table `findings`

--

ALTER TABLE
    `findings` MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT for table `patient_record`

--

ALTER TABLE
    `patient_record` MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT;

--

-- AUTO_INCREMENT for table `users`

--

ALTER TABLE
    `users` MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 3;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;