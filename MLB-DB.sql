-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2023 at 04:43 PM
-- Server version: 10.3.38-MariaDB-0ubuntu0.20.04.1-log
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `CSC2212_S23_szito_db`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `AVGERAGEPAY`
-- (See below for the actual view)
--
CREATE TABLE `AVGERAGEPAY` (
`AVG BASE SALARY` varchar(63)
,`AVG PAYROLL SALARY` varchar(63)
,`AVG ADJ SALARY` varchar(63)
);

-- --------------------------------------------------------

--
-- Table structure for table `AWARD`
--

CREATE TABLE `AWARD` (
  `AWARD_ID` smallint NOT NULL,
  `AWARD_NAME` varchar(25) NOT NULL,
  `AWARD_DESC` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AWARD`
--

INSERT INTO `AWARD` (`AWARD_ID`, `AWARD_NAME`, `AWARD_DESC`) VALUES
(1, 'The Commissioner\'s Trophy', 'The winning team of the World Series'),
(2, 'World Series MVP', 'Contributes most to team\'s success during the WS'),
(3, 'NLCS MVP', 'Most impact on teams\' performances in NLCS\r\n'),
(4, 'ALCS MVP', 'Most impact on teams\' performances in ALCS\r\n'),
(5, 'Cy Young Award', 'The pitcher with the highest score in their league'),
(6, 'Gold Glove', 'Among the top fielders in both the AL and NL'),
(7, 'Silver Slugger', 'Top offensive player at their position in league');

-- --------------------------------------------------------

--
-- Stand-in structure for view `AWARD_CNT`
-- (See below for the actual view)
--
CREATE TABLE `AWARD_CNT` (
`TEAM_NAME` varchar(30)
,`2022 NON-MVP AWARDS` bigint
);

-- --------------------------------------------------------

--
-- Table structure for table `AWARD_EARNED_LINKING`
--

CREATE TABLE `AWARD_EARNED_LINKING` (
  `AWARD_EARNED_ID` smallint NOT NULL,
  `AWARD_2022_ID` smallint NOT NULL COMMENT 'Award Given',
  `EMP_ID` smallint DEFAULT NULL,
  `TEAM_ID` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `AWARD_EARNED_LINKING`
--

INSERT INTO `AWARD_EARNED_LINKING` (`AWARD_EARNED_ID`, `AWARD_2022_ID`, `EMP_ID`, `TEAM_ID`) VALUES
(1, 1, NULL, 1),
(2, 2, 32, 1),
(3, 3, 24, 2),
(4, 4, 32, 1),
(5, 5, 40, 1),
(6, 6, 35, 1),
(7, 6, 32, 1),
(8, 6, 23, 2),
(9, 7, 31, 1),
(10, 7, 23, 2),
(11, 7, 21, 2),
(12, 7, 33, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `BONUS_INCENTIVE`
-- (See below for the actual view)
--
CREATE TABLE `BONUS_INCENTIVE` (
`EMP_FNAME` varchar(30)
,`EMP_LNAME` varchar(30)
,`TEAM_NAME` varchar(30)
,`BONUS INCENTIVE` varchar(58)
);

-- --------------------------------------------------------

--
-- Table structure for table `COACH`
--

CREATE TABLE `COACH` (
  `EMP_ID` smallint NOT NULL,
  `COACH_TITLE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `COACH`
--

INSERT INTO `COACH` (`EMP_ID`, `COACH_TITLE`) VALUES
(1, 'Head Coach'),
(2, 'Head Coach'),
(3, 'Pitching Coach'),
(4, 'Assistant Catching Coach'),
(5, 'Major League Coach'),
(6, 'Assistant Hitting Coach'),
(7, 'Pitching Coach'),
(8, 'Third Base Coach'),
(9, 'Assistant Catching Coach'),
(10, 'Head Athletic Trainer'),
(11, 'Head Athletic Trainer'),
(12, 'Quality Assurance Coach'),
(13, 'Third Base Coach'),
(14, 'Bench Coach'),
(15, 'Hitting Coach'),
(16, 'Pitching Coach'),
(17, 'First Base Coach'),
(18, 'Hitting Coach'),
(19, 'Infield Coach'),
(20, 'Hitting Coach');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `EMP_ID` smallint NOT NULL,
  `EMP_FNAME` varchar(30) NOT NULL,
  `EMP_LNAME` varchar(30) NOT NULL,
  `EMP_JERSEY_NUM` tinyint DEFAULT NULL,
  `EMP_AGE` tinyint NOT NULL,
  `TEAM_ID` tinyint NOT NULL,
  `EMP_YRS_ON_TEAM` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`EMP_ID`, `EMP_FNAME`, `EMP_LNAME`, `EMP_JERSEY_NUM`, `EMP_AGE`, `TEAM_ID`, `EMP_YRS_ON_TEAM`) VALUES
