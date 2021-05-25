-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 25, 2021 at 03:49 PM
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
-- Table structure for table `communications`
--

CREATE TABLE `communications` (
  `id` int(11) NOT NULL,
  `employees_one_id` int(11) NOT NULL,
  `employees_two_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `communications_messages_created_at_id`
--

CREATE TABLE `communications_messages_created_at_id` (
  `communications_id` int(11) NOT NULL,
  `messages_created_at_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `costumers`
--

CREATE TABLE `costumers` (
  `id` int(11) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `cvr_no` int(11) NOT NULL,
  `costumer_address` varchar(150) NOT NULL,
  `zip_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `costumers`
--

INSERT INTO `costumers` (`id`, `company_name`, `cvr_no`, `costumer_address`, `zip_code`) VALUES
(1, 'Icecream Shop', 21135732, 'Industrivej 27', 8000),
(2, 'Ben & Jerrys', 98315368, 'Rørlykkevej 13', 5000),
(3, 'Clausens Is', 53215834, 'Industrivej 10', 6400);

-- --------------------------------------------------------

--
-- Stand-in structure for view `costumers_overview`
-- (See below for the actual view)
--
CREATE TABLE `costumers_overview` (
`company_name` varchar(150)
,`cvr_no` int(11)
,`costumer_address` varchar(150)
,`zip_code` int(11)
,`city` varchar(100)
,`costumer_contact_first_name` varchar(100)
,`costumer_contact_last_name` varchar(100)
,`costumer_contact_email` varchar(200)
,`costumer_contact_phone_no` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `costumer_contacts`
--

CREATE TABLE `costumer_contacts` (
  `id` int(11) NOT NULL,
  `costumer_contact_first_name` varchar(100) NOT NULL,
  `costumer_contact_last_name` varchar(100) NOT NULL,
  `costumer_contact_phone_no` int(11) NOT NULL,
  `costumer_contact_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `costumer_contacts`
--

INSERT INTO `costumer_contacts` (`id`, `costumer_contact_first_name`, `costumer_contact_last_name`, `costumer_contact_phone_no`, `costumer_contact_email`) VALUES
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
(2, '2021-06-04', '2021-07-01 12:00:00'),
(3, '2021-07-01', '2021-07-03 12:00:00');

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
(2, 1, 5, 1),
(3, 2, 4, 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `deals_overview`
-- (See below for the actual view)
--
CREATE TABLE `deals_overview` (
`id` int(11)
,`company_name` varchar(150)
,`costumer_contact_first_name` varchar(100)
,`costumer_contact_last_name` varchar(100)
,`employee_first_name` varchar(100)
,`employee_last_name` varchar(100)
,`stage` varchar(50)
,`priority` varchar(50)
,`expected_due_date` date
,`deadline` datetime
);

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
(2, 1, 3),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_first_name` varchar(100) NOT NULL,
  `employee_last_name` varchar(100) NOT NULL,
  `employee_email` varchar(200) NOT NULL,
  `employee_phone_no` int(11) NOT NULL,
  `employee_address` varchar(150) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_first_name`, `employee_last_name`, `employee_email`, `employee_phone_no`, `employee_address`, `zip_code`, `password`) VALUES
(1, 'John', 'Johnson', 'johjoh@ice.com', 38176458, 'Jagtvej 23', 8000, '4567'),
(2, 'Jane', 'Doe', 'jd2@dk.dk', 43276352, 'Østerbro 3', 6000, '2345'),
(3, 'Bob', 'Ross', 'bobros@hotmail.com', 48232922, 'jernbanegade 90', 6400, '3456'),
(4, 'Christina', 'Aros', 'cema@arosson.dk', 34892911, 'Eventyrhaven 1', 5000, '5678'),
(5, 'Kenneth', 'Jepsen Clausen', 'kjcl@arosson.dk', 58391014, 'Føtex Balbro 22', 5000, '1111'),
(6, 'Cecilie', 'Lund', 'admin', 12345678, 'Blåvandsvej 1', 5000, 'admin');

-- --------------------------------------------------------

--
-- Stand-in structure for view `employees_overview`
-- (See below for the actual view)
--
CREATE TABLE `employees_overview` (
`employee_first_name` varchar(100)
,`employee_last_name` varchar(100)
,`role` varchar(50)
,`employee_email` varchar(200)
,`employee_phone_no` int(11)
,`employee_address` varchar(150)
,`zip_code` int(11)
,`city` varchar(100)
);

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
(5, 1),
(6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `messages_created_at`
--

CREATE TABLE `messages_created_at` (
  `id` int(11) NOT NULL,
  `message` varchar(3000) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `zip_code` int(11) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zip_codes`
--

INSERT INTO `zip_codes` (`zip_code`, `city`) VALUES
(5000, 'Odense C'),
(6000, 'Kolding'),
(6400, 'Sønderborg'),
(8000, 'Aarhus');

-- --------------------------------------------------------

--
-- Structure for view `costumers_overview`
--
DROP TABLE IF EXISTS `costumers_overview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `costumers_overview`  AS  select `costumers`.`company_name` AS `company_name`,`costumers`.`cvr_no` AS `cvr_no`,`costumers`.`costumer_address` AS `costumer_address`,`zip_codes`.`zip_code` AS `zip_code`,`zip_codes`.`city` AS `city`,`costumer_contacts`.`costumer_contact_first_name` AS `costumer_contact_first_name`,`costumer_contacts`.`costumer_contact_last_name` AS `costumer_contact_last_name`,`costumer_contacts`.`costumer_contact_email` AS `costumer_contact_email`,`costumer_contacts`.`costumer_contact_phone_no` AS `costumer_contact_phone_no` from (((`costumers` join `deals_costumers_employees_costumer_contacts` on((`deals_costumers_employees_costumer_contacts`.`costumers_id` = `costumers`.`id`))) join `costumer_contacts` on((`costumer_contacts`.`id` = `deals_costumers_employees_costumer_contacts`.`costumer_contacts_id`))) join `zip_codes` on((`costumers`.`zip_code` = `zip_codes`.`zip_code`))) order by `costumers`.`company_name` ;

-- --------------------------------------------------------

--
-- Structure for view `deals_overview`
--
DROP TABLE IF EXISTS `deals_overview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `deals_overview`  AS  select `deals`.`id` AS `id`,`costumers`.`company_name` AS `company_name`,`costumer_contacts`.`costumer_contact_first_name` AS `costumer_contact_first_name`,`costumer_contacts`.`costumer_contact_last_name` AS `costumer_contact_last_name`,`employees`.`employee_first_name` AS `employee_first_name`,`employees`.`employee_last_name` AS `employee_last_name`,`stages`.`stage` AS `stage`,`proritys`.`priority` AS `priority`,`deals`.`expected_due_date` AS `expected_due_date`,`deals`.`deadline` AS `deadline` from (((((((`deals` join `deals_costumers_employees_costumer_contacts` on((`deals`.`id` = `deals_costumers_employees_costumer_contacts`.`deals_id`))) join `costumers` on((`deals_costumers_employees_costumer_contacts`.`costumers_id` = `costumers`.`id`))) join `costumer_contacts` on((`deals_costumers_employees_costumer_contacts`.`costumer_contacts_id` = `costumer_contacts`.`id`))) join `employees` on((`deals_costumers_employees_costumer_contacts`.`employees_id` = `employees`.`id`))) join `deals_stages_prioritys` on((`deals`.`id` = `deals_stages_prioritys`.`deals_id`))) join `stages` on((`deals_stages_prioritys`.`stage_id` = `stages`.`id`))) join `proritys` on((`deals_stages_prioritys`.`priority_id` = `proritys`.`id`))) order by `deals`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `employees_overview`
--
DROP TABLE IF EXISTS `employees_overview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `employees_overview`  AS  select `employees`.`employee_first_name` AS `employee_first_name`,`employees`.`employee_last_name` AS `employee_last_name`,`roles`.`role` AS `role`,`employees`.`employee_email` AS `employee_email`,`employees`.`employee_phone_no` AS `employee_phone_no`,`employees`.`employee_address` AS `employee_address`,`zip_codes`.`zip_code` AS `zip_code`,`zip_codes`.`city` AS `city` from (((`employees` join `employees_roles` on((`employees`.`id` = `employees_roles`.`employee_id`))) join `roles` on((`roles`.`id` = `employees_roles`.`role_id`))) join `zip_codes` on((`employees`.`zip_code` = `zip_codes`.`zip_code`))) order by `employees`.`employee_first_name` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `communications`
--
ALTER TABLE `communications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_employees_employees_one_id` (`employees_one_id`),
  ADD KEY `fk_employees_employees_two_id` (`employees_two_id`);

--
-- Indexes for table `communications_messages_created_at_id`
--
ALTER TABLE `communications_messages_created_at_id`
  ADD KEY `fk_messages_created_at_messages_created_at_id` (`messages_created_at_id`),
  ADD KEY `fk_communications_communications_id` (`communications_id`);

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
  ADD UNIQUE KEY `email_UNIQUE` (`employee_email`),
  ADD KEY `fk_zip_codes_employess_idx` (`zip_code`);

--
-- Indexes for table `employees_roles`
--
ALTER TABLE `employees_roles`
  ADD KEY `fk_roles_role_id_idx` (`role_id`),
  ADD KEY `fk_employees_employes_id_idx` (`employee_id`);

--
-- Indexes for table `messages_created_at`
--
ALTER TABLE `messages_created_at`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`zip_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `communications`
--
ALTER TABLE `communications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages_created_at`
--
ALTER TABLE `messages_created_at`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `communications`
--
ALTER TABLE `communications`
  ADD CONSTRAINT `fk_employees_employees_one_id` FOREIGN KEY (`employees_one_id`) REFERENCES `employees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_employees_employees_two_id` FOREIGN KEY (`employees_two_id`) REFERENCES `employees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `communications_messages_created_at_id`
--
ALTER TABLE `communications_messages_created_at_id`
  ADD CONSTRAINT `fk_communications_communications_id` FOREIGN KEY (`communications_id`) REFERENCES `communications` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_messages_created_at_messages_created_at_id` FOREIGN KEY (`messages_created_at_id`) REFERENCES `messages_created_at` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `costumers`
--
ALTER TABLE `costumers`
  ADD CONSTRAINT `fk_zip_codes_costumers` FOREIGN KEY (`zip_code`) REFERENCES `zip_codes` (`zip_code`);

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
  ADD CONSTRAINT `fk_zip_codes_employess` FOREIGN KEY (`zip_code`) REFERENCES `zip_codes` (`zip_code`);

--
-- Constraints for table `employees_roles`
--
ALTER TABLE `employees_roles`
  ADD CONSTRAINT `fk_employees_employes_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `fk_roles_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
