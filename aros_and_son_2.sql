-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 21, 2021 at 11:13 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aros_and_son`
--

-- --------------------------------------------------------

--
-- Table structure for table `costumers`
--

CREATE TABLE `costumers` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `cvr_no` int(11) NOT NULL,
  `address` varchar(150) NOT NULL,
  `zip_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `costumers`
--

INSERT INTO `costumers` (`id`, `company_name`, `cvr_no`, `address`, `zip_code`) VALUES
(1, 'Icecream Shop', 21135732, 'Industrivej 27', 8000),
(2, 'Ben & Jerrys', 98315368, 'Rørlykkevej 13', 5000),
(3, 'Clausens Is', 53215834, 'Industrivej 10', 6400);

-- --------------------------------------------------------

--
-- Table structure for table `costumer_contacts`
--

CREATE TABLE `costumer_contacts` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `costumer_contacts`
--

INSERT INTO `costumer_contacts` (`id`, `first_name`, `last_name`, `phone_no`, `email`) VALUES
(1, 'John', 'Doe', 33221166, 'doejohn@myname.com'),
(2, 'Mike', 'Ross', 27612511, 'suits@seje.dk'),
(3, 'Lucy', 'Poppins', 40284198, 'lupo@jada.com');

-- --------------------------------------------------------

--
-- Table structure for table `deals`
--