(1, 'Dusty', 'Baker ', 12, 73, 1, 2),
(2, 'Rob', 'Thomson', 59, 59, 2, 4),
(3, 'Bill', 'Murphy', 95, 33, 1, 5),
(4, 'Brad', 'Flanders', 97, 41, 2, 1),
(5, 'Jason', 'Kanzler', 41, 32, 1, 4),
(6, 'Jason', 'Camilli', 91, 46, 2, 1),
(7, 'Joshua', 'Miller', 36, 44, 1, 11),
(8, 'Dusty', 'Wathan', 62, 49, 2, 4),
(9, 'Hector', 'Rabago', 98, 34, 2, 1),
(10, 'Jeremiah ', 'Randall ', NULL, 35, 1, 7),
(11, 'Scott ', 'Sheridan', NULL, 52, 2, 16),
(12, 'Dan', 'Firova', 54, 66, 1, 1),
(13, 'Gary', 'Pettis', 8, 63, 1, 7),
(14, 'Joe', 'Espada', 19, 47, 1, 4),
(15, 'Troy', 'Snitker', 46, 34, 1, 4),
(16, 'Caleb ', 'Cotham', 65, 35, 2, 2),
(17, 'Paco', 'Figueroa', 38, 40, 2, 3),
(18, 'Kevin', 'Long', 53, 56, 2, 1),
(19, 'Bobby', 'Dickerson', 9, 57, 2, 3),
(20, 'Alex', 'Cintron', 37, 44, 1, 5),
(21, 'Kyle', 'Schwarber', 12, 29, 2, 1),
(22, 'Rhys', 'Hoskins', 17, 29, 2, 5),
(23, 'Jacob', 'Realmuto', 10, 31, 2, 3),
(24, 'Bryce ', 'Harper', 3, 28, 2, 3),
(25, 'Nick', 'Castellanos', 8, 30, 2, 1),
(26, 'Alec', 'Bohm', 28, 25, 2, 2),
(27, 'Bryson', 'Stott', 5, 24, 2, 1),
(28, 'Jean', 'Segura', 2, 32, 2, 4),
(29, 'Brandon', 'Marsh', 16, 24, 2, 1),
(30, 'Aaron', 'Nola', 27, 28, 2, 7),
(31, 'Jose', 'Altuve', 27, 31, 1, 11),
(32, 'Jeremy', 'Peña', 3, 24, 1, 1),
(33, 'Yordan', 'Alvarez', 44, 24, 1, 3),
(34, 'Alex', 'Bregman', 2, 28, 1, 6),
(35, 'Kyle', 'Tucker', 30, 25, 1, 4),
(36, 'Yulieski', 'Gurriel', 10, 37, 1, 6),
(37, 'Trey', 'Mancini', 36, 30, 1, 1),
(38, 'Chas', 'McCormick', 20, 27, 1, 2),
(39, 'Martín', 'Maldonado', 15, 35, 1, 3),
(40, 'Justin', 'Verlander', 35, 39, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `LOCATION`
--

CREATE TABLE `LOCATION` (
  `WSGAME_NUM` smallint NOT NULL,
  `LOC_STADIUM_NAME` varchar(20) NOT NULL,
  `LOC_ADDRESS` varchar(50) NOT NULL,
  `LOC_CITY` varchar(20) NOT NULL,
  `LOC_STATE` char(2) NOT NULL,
  `LOC_SEAT_CAPAC` int NOT NULL,
  `TEAM_HOME_ID` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `LOCATION`
--

INSERT INTO `LOCATION` (`WSGAME_NUM`, `LOC_STADIUM_NAME`, `LOC_ADDRESS`, `LOC_CITY`, `LOC_STATE`, `LOC_SEAT_CAPAC`, `TEAM_HOME_ID`) VALUES
(1, 'Minute Maid Park', '501 Crawford St 77002', 'Houston', 'TX', 41000, 1),
(2, 'Minute Maid Park', '501 Crawford St 77002', 'Houston', 'TX', 41000, 1),
(3, 'Citizens Bank park', '1 Citizens Bank Way 19148', 'Philadelphia', 'PA', 42792, 2),
(4, 'Citizens Bank Park', '1 Citizens Bank Way 19148', 'Philadelphia', 'PA', 42792, 2),
(5, 'Citizens Bank Park', '1 Citizens Bank Way 19148', 'Philadelphia', 'PA', 42792, 2),
(6, 'Minute Maid Park', '501 Crawford St 77002', 'Houston', 'TX', 41000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `MANAGEMENT`
--

CREATE TABLE `MANAGEMENT` (
  `MGT_ID` smallint NOT NULL,
  `MGT_FNAME` varchar(50) NOT NULL,
  `MGT_LNAME` varchar(50) NOT NULL,
  `TEAM_ID` tinyint NOT NULL,
  `MGT_TITLE` varchar(50) NOT NULL,
  `MGT_DESC` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MANAGEMENT`
--

INSERT INTO `MANAGEMENT` (`MGT_ID`, `MGT_FNAME`, `MGT_LNAME`, `TEAM_ID`, `MGT_TITLE`, `MGT_DESC`) VALUES
(1, 'John', 'Middleton', 2, 'Managing Partner and Chief Executive Officer', NULL),
(2, 'David', 'Dombrowski', 2, 'President, Baseball Operations', NULL),
(3, 'David', 'Buck', 2, 'Executive Vice President', NULL),
(4, 'Bill', 'Giles', 2, 'Chairman Emeritus', NULL),
(5, 'John', 'Nickolas', 2, 'Senior Vice President & Chief Financial Officer', NULL),
(6, 'John', 'Weber', 2, 'Senior Vice President', 'Ticket Operations & Projects'),
(7, 'Jacqueline', 'Cuddeback', 2, 'Senior Vice President', 'Partnership Sales & Corporate Marketing'),
(8, 'Adele', 'MacDonald', 2, 'Manager, Executive Office', NULL),
(9, 'Jim', 'Crane', 1, 'Owner and Chairman', NULL),
(10, 'Creighton', 'Kahoalii', 1, 'Senior Vice President', 'Affiliate Business Operations'),
(11, 'Marcel', 'Braithwaite', 1, 'Senior Vice President', 'Business Operations'),
(12, 'Michael', 'Slaughter', 1, 'Senior Vice President', 'Chief Financial Officer'),
(13, 'Paula', 'Harris', 1, 'Senior Vice President', 'Executive Director, Astros Foundation'),
(14, 'Matt', 'Brand', 1, 'Senior Vice President', 'Corporate Partnerships '),
(15, 'Jared', 'Crane', 1, 'Senior Vice President', 'Executive Operations'),
(16, 'Anita', 'Sehgal', 1, 'Senior Vice President', 'Marketing & Communications');

-- --------------------------------------------------------

--
-- Stand-in structure for view `MANAGEMENT_OPERATIONS`
-- (See below for the actual view)
--
CREATE TABLE `MANAGEMENT_OPERATIONS` (
`MGT_LNAME` varchar(50)
,`MGT_FNAME` varchar(50)
,`MGT_TITLE` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `PAYROLL`
--

CREATE TABLE `PAYROLL` (
  `EMP_ID` smallint NOT NULL,
  `PAY_BASE_SAL` int NOT NULL,
  `PAY_PAYROLL_SAL` int NOT NULL,
  `PAY_ADJ_SAL` int NOT NULL,
  `PAY_PERCENT` decimal(5,2) NOT NULL,
  `PAY_LUX_TAX_SAL` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PAYROLL`
--

INSERT INTO `PAYROLL` (`EMP_ID`, `PAY_BASE_SAL`, `PAY_PAYROLL_SAL`, `PAY_ADJ_SAL`, `PAY_PERCENT`, `PAY_LUX_TAX_SAL`) VALUES
(21, 19000000, 19000000, 19000000, '7.77', 19750000),
(22, 7700000, 7700000, 7700000, '3.15', 7700000),
(23, 23875000, 23875000, 23875000, '9.77', 23100000),
(24, 26000000, 27638462, 27638462, '11.30', 25384615),
(25, 20000000, 20000000, 20000000, '8.18', 20000000),
(26, 715000, 715000, 715000, '0.29', 715000),
(27, 700000, 700000, 669204, '0.27', 669204),
(28, 14250000, 14850000, 14850000, '6.07', 14000000),
(29, 710000, 710000, 249664, '0.10', 249664),
(30, 15000000, 15500000, 15500000, '6.34', 11250000),
(31, 26000000, 29000000, 29000000, '15.78', 23357143),
(32, 700000, 700000, 700000, '0.38', 700000),
(33, 764600, 764600, 764600, '0.42', 764600),
(34, 11000000, 13000000, 13000000, '7.07', 20000000),
(35, 764200, 764200, 764200, '0.42', 764200),
(36, 8000000, 8000000, 8000000, '4.35', 8000000),
(37, 7500000, 7500000, 2678585, '1.46', 2928585),
(38, 703800, 703800, 696060, '0.38', 696060),
(39, 5000000, 5000000, 5000000, '2.72', 4500000),
(40, 25000000, 25000000, 25000000, '13.60', 25000000);

-- --------------------------------------------------------

--
-- Table structure for table `PLAYER`
--

CREATE TABLE `PLAYER` (
  `EMP_ID` smallint NOT NULL,
  `PLAY_STATUS` varchar(7) NOT NULL,
  `PLAY_POS` varchar(2) NOT NULL,
  `PLAY_START_BAT_ORDER` tinyint DEFAULT NULL,
  `PLAY_BAT_AVG` decimal(4,3) DEFAULT NULL,
  `PLAY_R/L_HAND` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PLAYER`
--

INSERT INTO `PLAYER` (`EMP_ID`, `PLAY_STATUS`, `PLAY_POS`, `PLAY_START_BAT_ORDER`, `PLAY_BAT_AVG`, `PLAY_R/L_HAND`) VALUES
(21, 'Vet', 'LF', 1, '0.218', 'LHB'),
(22, 'Arb 2', '1B', 2, '0.246', 'RHB'),
(23, 'Vet', 'C', 3, '0.276', 'RHB'),
(24, 'Vet', 'DH', 4, '0.287', 'LHB'),
(25, 'Vet', 'RF', 5, '0.263', 'RHB'),
(26, 'Pre-Arb', '3B', 6, '0.280', 'RHB'),
(27, 'Pre-Arb', 'SS', 7, '0.234', 'LHB'),
(28, 'Vet', '2B', 8, '0.277', 'RHB'),
(29, 'Pre-Arb', 'CF', 9, '0.245', 'LHB'),
(30, 'Vet', 'SP', NULL, NULL, 'RHP'),
(31, 'Vet', '2B', 1, '0.300', 'RHB'),
(32, 'Pre-Arb', 'SS', 2, '0.253', 'RHB'),
(33, 'Pre-Arb', 'LF', 3, '0.306', 'LHB'),
(34, 'Vet', '3B', 4, '0.259', 'RHB'),
(35, 'Pre-Arb', 'RF', 5, '0.257', 'LHB'),
(36, 'Vet', '1B', 6, '0.242', 'RHB'),
(37, 'Vet', 'DH', 7, '0.239', 'RHB'),
(38, 'Pre-Arb', 'CF', 8, '0.245', 'RHB'),
(39, 'Vet', 'C', 9, '0.186', 'RHB'),
(40, 'Vet', 'SP', NULL, NULL, 'RHP');

-- --------------------------------------------------------

--
-- Stand-in structure for view `PLAYERSTEAM`
-- (See below for the actual view)
--
CREATE TABLE `PLAYERSTEAM` (
`EMP_FNAME` varchar(30)
,`EMP_LNAME` varchar(30)
,`PLAY_POS` varchar(2)
,`TEAM_NAME` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `SEATS_TICKETS`
-- (See below for the actual view)
--
CREATE TABLE `SEATS_TICKETS` (
`WSGAME_NUM` smallint
,`WSG_DATE` date
,`TICK_TOTAL_SOLD` int
,`LOC_SEAT_CAPAC` int
,`LOC_STADIUM_NAME` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `SPONSOR`
--

CREATE TABLE `SPONSOR` (
  `SPONS_ID` smallint NOT NULL,
  `SPONS_BRAND_NAME` varchar(50) NOT NULL,
  `SPONS_MAIN_INDUSTRY` varchar(50) DEFAULT NULL,
  `SPONS_YRS_SPONSORED` smallint NOT NULL,
  `TEAM_ID` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SPONSOR`
--

INSERT INTO `SPONSOR` (`SPONS_ID`, `SPONS_BRAND_NAME`, `SPONS_MAIN_INDUSTRY`, `SPONS_YRS_SPONSORED`, `TEAM_ID`) VALUES
(1008, 'Minute Maid (Park)', 'Lemonade', 21, 1),
(1009, 'Citizens Bank (Park) ', 'Bank', 25, 2),
(1010, 'Therabody', 'Theragun', 2, 2),
(1011, 'LifeBrand', 'Social Media Security', 2, 2),
(1012, 'BayCare Health', 'Non-Profit Health Care', 2, 2),
(1013, 'University of Sciences', 'Education', 4, 2),
(1014, 'Occidental Petroleum', 'Oil', 1, 1),
(1015, 'Calpine', 'Energy from Natural Gas', 11, 1),
(1016, 'Cheniere', 'Natural Gas', 3, 1),
(1017, 'Chevron', 'Gasoline', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `TEAM`
--

CREATE TABLE `TEAM` (
  `TEAM_ID` tinyint NOT NULL,
  `TEAM_NAME` varchar(30) NOT NULL,
  `TEAM_SEASON_RANK` smallint NOT NULL,
  `TEAM_SEASON_REC` varchar(6) NOT NULL,
  `TEAM_LEAGUE` varchar(2) NOT NULL,
  `TEAM_DIVISION` varchar(7) NOT NULL,
  `TEAM_STATE` char(2) NOT NULL,
  `TEAM_CITY` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `TEAM`
--

INSERT INTO `TEAM` (`TEAM_ID`, `TEAM_NAME`, `TEAM_SEASON_RANK`, `TEAM_SEASON_REC`, `TEAM_LEAGUE`, `TEAM_DIVISION`, `TEAM_STATE`, `TEAM_CITY`) VALUES
(1, 'Astros', 1, '106-56', 'AL', 'West', 'TX', 'Houston'),
(2, 'Phillies', 3, '87-75', 'NL', 'East', 'PA', 'Phillidelphia');

-- --------------------------------------------------------

--
-- Stand-in structure for view `TEAM_PAYROLL_SUM`
-- (See below for the actual view)
--
CREATE TABLE `TEAM_PAYROLL_SUM` (
`TEAM_NAME` varchar(30)
,`TEAM SUM` varchar(86)
);

-- --------------------------------------------------------

--
-- Table structure for table `TICKET`
--

CREATE TABLE `TICKET` (
  `WSGAME_NUM` smallint NOT NULL,
  `TICK_TOTAL_SOLD` int NOT NULL,
  `TICK_AVG_PRICE` smallint NOT NULL,
  `TICK_MIN_ENTRY_PRICE` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `TICKET`
--

INSERT INTO `TICKET` (`WSGAME_NUM`, `TICK_TOTAL_SOLD`, `TICK_AVG_PRICE`, `TICK_MIN_ENTRY_PRICE`) VALUES
(1, 41000, 1333, 514),
(2, 41000, 1176, 656),
(3, 42792, 2510, 1073),
(4, 42792, 2779, 1428),
(5, 42792, 2669, 1256),
(6, 41000, 1909, 822);

-- --------------------------------------------------------

--
-- Stand-in structure for view `TOPTHREE`
-- (See below for the actual view)
--
CREATE TABLE `TOPTHREE` (
`WSGAME_NUM` smallint
,`VC_TOTAL_VIEWS` varchar(55)
,`TEAM_WINNER_ID` tinyint
);

-- --------------------------------------------------------

--
-- Table structure for table `TRANSPORTATION`
--

CREATE TABLE `TRANSPORTATION` (
  `TRANSPORT_ID` tinyint NOT NULL,
  `TRANSPORT_NAME` varchar(20) NOT NULL,
  `TRANSPORT_TYPE` varchar(50) NOT NULL,
  `TEAM_ID` tinyint NOT NULL,
  `TRANSPORT_MAX_CAPACITY` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `TRANSPORTATION`
--

INSERT INTO `TRANSPORTATION` (`TRANSPORT_ID`, `TRANSPORT_NAME`, `TRANSPORT_TYPE`, `TEAM_ID`, `TRANSPORT_MAX_CAPACITY`) VALUES
(1, 'United 2509', 'Charter Plane', 2, 20),
(2, 'United 2500', 'Charter Plane', 1, 20),
(3, 'Phanatic Bus', 'Charter Bus', 2, 57),
(4, 'Astro Bus', 'Charter Bus', 1, 57),
(5, 'FR_PHIL', 'Commercial Plane', 2, 400),
(6, 'FR_ASTRO', 'Commercial Plane', 1, 400),
(7, 'BR_PHIL', 'Commercial Bus', 2, 56),
(8, 'BR_ASTRO', 'Commercial Bus', 1, 56);

-- --------------------------------------------------------

--
-- Table structure for table `UMPIRE`
--

CREATE TABLE `UMPIRE` (
  `UMP_ID` tinyint NOT NULL,
  `UMP_FNAME` varchar(25) NOT NULL,
  `UMP_LNAME` varchar(25) NOT NULL,
  `UMP_AGE` tinyint NOT NULL,
  `UMP_START_POS` varchar(7) NOT NULL,
  `UMP_HP_GAME` tinyint DEFAULT NULL,
  `UMP_WS_CNT` tinyint NOT NULL,
  `UMP_LCS_CNT` tinyint NOT NULL,
  `UMP_DS_CNT` tinyint NOT NULL,
  `UMP_WC_CNT` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `UMPIRE`
--

INSERT INTO `UMPIRE` (`UMP_ID`, `UMP_FNAME`, `UMP_LNAME`, `UMP_AGE`, `UMP_START_POS`, `UMP_HP_GAME`, `UMP_WS_CNT`, `UMP_LCS_CNT`, `UMP_DS_CNT`, `UMP_WC_CNT`) VALUES
(1, 'James', 'Hoye', 52, 'HP', 1, 2, 3, 4, 4),
(2, 'Dan', 'Iassagna', 53, '1B', 3, 3, 6, 7, 3),
(3, 'Tripp', 'Gibson', 52, '2B', 4, 1, 1, 3, 3),
(4, 'Jordan', 'Baker', 41, '3B', 5, 1, 1, 2, 3),
(5, 'Lance', 'Barksdale', 56, 'LF', 6, 2, 3, 6, 3),
(6, 'Alan', 'Porter', 45, 'RF', NULL, 2, 3, 6, 3),
(7, 'Pat', 'Hoberg', 36, 'Reserve', 2, 1, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `UMP_GAME_LINKING`
--

CREATE TABLE `UMP_GAME_LINKING` (
  `GAME_UMP_ID` tinyint NOT NULL,
  `WSGAME_NUM` smallint NOT NULL,
  `UMP_ID` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `UMP_GAME_LINKING`
--

INSERT INTO `UMP_GAME_LINKING` (`GAME_UMP_ID`, `WSGAME_NUM`, `UMP_ID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 1, 2),
(8, 2, 2),
(9, 3, 2),
(10, 4, 2),
(11, 5, 2),
(12, 6, 2),
(13, 1, 3),
(14, 2, 3),
(15, 3, 3),
(16, 4, 3),
(17, 5, 3),
(18, 6, 3),
(19, 1, 4),
(20, 2, 4),
(21, 3, 4),
(22, 4, 4),
(23, 5, 4),
(24, 6, 4),
(25, 1, 5),
(26, 2, 5),
(27, 3, 5),
(28, 4, 5),
(29, 5, 5),
(30, 6, 5),
(31, 1, 6),
(32, 2, 6),
(33, 3, 6),
(34, 4, 6),
(35, 5, 6),
(36, 6, 6),
(37, 1, 7),
(38, 2, 7),
(39, 3, 7),
(40, 4, 7),
(41, 5, 7),
(42, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `VIEWCNT`
--

CREATE TABLE `VIEWCNT` (
  `WSGAME_NUM` smallint NOT NULL,
  `VC_TOTAL_VIEWS` int NOT NULL,
  `VC_HIGHEST_CHANNEL_VIEWS` varchar(20) NOT NULL,
  `VC_AVAIL_PLATFMS` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `VIEWCNT`
--

INSERT INTO `VIEWCNT` (`WSGAME_NUM`, `VC_TOTAL_VIEWS`, `VC_HIGHEST_CHANNEL_VIEWS`, `VC_AVAIL_PLATFMS`) VALUES
(1, 11480000, 'FOX', 'YoutubeTV, ESPN+, Hulu+Live, Sling,\r\nFubo, DirecTV'),
(2, 10790000, 'FOX', 'YoutubeTV, ESPN+, Hulu+Live, Sling,\r\nFubo, DirecTV'),
(3, 11160000, 'FOX', 'YoutubeTV, ESPN+, Hulu+Live, Sling,\r\nFubo, DirecTV'),
(4, 11810000, 'FOX', 'YoutubeTV, ESPN+, Hulu+Live, Sling,\r\nFubo, DirecTV'),
(5, 12770000, 'FOX', 'YoutubeTV, ESPN+, Hulu+Live, Sling,\r\nFubo, DirecTV'),
(6, 12870000, 'FOX', 'YoutubeTV, ESPN+, Hulu+Live, Sling,\r\nFubo, DirecTV');

-- --------------------------------------------------------

--
-- Table structure for table `WSGAME`
--

CREATE TABLE `WSGAME` (
  `WSGAME_NUM` smallint NOT NULL,
  `WSG_DATE` date NOT NULL,
  `TEAM_WINNER_ID` tinyint NOT NULL,
  `WSG_ASTROS_SCORE` tinyint NOT NULL,
  `WSG_PHILLIES_SCORE` tinyint NOT NULL,
  `WSG_RECORD` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `WSGAME`
--

INSERT INTO `WSGAME` (`WSGAME_NUM`, `WSG_DATE`, `TEAM_WINNER_ID`, `WSG_ASTROS_SCORE`, `WSG_PHILLIES_SCORE`, `WSG_RECORD`) VALUES
(1, '2022-10-28', 2, 5, 6, '0-1'),
(2, '2022-10-29', 1, 5, 2, '1-1'),
(3, '2022-11-01', 2, 0, 7, '1-2'),
(4, '2022-11-02', 1, 5, 0, '2-2'),
(5, '2022-11-03', 1, 3, 2, '3-2'),
(6, '2022-11-05', 1, 4, 1, '4-2');

-- --------------------------------------------------------

--
-- Table structure for table `WS_MATCHUP_LINKING`
--

CREATE TABLE `WS_MATCHUP_LINKING` (
  `MATCHUP_ID` smallint NOT NULL,
  `TEAM_ID` tinyint NOT NULL,
  `WSGAME_NUM` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `WS_MATCHUP_LINKING`
--

INSERT INTO `WS_MATCHUP_LINKING` (`MATCHUP_ID`, `TEAM_ID`, `WSGAME_NUM`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 1, 1),
(8, 1, 2),
(9, 1, 3),
(10, 1, 4),
(11, 1, 5),
(12, 1, 6);

-- --------------------------------------------------------

--
-- Structure for view `AVGERAGEPAY`
--
DROP TABLE IF EXISTS `AVGERAGEPAY`;

CREATE VIEW `AVGERAGEPAY`  AS  select concat('$',format(avg(`PAYROLL`.`PAY_BASE_SAL`),2)) AS `AVG BASE SALARY`,concat('$',format(avg(`PAYROLL`.`PAY_PAYROLL_SAL`),2)) AS `AVG PAYROLL SALARY`,concat('$',format(avg(`PAYROLL`.`PAY_ADJ_SAL`),2)) AS `AVG ADJ SALARY` from `PAYROLL` ;

-- --------------------------------------------------------

--
-- Structure for view `AWARD_CNT`
--
DROP TABLE IF EXISTS `AWARD_CNT`;

CREATE VIEW `AWARD_CNT`  AS  select `T`.`TEAM_NAME` AS `TEAM_NAME`,count(`A`.`AWARD_NAME`) AS `2022 NON-MVP AWARDS` from ((`AWARD` `A` join `AWARD_EARNED_LINKING` `AEL` on(`A`.`AWARD_ID` = `AEL`.`AWARD_2022_ID`)) join `TEAM` `T` on(`AEL`.`TEAM_ID` = `T`.`TEAM_ID`)) where NOT (`A`.`AWARD_NAME` in (select `AWARD`.`AWARD_NAME` from `AWARD` where `AWARD`.`AWARD_NAME` like '%MVP%')) group by `T`.`TEAM_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `BONUS_INCENTIVE`
--
DROP TABLE IF EXISTS `BONUS_INCENTIVE`;

CREATE VIEW `BONUS_INCENTIVE`  AS  select `E`.`EMP_FNAME` AS `EMP_FNAME`,`E`.`EMP_LNAME` AS `EMP_LNAME`,`T`.`TEAM_NAME` AS `TEAM_NAME`,concat('$',format(`P`.`PAY_PAYROLL_SAL` - `P`.`PAY_ADJ_SAL`,2)) AS `BONUS INCENTIVE` from ((`EMPLOYEE` `E` join `PAYROLL` `P` on(`E`.`EMP_ID` = `P`.`EMP_ID`)) join `TEAM` `T` on(`E`.`TEAM_ID` = `T`.`TEAM_ID`)) where `P`.`PAY_PAYROLL_SAL` <> `P`.`PAY_ADJ_SAL` order by `P`.`PAY_PAYROLL_SAL` - `P`.`PAY_ADJ_SAL` ;

-- --------------------------------------------------------

--
-- Structure for view `MANAGEMENT_OPERATIONS`
--
DROP TABLE IF EXISTS `MANAGEMENT_OPERATIONS`;

CREATE VIEW `MANAGEMENT_OPERATIONS`  AS  select `M`.`MGT_LNAME` AS `MGT_LNAME`,`M`.`MGT_FNAME` AS `MGT_FNAME`,`M`.`MGT_TITLE` AS `MGT_TITLE` from `MANAGEMENT` `M` where `M`.`TEAM_ID` = '1' and `M`.`MGT_DESC` like '%Operations' order by `M`.`MGT_LNAME` ;

-- --------------------------------------------------------

--
-- Structure for view `PLAYERSTEAM`
--
DROP TABLE IF EXISTS `PLAYERSTEAM`;

CREATE VIEW `PLAYERSTEAM`  AS  select `E`.`EMP_FNAME` AS `EMP_FNAME`,`E`.`EMP_LNAME` AS `EMP_LNAME`,`P`.`PLAY_POS` AS `PLAY_POS`,`T`.`TEAM_NAME` AS `TEAM_NAME` from ((`TEAM` `T` join `EMPLOYEE` `E` on(`T`.`TEAM_ID` = `E`.`TEAM_ID`)) join `PLAYER` `P` on(`E`.`EMP_ID` = `P`.`EMP_ID`)) group by `E`.`EMP_ID` ;

-- --------------------------------------------------------

--
-- Structure for view `SEATS_TICKETS`
--
DROP TABLE IF EXISTS `SEATS_TICKETS`;

CREATE VIEW `SEATS_TICKETS`  AS  select `W`.`WSGAME_NUM` AS `WSGAME_NUM`,`W`.`WSG_DATE` AS `WSG_DATE`,`T`.`TICK_TOTAL_SOLD` AS `TICK_TOTAL_SOLD`,`L`.`LOC_SEAT_CAPAC` AS `LOC_SEAT_CAPAC`,`L`.`LOC_STADIUM_NAME` AS `LOC_STADIUM_NAME` from ((`TICKET` `T` join `WSGAME` `W` on(`T`.`WSGAME_NUM` = `W`.`WSGAME_NUM`)) join `LOCATION` `L` on(`W`.`WSGAME_NUM` = `L`.`WSGAME_NUM`)) group by `T`.`WSGAME_NUM` ;

-- --------------------------------------------------------

--
-- Structure for view `TEAM_PAYROLL_SUM`
--
DROP TABLE IF EXISTS `TEAM_PAYROLL_SUM`;

CREATE VIEW `TEAM_PAYROLL_SUM`  AS  select `T`.`TEAM_NAME` AS `TEAM_NAME`,concat('$',format(sum(`P`.`PAY_LUX_TAX_SAL`),2)) AS `TEAM SUM` from ((`PAYROLL` `P` join `EMPLOYEE` `E` on(`E`.`EMP_ID` = `P`.`EMP_ID`)) join `TEAM` `T` on(`E`.`TEAM_ID` = `T`.`TEAM_ID`)) group by `T`.`TEAM_NAME` ;

-- --------------------------------------------------------

--
-- Structure for view `TOPTHREE`
--
DROP TABLE IF EXISTS `TOPTHREE`;

CREATE VIEW `TOPTHREE`  AS  select `V`.`WSGAME_NUM` AS `WSGAME_NUM`,format(`V`.`VC_TOTAL_VIEWS`,2) AS `VC_TOTAL_VIEWS`,`W`.`TEAM_WINNER_ID` AS `TEAM_WINNER_ID` from (`VIEWCNT` `V` join `WSGAME` `W` on(`V`.`WSGAME_NUM` = `W`.`WSGAME_NUM`)) order by `V`.`VC_TOTAL_VIEWS` desc limit 3 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AWARD`
--
ALTER TABLE `AWARD`
  ADD PRIMARY KEY (`AWARD_ID`);

--
-- Indexes for table `AWARD_EARNED_LINKING`
--
ALTER TABLE `AWARD_EARNED_LINKING`
  ADD PRIMARY KEY (`AWARD_EARNED_ID`),
  ADD KEY `AWARD_GIVEN` (`AWARD_2022_ID`),
  ADD KEY `AWARD_PLAYER` (`EMP_ID`),
  ADD KEY `AWARD_TEAM` (`TEAM_ID`);

--
-- Indexes for table `COACH`
--
ALTER TABLE `COACH`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD UNIQUE KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD KEY `EMPTEAM_ID` (`TEAM_ID`);

--
-- Indexes for table `LOCATION`
--
ALTER TABLE `LOCATION`
  ADD PRIMARY KEY (`WSGAME_NUM`),
  ADD KEY `LOC_HOMETEAM` (`TEAM_HOME_ID`);

--
-- Indexes for table `MANAGEMENT`
--
ALTER TABLE `MANAGEMENT`
  ADD PRIMARY KEY (`MGT_ID`),
  ADD KEY `Team_Relation` (`TEAM_ID`);

--
-- Indexes for table `PAYROLL`
--
ALTER TABLE `PAYROLL`
  ADD PRIMARY KEY (`EMP_ID`);

--
-- Indexes for table `PLAYER`
--
ALTER TABLE `PLAYER`
  ADD PRIMARY KEY (`EMP_ID`),
  ADD KEY `EMP_ID` (`EMP_ID`);

--
-- Indexes for table `SPONSOR`
--
ALTER TABLE `SPONSOR`
  ADD PRIMARY KEY (`SPONS_ID`),
  ADD UNIQUE KEY `Sponsor_ID` (`SPONS_ID`),
  ADD KEY `SPONS_TEAM` (`TEAM_ID`);

--
-- Indexes for table `TEAM`
--
ALTER TABLE `TEAM`
  ADD PRIMARY KEY (`TEAM_ID`),
  ADD UNIQUE KEY `Team_ID` (`TEAM_ID`);

--
-- Indexes for table `TICKET`
--
ALTER TABLE `TICKET`
  ADD PRIMARY KEY (`WSGAME_NUM`);

--
-- Indexes for table `TRANSPORTATION`
--
ALTER TABLE `TRANSPORTATION`
  ADD PRIMARY KEY (`TRANSPORT_ID`),
  ADD KEY `Team_Association` (`TEAM_ID`);

--
-- Indexes for table `UMPIRE`
--
ALTER TABLE `UMPIRE`
  ADD PRIMARY KEY (`UMP_ID`);

--
-- Indexes for table `UMP_GAME_LINKING`
--
ALTER TABLE `UMP_GAME_LINKING`
  ADD PRIMARY KEY (`GAME_UMP_ID`),
  ADD KEY `GAME_UMP_LINK` (`UMP_ID`),
  ADD KEY `UMP_GAME` (`WSGAME_NUM`);

--
-- Indexes for table `VIEWCNT`
--
ALTER TABLE `VIEWCNT`
  ADD PRIMARY KEY (`WSGAME_NUM`);

--
-- Indexes for table `WSGAME`
--
ALTER TABLE `WSGAME`
  ADD PRIMARY KEY (`WSGAME_NUM`),
  ADD KEY `WSG_Winner_ID` (`TEAM_WINNER_ID`);

--
-- Indexes for table `WS_MATCHUP_LINKING`
--
ALTER TABLE `WS_MATCHUP_LINKING`
  ADD PRIMARY KEY (`MATCHUP_ID`),
  ADD KEY `Team_ID` (`TEAM_ID`),
  ADD KEY `Game_Number` (`WSGAME_NUM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AWARD`
--
ALTER TABLE `AWARD`
  MODIFY `AWARD_ID` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `AWARD_EARNED_LINKING`
--
ALTER TABLE `AWARD_EARNED_LINKING`
  MODIFY `AWARD_EARNED_ID` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  MODIFY `EMP_ID` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `MANAGEMENT`
--
ALTER TABLE `MANAGEMENT`
  MODIFY `MGT_ID` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `SPONSOR`
--
ALTER TABLE `SPONSOR`
  MODIFY `SPONS_ID` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1018;

--
-- AUTO_INCREMENT for table `TEAM`
--
ALTER TABLE `TEAM`
  MODIFY `TEAM_ID` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `TRANSPORTATION`
--
ALTER TABLE `TRANSPORTATION`
  MODIFY `TRANSPORT_ID` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `UMPIRE`
--
ALTER TABLE `UMPIRE`
  MODIFY `UMP_ID` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `UMP_GAME_LINKING`
--
ALTER TABLE `UMP_GAME_LINKING`
  MODIFY `GAME_UMP_ID` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `WSGAME`
--
ALTER TABLE `WSGAME`
  MODIFY `WSGAME_NUM` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `WS_MATCHUP_LINKING`
--
ALTER TABLE `WS_MATCHUP_LINKING`
  MODIFY `MATCHUP_ID` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AWARD_EARNED_LINKING`
--
ALTER TABLE `AWARD_EARNED_LINKING`
  ADD CONSTRAINT `AWARD_GIVEN` FOREIGN KEY (`AWARD_2022_ID`) REFERENCES `AWARD` (`AWARD_ID`),
  ADD CONSTRAINT `AWARD_PLAYER` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`),
  ADD CONSTRAINT `AWARD_TEAM` FOREIGN KEY (`TEAM_ID`) REFERENCES `TEAM` (`TEAM_ID`);

--
-- Constraints for table `COACH`
--
ALTER TABLE `COACH`
  ADD CONSTRAINT `COACH_EMP` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `EMPTEAM_ID` FOREIGN KEY (`TEAM_ID`) REFERENCES `TEAM` (`TEAM_ID`);

--
-- Constraints for table `LOCATION`
--
ALTER TABLE `LOCATION`
  ADD CONSTRAINT `GAME_LOC` FOREIGN KEY (`WSGAME_NUM`) REFERENCES `WSGAME` (`WSGAME_NUM`),
  ADD CONSTRAINT `LOC_HOMETEAM` FOREIGN KEY (`TEAM_HOME_ID`) REFERENCES `TEAM` (`TEAM_ID`);

--
-- Constraints for table `MANAGEMENT`
--
ALTER TABLE `MANAGEMENT`
  ADD CONSTRAINT `MANAGEMENT_ibfk_1` FOREIGN KEY (`TEAM_ID`) REFERENCES `TEAM` (`TEAM_ID`);

--
-- Constraints for table `PAYROLL`
--
ALTER TABLE `PAYROLL`
  ADD CONSTRAINT `PAY_EMP` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `PLAYER`
--
ALTER TABLE `PLAYER`
  ADD CONSTRAINT `PLAYER_EMP` FOREIGN KEY (`EMP_ID`) REFERENCES `EMPLOYEE` (`EMP_ID`);

--
-- Constraints for table `SPONSOR`
--
ALTER TABLE `SPONSOR`
  ADD CONSTRAINT `SPONS_TEAM` FOREIGN KEY (`TEAM_ID`) REFERENCES `TEAM` (`TEAM_ID`);

--
-- Constraints for table `TICKET`
--
ALTER TABLE `TICKET`
  ADD CONSTRAINT `TICKET_GAME` FOREIGN KEY (`WSGAME_NUM`) REFERENCES `WSGAME` (`WSGAME_NUM`);

--
-- Constraints for table `TRANSPORTATION`
--
ALTER TABLE `TRANSPORTATION`
  ADD CONSTRAINT `TRANSPORT_TEAMID` FOREIGN KEY (`TEAM_ID`) REFERENCES `TEAM` (`TEAM_ID`);

--
-- Constraints for table `UMP_GAME_LINKING`
--
ALTER TABLE `UMP_GAME_LINKING`
  ADD CONSTRAINT `GAME_UMP_LINK` FOREIGN KEY (`UMP_ID`) REFERENCES `UMPIRE` (`UMP_ID`),
  ADD CONSTRAINT `UMP_GAME` FOREIGN KEY (`WSGAME_NUM`) REFERENCES `WSGAME` (`WSGAME_NUM`);

--
-- Constraints for table `VIEWCNT`
--
ALTER TABLE `VIEWCNT`
  ADD CONSTRAINT `VIEW_GAME` FOREIGN KEY (`WSGAME_NUM`) REFERENCES `WSGAME` (`WSGAME_NUM`);

--
-- Constraints for table `WSGAME`
--
ALTER TABLE `WSGAME`
  ADD CONSTRAINT `WSGAME_TEAM` FOREIGN KEY (`TEAM_WINNER_ID`) REFERENCES `TEAM` (`TEAM_ID`);

--
-- Constraints for table `WS_MATCHUP_LINKING`
--
ALTER TABLE `WS_MATCHUP_LINKING`
  ADD CONSTRAINT `MATCHUP_TEAM` FOREIGN KEY (`TEAM_ID`) REFERENCES `TEAM` (`TEAM_ID`),
  ADD CONSTRAINT `MATCHUP_WSGAME` FOREIGN KEY (`WSGAME_NUM`) REFERENCES `WSGAME` (`WSGAME_NUM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
