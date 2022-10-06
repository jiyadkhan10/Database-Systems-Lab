-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 28, 2021 at 04:31 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `country_id` char(2) NOT NULL COMMENT 'TRIAL',
  `country_name` varchar(40) DEFAULT NULL COMMENT 'TRIAL',
  `region_id` double DEFAULT NULL COMMENT 'TRIAL',
  `trial307` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`country_id`),
  KEY `countr_reg_fk` (`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `region_id`, `trial307`) VALUES
('AR', 'Argentina', 2, 'T'),
('AU', 'Australia', 3, 'T'),
('BE', 'Belgium', 1, 'T'),
('BR', 'Brazil', 2, 'T'),
('CA', 'Canada', 2, 'T'),
('CH', 'Switzerland', 1, 'T'),
('CN', 'China', 3, 'T'),
('DE', 'Germany', 1, 'T'),
('DK', 'Denmark', 1, 'T'),
('EG', 'Egypt', 4, 'T'),
('FR', 'France', 1, 'T'),
('IL', 'Israel', 4, 'T'),
('IN', 'India', 3, 'T'),
('IT', 'Italy', 1, 'T'),
('JP', 'Japan', 3, 'T'),
('KW', 'Kuwait', 4, 'T'),
('ML', 'Malaysia', 3, 'T'),
('MX', 'Mexico', 2, 'T'),
('NG', 'Nigeria', 4, 'T'),
('NL', 'Netherlands', 1, 'T'),
('SG', 'Singapore', 3, 'T'),
('UK', 'United Kingdom', 1, 'T'),
('US', 'United States of America', 2, 'T'),
('ZM', 'Zambia', 4, 'T'),
('ZW', 'Zimbabwe', 4, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `department_id` decimal(4,0) NOT NULL COMMENT 'TRIAL',
  `department_name` varchar(30) NOT NULL COMMENT 'TRIAL',
  `manager_id` decimal(6,0) DEFAULT NULL COMMENT 'TRIAL',
  `location_id` decimal(4,0) DEFAULT NULL COMMENT 'TRIAL',
  `trial313` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`department_id`),
  KEY `dept_location_ix` (`location_id`),
  KEY `dept_mgr_fk` (`manager_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `manager_id`, `location_id`, `trial313`) VALUES
('10', 'Administration', '200', '1700', 'T'),
('20', 'Marketing', '201', '1800', 'T'),
('30', 'Purchasing', '114', '1700', 'T'),
('40', 'Human Resources', '203', '2400', 'T'),
('50', 'Shipping', '121', '1500', 'T'),
('60', 'IT', '103', '1400', 'T'),
('70', 'Public Relations', '204', '2700', 'T'),
('80', 'Sales', '145', '2500', 'T'),
('90', 'Executive', '100', '1700', 'T'),
('100', 'Finance', '108', '1700', 'T'),
('110', 'Accounting', '205', '1700', 'T'),
('120', 'Treasury', NULL, '1700', 'T'),
('130', 'Corporate Tax', NULL, '1700', 'T'),
('140', 'Control And Credit', NULL, '1700', 'T'),
('150', 'Shareholder Services', NULL, '1700', 'T'),
('160', 'Benefits', NULL, '1700', 'T'),
('170', 'Manufacturing', NULL, '1700', 'T'),
('180', 'Construction', NULL, '1700', 'T'),
('190', 'Contracting', NULL, '1700', 'T'),
('200', 'Operations', NULL, '1700', 'T'),
('210', 'IT Support', NULL, '1700', 'T'),
('220', 'NOC', NULL, '1700', 'T'),
('230', 'IT Helpdesk', NULL, '1700', 'T'),
('240', 'Government Sales', NULL, '1700', 'T'),
('250', 'Retail Sales', NULL, '1700', 'T'),
('260', 'Recruiting', NULL, '1700', 'T'),
('270', 'Payroll', NULL, '1700', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` decimal(6,0) NOT NULL COMMENT 'TRIAL',
  `first_name` varchar(20) DEFAULT NULL COMMENT 'TRIAL',
  `last_name` varchar(25) NOT NULL COMMENT 'TRIAL',
  `email` varchar(25) NOT NULL COMMENT 'TRIAL',
  `phone_number` varchar(20) DEFAULT NULL COMMENT 'TRIAL',
  `hire_date` datetime NOT NULL COMMENT 'TRIAL',
  `job_id` varchar(10) NOT NULL COMMENT 'TRIAL',
  `salary` decimal(8,2) DEFAULT NULL COMMENT 'TRIAL',
  `commission_pct` decimal(2,2) DEFAULT NULL COMMENT 'TRIAL',
  `manager_id` decimal(6,0) DEFAULT NULL COMMENT 'TRIAL',
  `department_id` decimal(4,0) DEFAULT NULL COMMENT 'TRIAL',
  `trial323` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `emp_email_uk` (`email`),
  KEY `emp_department_ix` (`department_id`),
  KEY `emp_job_ix` (`job_id`),
  KEY `emp_manager_ix` (`manager_id`),
  KEY `emp_name_ix` (`last_name`,`first_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `first_name`, `last_name`, `email`, `phone_number`, `hire_date`, `job_id`, `salary`, `commission_pct`, `manager_id`, `department_id`, `trial323`) VALUES