CREATE TABLE `deals` (
  `id` int(11) NOT NULL,
  `expected_due_date` date NOT NULL,
  `deadline` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deals`
--

INSERT INTO `deals` (`id`, `expected_due_date`, `deadline`) VALUES
(1, '2021-05-31', '2021-06-30 12:00:00'),
(2, '2021-06-04', '2021-07-01 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `deals_costumers_employees_costumer_contacts`
--

CREATE TABLE `deals_costumers_employees_costumer_contacts` (
  `deals_id` int(11) NOT NULL,
  `costumers_id` int(11) NOT NULL,
  `employees_id` int(11) NOT NULL,
  `costumer_contacts_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deals_costumers_employees_costumer_contacts`
--

INSERT INTO `deals_costumers_employees_costumer_contacts` (`deals_id`, `costumers_id`, `employees_id`, `costumer_contacts_id`) VALUES
(1, 3, 3, 3),
(2, 1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deals_stages_prioritys`
--

CREATE TABLE `deals_stages_prioritys` (
  `deals_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `priority_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deals_stages_prioritys`
--

INSERT INTO `deals_stages_prioritys` (`deals_id`, `stage_id`, `priority_id`) VALUES
(1, 2, 2),
(2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `address` varchar(150) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `phone_no`, `address`, `zip_code`, `password`) VALUES
(1, 'John', 'Johnson', 'johjoh@ice.com', 38176458, 'Jagtvej 23', 8000, '4567'),
(2, 'Jane', 'Doe', 'jd2@dk.dk', 43276352, 'Østerbro 3', 6000, '2345'),
(3, 'Bob', 'Ross', 'bobros@hotmail.com', 48232922, 'jernbanegade 90', 6400, '3456'),
(4, 'Christina', 'Aros', 'cema@arosson.dk', 34892911, 'Eventyrhaven 1', 5000, '5678'),
(5, 'Kenneth', 'Jepsen Clausen', 'kjcl@arosson.dk', 58391014, 'Føtex Balbro 22', 5000, '1111');

-- --------------------------------------------------------

--
-- Table structure for table `employees_roles`
--

CREATE TABLE `employees_roles` (
  `employee_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees_roles`
--

INSERT INTO `employees_roles` (`employee_id`, `role_id`) VALUES
(3, 3),
(2, 2),
(1, 3),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proritys`
--

CREATE TABLE `proritys` (
  `id` int(11) NOT NULL,
  `priority` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proritys`
--

INSERT INTO `proritys` (`id`, `priority`) VALUES
(1, 'Lav'),
(2, 'Middel'),
(3, 'Høj');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'Medejer'),
(2, 'Mellemchef'),
(3, 'Medarbejder');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id` int(11) NOT NULL,
  `stage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id`, `stage`) VALUES
(1, 'To Do'),
(2, 'Doing'),
(3, 'Done');

-- --------------------------------------------------------

--
-- Table structure for table `zip_codes`
--

CREATE TABLE `zip_codes` (
  `zip_codes` int(11) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zip_codes`
--

INSERT INTO `zip_codes` (`zip_codes`, `city`) VALUES
(5000, 'Odense C'),
(6000, 'Kolding'),
(6400, 'Sønderborg'),
(8000, 'Aarhus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `costumers`
--
ALTER TABLE `costumers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_zip_codes_costumers_idx` (`zip_code`);

--
-- Indexes for table `costumer_contacts`
--
ALTER TABLE `costumer_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals`
--
ALTER TABLE `deals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deals_costumers_employees_costumer_contacts`
--
ALTER TABLE `deals_costumers_employees_costumer_contacts`
  ADD KEY `fk_deals_deals_id_idx` (`deals_id`) USING BTREE,
  ADD KEY `fk_costumer_contacts_costumer_contacts_id_idx` (`costumer_contacts_id`),
  ADD KEY `fk_costumers_costumers_id_idx` (`costumers_id`),
  ADD KEY `fk_employess_employees_id_idx` (`employees_id`);

--
-- Indexes for table `deals_stages_prioritys`
--
ALTER TABLE `deals_stages_prioritys`
  ADD KEY `fk_deals_deals_id_idx` (`deals_id`),
  ADD KEY `fk_stages_stages_id_idx` (`stage_id`),
  ADD KEY `fk_prioritys_prioritys_id_idx` (`priority_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_zip_codes_employess_idx` (`zip_code`);

--
-- Indexes for table `employees_roles`
--
ALTER TABLE `employees_roles`
  ADD KEY `fk_roles_role_id_idx` (`role_id`),
  ADD KEY `fk_employees_employes_id_idx` (`employee_id`);

--
-- Indexes for table `proritys`
--
ALTER TABLE `proritys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zip_codes`
--
ALTER TABLE `zip_codes`
  ADD PRIMARY KEY (`zip_codes`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `costumers`
--
ALTER TABLE `costumers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `costumer_contacts`
--
ALTER TABLE `costumer_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deals`
--
ALTER TABLE `deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `proritys`
--
ALTER TABLE `proritys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `costumers`
--
ALTER TABLE `costumers`
  ADD CONSTRAINT `fk_zip_codes_costumers` FOREIGN KEY (`zip_code`) REFERENCES `zip_codes` (`zip_codes`);

--
-- Constraints for table `deals_costumers_employees_costumer_contacts`
--
ALTER TABLE `deals_costumers_employees_costumer_contacts`
  ADD CONSTRAINT `fk_costumer_contacts_costumer_contacts_id_idx` FOREIGN KEY (`costumer_contacts_id`) REFERENCES `costumer_contacts` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_costumers_costumers_id_idx` FOREIGN KEY (`costumers_id`) REFERENCES `costumers` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_deals_deals_id_idx` FOREIGN KEY (`deals_id`) REFERENCES `deals` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_employess_employees_id_idx` FOREIGN KEY (`employees_id`) REFERENCES `employees` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `deals_stages_prioritys`
--
ALTER TABLE `deals_stages_prioritys`
  ADD CONSTRAINT `fk_deals_deals_id` FOREIGN KEY (`deals_id`) REFERENCES `deals` (`id`),
  ADD CONSTRAINT `fk_prioritys_prioritys_id` FOREIGN KEY (`priority_id`) REFERENCES `proritys` (`id`),
  ADD CONSTRAINT `fk_stages_stages_id` FOREIGN KEY (`stage_id`) REFERENCES `stages` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_zip_codes_employess` FOREIGN KEY (`zip_code`) REFERENCES `zip_codes` (`zip_codes`);

--
-- Constraints for table `employees_roles`
--
ALTER TABLE `employees_roles`
  ADD CONSTRAINT `fk_employees_employes_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `fk_roles_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