('198', 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '2007-06-21 00:00:00', 'SH_CLERK', '2600.00', NULL, '124', '50', 'T'),
('199', 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '2008-01-13 00:00:00', 'SH_CLERK', '2600.00', NULL, '124', '50', 'T'),
('200', 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '2003-09-17 00:00:00', 'AD_ASST', '4400.00', NULL, '101', '10', 'T'),
('201', 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '2004-02-17 00:00:00', 'MK_MAN', '13000.00', NULL, '100', '20', 'T'),
('202', 'Pat', 'Fay', 'PFAY', '603.123.6666', '2005-08-17 00:00:00', 'MK_REP', '6000.00', NULL, '201', '20', 'T'),
('203', 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '2002-06-07 00:00:00', 'HR_REP', '6500.00', NULL, '101', '40', 'T'),
('204', 'Hermann', 'Baer', 'HBAER', '515.123.8888', '2002-06-07 00:00:00', 'PR_REP', '10000.00', NULL, '101', '70', 'T'),
('205', 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '2002-06-07 00:00:00', 'AC_MGR', '12008.00', NULL, '101', '110', 'T'),
('206', 'William', 'Gietz', 'WGIETZ', '515.123.8181', '2002-06-07 00:00:00', 'AC_ACCOUNT', '8300.00', NULL, '205', '110', 'T'),
('100', 'Steven', 'King', 'SKING', '515.123.4567', '2003-06-17 00:00:00', 'AD_PRES', '24000.00', NULL, NULL, '90', 'T'),
('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '2005-09-21 00:00:00', 'AD_VP', '17000.00', NULL, '100', '90', 'T'),
('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '2001-01-13 00:00:00', 'AD_VP', '17000.00', NULL, '100', '90', 'T'),
('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '2006-01-03 00:00:00', 'IT_PROG', '9000.00', NULL, '102', '60', 'T'),
('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '2007-05-21 00:00:00', 'IT_PROG', '6000.00', NULL, '103', '60', 'T'),
('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', '2005-06-25 00:00:00', 'IT_PROG', '4800.00', NULL, '103', '60', 'T'),
('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '2006-02-05 00:00:00', 'IT_PROG', '4800.00', NULL, '103', '60', 'T'),
('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '2007-02-07 00:00:00', 'IT_PROG', '4200.00', NULL, '103', '60', 'T'),
('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '2002-08-17 00:00:00', 'FI_MGR', '12008.00', NULL, '101', '100', 'T'),
('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '2002-08-16 00:00:00', 'FI_ACCOUNT', '9000.00', NULL, '108', '100', 'T'),
('110', 'John', 'Chen', 'JCHEN', '515.124.4269', '2005-09-28 00:00:00', 'FI_ACCOUNT', '8200.00', NULL, '108', '100', 'T'),
('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '2005-09-30 00:00:00', 'FI_ACCOUNT', '7700.00', NULL, '108', '100', 'T'),
('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '2006-03-07 00:00:00', 'FI_ACCOUNT', '7800.00', NULL, '108', '100', 'T'),
('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', '2007-12-07 00:00:00', 'FI_ACCOUNT', '6900.00', NULL, '108', '100', 'T'),
('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '2002-12-07 00:00:00', 'PU_MAN', '11000.00', NULL, '100', '30', 'T'),
('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '2003-05-18 00:00:00', 'PU_CLERK', '3100.00', NULL, '114', '30', 'T'),
('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '2005-12-24 00:00:00', 'PU_CLERK', '2900.00', NULL, '114', '30', 'T'),
('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '2005-07-24 00:00:00', 'PU_CLERK', '2800.00', NULL, '114', '30', 'T'),
('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '2006-11-15 00:00:00', 'PU_CLERK', '2600.00', NULL, '114', '30', 'T'),
('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '2007-08-10 00:00:00', 'PU_CLERK', '2500.00', NULL, '114', '30', 'T'),
('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '2004-07-18 00:00:00', 'ST_MAN', '8000.00', NULL, '100', '50', 'T'),
('121', 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '2005-04-10 00:00:00', 'ST_MAN', '8200.00', NULL, '100', '50', 'T'),
('122', 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '2003-05-01 00:00:00', 'ST_MAN', '7900.00', NULL, '100', '50', 'T'),
('123', 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '2005-10-10 00:00:00', 'ST_MAN', '6500.00', NULL, '100', '50', 'T'),
('124', 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '2007-11-16 00:00:00', 'ST_MAN', '5800.00', NULL, '100', '50', 'T'),
('125', 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '2005-07-16 00:00:00', 'ST_CLERK', '3200.00', NULL, '120', '50', 'T'),
('126', 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '2006-09-28 00:00:00', 'ST_CLERK', '2700.00', NULL, '120', '50', 'T'),
('127', 'James', 'Landry', 'JLANDRY', '650.124.1334', '2007-01-14 00:00:00', 'ST_CLERK', '2400.00', NULL, '120', '50', 'T'),
('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '2008-03-08 00:00:00', 'ST_CLERK', '2200.00', NULL, '120', '50', 'T'),
('129', 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '2005-08-20 00:00:00', 'ST_CLERK', '3300.00', NULL, '121', '50', 'T'),
('130', 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '2005-10-30 00:00:00', 'ST_CLERK', '2800.00', NULL, '121', '50', 'T'),
('131', 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '2005-02-16 00:00:00', 'ST_CLERK', '2500.00', NULL, '121', '50', 'T'),
('132', 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '2007-04-10 00:00:00', 'ST_CLERK', '2100.00', NULL, '121', '50', 'T'),
('133', 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '2004-06-14 00:00:00', 'ST_CLERK', '3300.00', NULL, '122', '50', 'T'),
('134', 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '2006-08-26 00:00:00', 'ST_CLERK', '2900.00', NULL, '122', '50', 'T'),
('135', 'Ki', 'Gee', 'KGEE', '650.127.1734', '2007-12-12 00:00:00', 'ST_CLERK', '2400.00', NULL, '122', '50', 'T'),
('136', 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '2008-02-06 00:00:00', 'ST_CLERK', '2200.00', NULL, '122', '50', 'T'),
('137', 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '2003-07-14 00:00:00', 'ST_CLERK', '3600.00', NULL, '123', '50', 'T'),
('138', 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '2005-10-26 00:00:00', 'ST_CLERK', '3200.00', NULL, '123', '50', 'T'),
('139', 'John', 'Seo', 'JSEO', '650.121.2019', '2006-02-12 00:00:00', 'ST_CLERK', '2700.00', NULL, '123', '50', 'T'),
('140', 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '2006-04-06 00:00:00', 'ST_CLERK', '2500.00', NULL, '123', '50', 'T'),
('141', 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '2003-10-17 00:00:00', 'ST_CLERK', '3500.00', NULL, '124', '50', 'T'),
('142', 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '2005-01-29 00:00:00', 'ST_CLERK', '3100.00', NULL, '124', '50', 'T'),
('143', 'Randall', 'Matos', 'RMATOS', '650.121.2874', '2006-03-15 00:00:00', 'ST_CLERK', '2600.00', NULL, '124', '50', 'T'),
('144', 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '2006-07-09 00:00:00', 'ST_CLERK', '2500.00', NULL, '124', '50', 'T'),
('145', 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '2004-10-01 00:00:00', 'SA_MAN', '14000.00', '0.40', '100', '80', 'T'),
('146', 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '2005-01-05 00:00:00', 'SA_MAN', '13500.00', '0.30', '100', '80', 'T'),
('147', 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '2005-03-10 00:00:00', 'SA_MAN', '12000.00', '0.30', '100', '80', 'T'),
('148', 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '2007-10-15 00:00:00', 'SA_MAN', '11000.00', '0.30', '100', '80', 'T'),
('149', 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '2008-01-29 00:00:00', 'SA_MAN', '10500.00', '0.20', '100', '80', 'T'),
('150', 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '2005-01-30 00:00:00', 'SA_REP', '10000.00', '0.30', '145', '80', 'T'),
('151', 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '2005-03-24 00:00:00', 'SA_REP', '9500.00', '0.25', '145', '80', 'T'),
('152', 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '2005-08-20 00:00:00', 'SA_REP', '9000.00', '0.25', '145', '80', 'T'),
('153', 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '2006-03-30 00:00:00', 'SA_REP', '8000.00', '0.20', '145', '80', 'T'),
('154', 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '2006-12-09 00:00:00', 'SA_REP', '7500.00', '0.20', '145', '80', 'T'),
('155', 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '2007-11-23 00:00:00', 'SA_REP', '7000.00', '0.15', '145', '80', 'T'),
('156', 'Janette', 'King', 'JKING', '011.44.1345.429268', '2004-01-30 00:00:00', 'SA_REP', '10000.00', '0.35', '146', '80', 'T'),
('157', 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '2004-03-04 00:00:00', 'SA_REP', '9500.00', '0.35', '146', '80', 'T'),
('158', 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '2004-08-01 00:00:00', 'SA_REP', '9000.00', '0.35', '146', '80', 'T'),
('159', 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '2005-03-10 00:00:00', 'SA_REP', '8000.00', '0.30', '146', '80', 'T'),
('160', 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '2005-12-15 00:00:00', 'SA_REP', '7500.00', '0.30', '146', '80', 'T'),
('161', 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '2006-11-03 00:00:00', 'SA_REP', '7000.00', '0.25', '146', '80', 'T'),
('162', 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '2005-11-11 00:00:00', 'SA_REP', '10500.00', '0.25', '147', '80', 'T'),
('163', 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '2007-03-19 00:00:00', 'SA_REP', '9500.00', '0.15', '147', '80', 'T'),
('164', 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '2008-01-24 00:00:00', 'SA_REP', '7200.00', '0.10', '147', '80', 'T'),
('165', 'David', 'Lee', 'DLEE', '011.44.1346.529268', '2008-02-23 00:00:00', 'SA_REP', '6800.00', '0.10', '147', '80', 'T'),
('166', 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '2008-03-24 00:00:00', 'SA_REP', '6400.00', '0.10', '147', '80', 'T'),
('167', 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '2008-04-21 00:00:00', 'SA_REP', '6200.00', '0.10', '147', '80', 'T'),
('168', 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '2005-03-11 00:00:00', 'SA_REP', '11500.00', '0.25', '148', '80', 'T'),
('169', 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '2006-03-23 00:00:00', 'SA_REP', '10000.00', '0.20', '148', '80', 'T'),
('170', 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '2006-01-24 00:00:00', 'SA_REP', '9600.00', '0.20', '148', '80', 'T'),
('171', 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '2007-02-23 00:00:00', 'SA_REP', '7400.00', '0.15', '148', '80', 'T'),
('172', 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '2007-03-24 00:00:00', 'SA_REP', '7300.00', '0.15', '148', '80', 'T'),
('173', 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '2008-04-21 00:00:00', 'SA_REP', '6100.00', '0.10', '148', '80', 'T'),
('174', 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '2004-05-11 00:00:00', 'SA_REP', '11000.00', '0.30', '149', '80', 'T'),
('175', 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '2005-03-19 00:00:00', 'SA_REP', '8800.00', '0.25', '149', '80', 'T'),
('176', 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '2006-03-24 00:00:00', 'SA_REP', '8600.00', '0.20', '149', '80', 'T'),
('177', 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '2006-04-23 00:00:00', 'SA_REP', '8400.00', '0.20', '149', '80', 'T'),
('178', 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '2007-05-24 00:00:00', 'SA_REP', '7000.00', '0.15', '149', NULL, 'T'),
('179', 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '2008-01-04 00:00:00', 'SA_REP', '6200.00', '0.10', '149', '80', 'T'),
('180', 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '2006-01-24 00:00:00', 'SH_CLERK', '3200.00', NULL, '120', '50', 'T'),
('181', 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '2006-02-23 00:00:00', 'SH_CLERK', '3100.00', NULL, '120', '50', 'T'),
('182', 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '2007-06-21 00:00:00', 'SH_CLERK', '2500.00', NULL, '120', '50', 'T'),
('183', 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '2008-02-03 00:00:00', 'SH_CLERK', '2800.00', NULL, '120', '50', 'T'),
('184', 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '2004-01-27 00:00:00', 'SH_CLERK', '4200.00', NULL, '121', '50', 'T'),
('185', 'Alexis', 'Bull', 'ABULL', '650.509.2876', '2005-02-20 00:00:00', 'SH_CLERK', '4100.00', NULL, '121', '50', 'T'),
('186', 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '2006-06-24 00:00:00', 'SH_CLERK', '3400.00', NULL, '121', '50', 'T'),
('187', 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '2007-02-07 00:00:00', 'SH_CLERK', '3000.00', NULL, '121', '50', 'T'),
('188', 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '2005-06-14 00:00:00', 'SH_CLERK', '3800.00', NULL, '122', '50', 'T'),
('189', 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '2005-08-13 00:00:00', 'SH_CLERK', '3600.00', NULL, '122', '50', 'T'),
('190', 'Timothy', 'Gates', 'TGATES', '650.505.3876', '2006-07-11 00:00:00', 'SH_CLERK', '2900.00', NULL, '122', '50', 'T'),
('191', 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '2007-12-19 00:00:00', 'SH_CLERK', '2500.00', NULL, '122', '50', 'T'),
('192', 'Sarah', 'Bell', 'SBELL', '650.501.1876', '2004-02-04 00:00:00', 'SH_CLERK', '4000.00', NULL, '123', '50', 'T'),
('193', 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '2005-03-03 00:00:00', 'SH_CLERK', '3900.00', NULL, '123', '50', 'T'),
('194', 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '2006-07-01 00:00:00', 'SH_CLERK', '3200.00', NULL, '123', '50', 'T'),
('195', 'Vance', 'Jones', 'VJONES', '650.501.4876', '2007-03-17 00:00:00', 'SH_CLERK', '2800.00', NULL, '123', '50', 'T'),
('196', 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '2006-04-24 00:00:00', 'SH_CLERK', '3100.00', NULL, '124', '50', 'T'),
('197', 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '2006-05-23 00:00:00', 'SH_CLERK', '3000.00', NULL, '124', '50', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `job_id` varchar(10) NOT NULL COMMENT 'TRIAL',
  `job_title` varchar(35) NOT NULL COMMENT 'TRIAL',
  `min_salary` decimal(6,0) DEFAULT NULL COMMENT 'TRIAL',
  `max_salary` decimal(6,0) DEFAULT NULL COMMENT 'TRIAL',
  `trial329` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title`, `min_salary`, `max_salary`, `trial329`) VALUES
('AD_PRES', 'President', '20080', '40000', 'T'),
('AD_VP', 'Administration Vice President', '15000', '30000', 'T'),
('AD_ASST', 'Administration Assistant', '3000', '6000', 'T'),
('FI_MGR', 'Finance Manager', '8200', '16000', 'T'),
('FI_ACCOUNT', 'Accountant', '4200', '9000', 'T'),
('AC_MGR', 'Accounting Manager', '8200', '16000', 'T'),
('AC_ACCOUNT', 'Public Accountant', '4200', '9000', 'T'),
('SA_MAN', 'Sales Manager', '10000', '20080', 'T'),
('SA_REP', 'Sales Representative', '6000', '12008', 'T'),
('PU_MAN', 'Purchasing Manager', '8000', '15000', 'T'),
('PU_CLERK', 'Purchasing Clerk', '2500', '5500', 'T'),
('ST_MAN', 'Stock Manager', '5500', '8500', 'T'),
('ST_CLERK', 'Stock Clerk', '2008', '5000', 'T'),
('SH_CLERK', 'Shipping Clerk', '2500', '5500', 'T'),
('IT_PROG', 'Programmer', '4000', '10000', 'T'),
('MK_MAN', 'Marketing Manager', '9000', '15000', 'T'),
('MK_REP', 'Marketing Representative', '4000', '9000', 'T'),
('HR_REP', 'Human Resources Representative', '4000', '9000', 'T'),
('PR_REP', 'Public Relations Representative', '4500', '10500', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `job_history`
--

DROP TABLE IF EXISTS `job_history`;
CREATE TABLE IF NOT EXISTS `job_history` (
  `employee_id` decimal(6,0) NOT NULL COMMENT 'TRIAL',
  `start_date` datetime NOT NULL COMMENT 'TRIAL',
  `end_date` datetime NOT NULL COMMENT 'TRIAL',
  `job_id` varchar(10) NOT NULL COMMENT 'TRIAL',
  `department_id` decimal(4,0) DEFAULT NULL COMMENT 'TRIAL',
  `trial339` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`employee_id`,`start_date`),
  KEY `jhist_department_ix` (`department_id`),
  KEY `jhist_employee_ix` (`employee_id`),
  KEY `jhist_job_ix` (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Dumping data for table `job_history`
--

INSERT INTO `job_history` (`employee_id`, `start_date`, `end_date`, `job_id`, `department_id`, `trial339`) VALUES
('102', '2001-01-13 00:00:00', '2006-07-24 00:00:00', 'IT_PROG', '60', 'T'),
('101', '1997-09-21 00:00:00', '2001-10-27 00:00:00', 'AC_ACCOUNT', '110', 'T'),
('101', '2001-10-28 00:00:00', '2005-03-15 00:00:00', 'AC_MGR', '110', 'T'),
('201', '2004-02-17 00:00:00', '2007-12-19 00:00:00', 'MK_REP', '20', 'T'),
('114', '2006-03-24 00:00:00', '2007-12-31 00:00:00', 'ST_CLERK', '50', 'T'),
('122', '2007-01-01 00:00:00', '2007-12-31 00:00:00', 'ST_CLERK', '50', 'T'),
('200', '1995-09-17 00:00:00', '2001-06-17 00:00:00', 'AD_ASST', '90', 'T'),
('176', '2006-03-24 00:00:00', '2006-12-31 00:00:00', 'SA_REP', '80', 'T'),
('176', '2007-01-01 00:00:00', '2007-12-31 00:00:00', 'SA_MAN', '80', 'T'),
('200', '2002-07-01 00:00:00', '2006-12-31 00:00:00', 'AC_ACCOUNT', '90', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `location_id` decimal(4,0) NOT NULL COMMENT 'TRIAL',
  `street_address` varchar(40) DEFAULT NULL COMMENT 'TRIAL',
  `postal_code` varchar(12) DEFAULT NULL COMMENT 'TRIAL',
  `city` varchar(30) NOT NULL COMMENT 'TRIAL',
  `state_province` varchar(25) DEFAULT NULL COMMENT 'TRIAL',
  `country_id` char(2) DEFAULT NULL COMMENT 'TRIAL',
  `trial346` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`location_id`),
  KEY `loc_city_ix` (`city`),
  KEY `loc_country_ix` (`country_id`),
  KEY `loc_state_province_ix` (`state_province`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `street_address`, `postal_code`, `city`, `state_province`, `country_id`, `trial346`) VALUES
('1000', '1297 Via Cola di Rie', '00989', 'Roma', NULL, 'IT', 'T'),
('1100', '93091 Calle della Testa', '10934', 'Venice', NULL, 'IT', 'T'),
('1200', '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP', 'T'),
('1300', '9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP', 'T'),
('1400', '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US', 'T'),
('1500', '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US', 'T'),
('1600', '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US', 'T'),
('1700', '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US', 'T'),
('1800', '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA', 'T'),
('1900', '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA', 'T'),
('2000', '40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN', 'T'),
('2100', '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN', 'T'),
('2200', '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU', 'T'),
('2300', '198 Clementi North', '540198', 'Singapore', NULL, 'SG', 'T'),
('2400', '8204 Arthur St', NULL, 'London', NULL, 'UK', 'T'),
('2500', 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK', 'T'),
('2600', '9702 Chester Road', '09629850293', 'Stretford', 'Manchester', 'UK', 'T'),
('2700', 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE', 'T'),
('2800', 'Rua Frei Caneca 1360 ', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR', 'T'),
('2900', '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH', 'T'),
('3000', 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH', 'T'),
('3100', 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL', 'T'),
('3200', 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
CREATE TABLE IF NOT EXISTS `regions` (
  `region_id` double NOT NULL COMMENT 'TRIAL',
  `region_name` varchar(25) DEFAULT NULL COMMENT 'TRIAL',
  `trial356` char(1) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY (`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`region_id`, `region_name`, `trial356`) VALUES
(1, 'Europe', 'T'),
(2, 'Americas', 'T'),
(3, 'Asia', 'T'),
(4, 'Middle East and Africa', 'T');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
