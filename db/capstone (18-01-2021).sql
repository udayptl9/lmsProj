-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2021 at 02:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'jkev', '2013-11-18 15:25:33', 'Add Subject RIZAL'),
(2, 'jkev', '2013-11-18 15:27:08', 'Edit Subject RIZAL'),
(3, '', '2013-11-18 15:30:46', 'Edit Subject IS 221'),
(4, '', '2013-11-18 15:31:12', 'Edit Subject IS 222'),
(5, '', '2013-11-18 15:31:24', 'Edit Subject IS 223'),
(6, '', '2013-11-18 15:31:34', 'Edit Subject IS 224'),
(7, '', '2013-11-18 15:31:54', 'Edit Subject IS 227'),
(8, '', '2013-11-18 15:32:37', 'Add Subject IS 411B'),
(9, '', '2013-11-18 15:34:54', 'Edit User jkev'),
(10, 'jkev', '2014-01-17 13:26:18', 'Add User admin'),
(11, 'admin', '2020-12-21 08:37:51', 'Add Subject 1234'),
(12, '', '2020-12-29 10:06:14', 'Add School Year 2020-21(o)'),
(13, '', '2020-12-29 10:12:20', 'Add School Year 2020-21(e)'),
(14, '', '2020-12-29 10:13:51', 'Add School Year 2020-21(e)'),
(15, '', '2020-12-29 10:14:54', 'Add School Year 2019-2020'),
(16, 'admin', '2021-01-07 19:47:54', 'Add User udayptl9'),
(17, 'admin', '2021-01-07 20:13:58', 'Add User agasar123'),
(18, 'admin', '2021-01-07 20:42:21', 'Add User csAdmin'),
(19, 'csAdmin', '2021-01-18 00:14:22', 'Add Subject 22ee33'),
(20, 'csAdmin', '2021-01-18 13:14:56', 'Add Subject 19cs-098');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D'),
(89, 36, 'Right', 'A'),
(90, 36, 'Wrong', 'B'),
(91, 36, 'Wrong', 'C'),
(92, 36, 'Wrong', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `maxmarks` varchar(215) NOT NULL,
  `qmaxmarks` text NOT NULL,
  `status` int(11) NOT NULL,
  `deadline_date` varchar(220) NOT NULL,
  `deadline_time` varchar(220) NOT NULL,
  `auto_deadline` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `maxmarks`, `qmaxmarks`, `status`, `deadline_date`, `deadline_time`, `auto_deadline`) VALUES
(2, 'uploads/6843_File_Doc3.docx', '2013-10-11 01:24:32', 'fasfasf', 13, 36, 'Assignment number 1', '', '', 0, '', '', 0),
(3, 'uploads/3617_File_login.mdb', '2013-10-28 19:35:28', 'q', 9, 80, 'q', '', '', 0, '', '', 0),
(4, 'admin/uploads/7146_File_normalization.ppt', '2013-10-30 18:48:15', 'fsaf', 9, 95, 'fsaf', '', '', 0, '', '', 0),
(5, 'admin/uploads/7784_File_ABSTRACT.docx', '2013-10-30 18:48:33', 'fsaf', 9, 95, 'dsaf', '', '', 0, '', '', 0),
(6, 'admin/uploads/4536_File_ABSTRACT.docx', '2013-10-30 18:53:32', 'file', 9, 95, 'abstract', '', '', 0, '', '', 0),
(10, 'admin/uploads/2209_File_598378_543547629007198_436971088_n.jpg', '2013-11-01 13:13:18', 'fsafasf', 9, 95, 'Assignment#2', '', '', 0, '', '', 0),
(11, 'admin/uploads/1511_File_bootstrap.css', '2013-11-01 13:18:25', 'sdsa', 9, 95, 'css', '', '', 0, '', '', 0),
(12, 'admin/uploads/4309_File_new  2.txt', '2013-11-17 23:21:46', 'test', 12, 145, 'test', '', '', 0, '', '', 0),
(13, 'admin/uploads/5901_File_IS 112-Personal Productivity Using IS.doc', '2013-11-18 16:59:35', 'q', 12, 145, 'q', '', '', 0, '', '', 0),
(15, 'admin/uploads/7077_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:38:45', 'afs', 18, 159, 'dasf', '', '', 0, '', '', 0),
(16, 'admin/uploads/8470_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:39:19', 'test', 18, 160, 'assign1', '', '', 0, '', '', 0),
(17, 'admin/uploads/2840_File_IMG_0698.jpg', '2013-11-25 15:53:20', 'q', 12, 161, 'q', '', '', 0, '', '', 0),
(19, '', '2013-12-07 20:11:39', 'kevin test', 12, 162, '', '', '', 0, '', '', 0),
(20, '', '2013-12-07 20:26:43', 'dasddsd', 12, 145, '', '', '', 0, '', '', 0),
(21, '', '2013-12-07 20:26:43', 'dasddsd', 12, 162, '', '', '', 0, '', '', 0),
(22, '', '2013-12-07 20:27:18', 'dasffsafsaf', 12, 162, '', '', '', 0, '', '', 0),
(23, '', '2013-12-07 20:33:11', 'test', 12, 162, '', '', '', 0, '', '', 0),
(24, 'admin/uploads/7053_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:39:05', 'kevin', 12, 0, 'kevin', '', '', 0, '', '', 0),
(25, 'admin/uploads/2417_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:41:10', 'kevin', 12, 0, 'kevin', '', '', 0, '', '', 0),
(26, 'admin/uploads/8095_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:43:25', 'kevin', 12, 0, 'kevin', '', '', 0, '', '', 0),
(27, 'admin/uploads/4089_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:47:48', 'fasfafaf', 12, 0, 'fasf', '', '', 0, '', '', 0),
(28, 'admin/uploads/2948_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:48:59', 'dasdasd', 12, 0, 'dasd', '', '', 0, '', '', 0),
(29, 'admin/uploads/5971_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:50:47', 'dasdasd', 12, 0, 'dsad', '', '', 0, '', '', 0),
(30, 'admin/uploads/6926_File_Resume.docx', '2014-02-13 11:27:59', 'q', 12, 167, 'q', '', '', 0, '', '', 0),
(31, 'admin/uploads/8289_File_sample.pdf', '2020-12-21 09:56:48', 'asdasd', 9, 186, 'asdasd', '', '', 0, '', '', 0),
(32, 'admin/uploads/3292_File_JUNE-JULY-2017 - CS-min (1).pdf', '2020-12-30 10:35:42', 'adjsd', 111, 196, 'assign-1', '', '', 0, '', '', 0),
(33, 'admin/uploads/5950_File_Jan-2019.pdf', '2020-12-31 18:31:47', 'assignment', 9, 196, 'assignment', '', '', 1, '', '', 0),
(34, 'admin/uploads/5950_File_Jan-2019.pdf', '2020-12-31 18:31:47', 'assignment', 9, 198, 'assignment', '', '', 0, '', '', 0),
(35, 'admin/uploads/5366_File_Jan-2019.pdf', '2020-12-31 18:34:48', 'fadsr', 9, 196, 'maxmarks', '', '', 1, '', '', 0),
(36, 'admin/uploads/5366_File_Jan-2019.pdf', '2020-12-31 18:34:48', 'fadsr', 9, 198, 'maxmarks', '', '', 0, '', '', 0),
(37, 'admin/uploads/2281_File_Jan-2019.pdf', '2020-12-31 18:36:12', 'assign', 9, 196, 'assign', '', '', 1, '', '', 0),
(38, 'admin/uploads/6836_File_Jan-2019.pdf', '2020-12-31 18:38:46', 'daffafssaf', 9, 196, 'assign-1000', '100', '', 1, '', '', 0),
(39, 'admin/uploads/6836_File_Jan-2019.pdf', '2020-12-31 18:38:46', 'daffafssaf', 9, 198, 'assign-1000', '100', '', 0, '', '', 0),
(41, 'admin/uploads/1274_File_Jan-2019.pdf', '2020-12-31 18:52:38', 'sagu', 9, 196, 'sagu', '50', '', 1, '', '', 0),
(42, 'admin/uploads/9242_File_studentsSheet.xlsx', '2021-01-01 10:20:52', 'assign', 9, 196, 'assign', '100', '', 0, '', '', 0),
(43, 'admin/uploads/4020_File_studentsSheet.xlsx', '2021-01-01 10:57:35', 'sagar``````', 9, 196, 'sagar`', '100', '', 0, '', '', 0),
(44, 'admin/uploads/4020_File_studentsSheet.xlsx', '2021-01-01 10:57:35', 'sagar``````', 9, 198, 'sagar`', '100', '', 0, '', '', 0),
(45, 'admin/uploads/7926_File_studentsSheet.xlsx', '2021-01-01 11:29:20', 'dsssd', 9, 196, 'sdds', '100', '', 0, '', '', 0),
(46, 'admin/uploads/7926_File_studentsSheet.xlsx', '2021-01-01 11:29:20', 'dsssd', 9, 198, 'sdds', '100', '', 0, '', '', 0),
(47, 'admin/uploads/9677_File_studentsSheet.xlsx', '2021-01-01 11:42:29', 'sagu', 9, 196, 'sagu', '500', '', 0, '', '', 0),
(48, 'admin/uploads/9677_File_studentsSheet.xlsx', '2021-01-01 11:42:29', 'sagu', 9, 198, 'sagu', '500', '', 0, '', '', 0),
(49, 'admin/uploads/7363_File_studentsSheet.xlsx', '2021-01-01 11:45:36', 'qwerty', 9, 196, 'qwwqqw', '1000', '', 0, '', '', 0),
(50, 'admin/uploads/7363_File_studentsSheet.xlsx', '2021-01-01 11:45:36', 'qwerty', 9, 198, 'qwwqqw', '1000', '', 0, '', '', 0),
(51, 'admin/uploads/2908_File_studentsSheet.xlsx', '2021-01-01 11:47:24', 'trewq', 9, 196, 'qwertt', '1000', '', 0, '', '', 0),
(52, 'admin/uploads/2908_File_studentsSheet.xlsx', '2021-01-01 11:47:24', 'trewq', 9, 198, 'qwertt', '1000', '', 0, '', '', 0),
(53, 'admin/uploads/9472_File_studentsSheet.xlsx', '2021-01-01 11:57:43', 'ddddssss', 9, 196, 'sddddd', '500', '', 0, '', '', 0),
(54, 'admin/uploads/9472_File_studentsSheet.xlsx', '2021-01-01 11:57:43', 'ddddssss', 9, 198, 'sddddd', '500', '', 0, '', '', 0),
(55, 'admin/uploads/1847_File_studentsSheet.xlsx', '2021-01-01 12:22:52', 'hggg111', 9, 196, 'hgggg', '500', '', 0, '', '', 0),
(56, 'admin/uploads/1847_File_studentsSheet.xlsx', '2021-01-01 12:22:52', 'hggg111', 9, 198, 'hgggg', '500', '', 0, '', '', 0),
(57, 'admin/uploads/1316_File_add_class.php', '2021-01-07 16:31:00', 'jhj', 9, 196, 'jhg', '', '', 1, '', '', 0),
(58, 'admin/uploads/1316_File_add_class.php', '2021-01-07 16:31:01', 'jhj', 9, 198, 'jhg', '', '', 0, '', '', 0),
(59, 'admin/uploads/1316_File_add_class.php', '2021-01-07 16:31:01', 'jhj', 9, 207, 'jhg', '', '', 0, '', '', 0),
(60, 'admin/uploads/9961_File_pdkeaAO_NC071_2021_01_12_13_21_08.pdf', '2021-01-12 19:56:47', 'wwwwww', 9, 196, 'qqqqqq', '100', '{\"questions\":[{\"questionNo\":\"1\",\"queMaxMarks\":\"50\"},{\"questionNo\":\"2\",\"queMaxMarks\":\"50\"}]}', 1, '16/01/2021', '14:30', 1),
(61, 'admin/uploads/3527_File_unnamed.jpg', '2021-01-14 12:31:00', 'seses', 9, 196, 'deadline_date', '30', '{\"questions\":[{\"questionNo\":\"1\",\"queMaxMarks\":\"10\"}]}', 1, '15/01/2021', '14:30', 1),
(62, 'admin/uploads/3527_File_unnamed.jpg', '2021-01-14 12:31:00', 'seses', 9, 198, 'deadline_date', '30', '{\"questions\":[{\"questionNo\":\"1\",\"queMaxMarks\":\"10\"}]}', 1, '14/01/2021', '14:30', 0),
(65, 'admin/uploads/8870_File_excel_data (53).xls', '2021-01-18 11:50:26', 'updated', 9, 196, '18-01-2021', '50', '{\"questions\":[{\"questionNo\":\"1\",\"queMaxMarks\":\"25\"},{\"questionNo\":\"2\",\"queMaxMarks\":\"25\"}]}', 1, '18/01/2021', '14:50', 1),
(66, 'admin/uploads/8870_File_excel_data (53).xls', '2021-01-18 11:50:27', 'updated', 9, 198, '18-01-2021', '50', '{\"questions\":[{\"questionNo\":\"1\",\"queMaxMarks\":\"25\"},{\"questionNo\":\"2\",\"queMaxMarks\":\"25\"}]}', 0, '18/01/2021', '14:50', 1),
(67, 'admin/uploads/8870_File_excel_data (53).xls', '2021-01-18 11:50:27', 'updated', 9, 207, '18-01-2021', '50', '{\"questions\":[{\"questionNo\":\"1\",\"queMaxMarks\":\"25\"},{\"questionNo\":\"2\",\"queMaxMarks\":\"25\"}]}', 0, '18/01/2021', '14:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendence`
--

CREATE TABLE `attendence` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `teacher_class_id` varchar(220) NOT NULL,
  `date` varchar(255) NOT NULL,
  `attendence` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendence`
--

INSERT INTO `attendence` (`id`, `class_id`, `teacher_id`, `teacher_class_id`, `date`, `attendence`) VALUES
(11, 12, 9, '', '10/1/2021', '[{\"rollNo\":151,\"firstname\":\"Karyl June\",\"lastname\":\"Bacobo\",\"attendence\":1},{\"rollNo\":146,\"firstname\":\"Johnedel\",\"lastname\":\"Bauno\",\"attendence\":1},{\"rollNo\":157,\"firstname\":\"Ace John\",\"lastname\":\"Casuyon\",\"attendence\":1},{\"rollNo\":147,\"firstname\":\"Jerwin\",\"lastname\":\"Delos Reyes\",\"attendence\":1},{\"rollNo\":144,\"firstname\":\"Neovi\",\"lastname\":\"Devierte\",\"attendence\":1},{\"rollNo\":155,\"firstname\":\"Ma. Roxette\",\"lastname\":\"Infante\",\"attendence\":1},{\"rollNo\":134,\"firstname\":\"Victor Anthony\",\"lastname\":\"Jacobo\",\"attendence\":0},{\"rollNo\":143,\"firstname\":\"Danica\",\"lastname\":\"Lamis\",\"attendence\":1},{\"rollNo\":145,\"firstname\":\"Eril Pio\",\"lastname\":\"Mercado\",\"attendence\":1},{\"rollNo\":159,\"firstname\":\"Mary Ann\",\"lastname\":\"Panaguiton\",\"attendence\":1},{\"rollNo\":150,\"firstname\":\"Jethro\",\"lastname\":\"Pansales\",\"attendence\":1},{\"rollNo\":154,\"firstname\":\"Mae Ann\",\"lastname\":\"Panugaling\",\"attendence\":1},{\"rollNo\":158,\"firstname\":\"Rose Mae\",\"lastname\":\"Pido\",\"attendence\":1},{\"rollNo\":156,\"firstname\":\"Savrena Joy\",\"lastname\":\"Rael\",\"attendence\":1},{\"rollNo\":152,\"firstname\":\"Kristelle Shaine\",\"lastname\":\"Rubi\",\"attendence\":1},{\"rollNo\":149,\"firstname\":\"Jebson\",\"lastname\":\"Tordillos\",\"attendence\":1},{\"rollNo\":142,\"firstname\":\"Lee Ann\",\"lastname\":\"Vertucio\",\"attendence\":1},{\"rollNo\":148,\"firstname\":\"Jendrix\",\"lastname\":\"Victosa\",\"attendence\":0},{\"rollNo\":153,\"firstname\":\"Richelle\",\"lastname\":\"Villarmia\",\"attendence\":1}]'),
(12, 8, 9, '196', '12/1/2021', '[{\"rollNo\":137,\"firstname\":\"Wina Mae\",\"lastname\":\"Espenorio\",\"attendence\":1},{\"rollNo\":111,\"firstname\":\"Mark Dominic\",\"lastname\":\"Sayon\",\"attendence\":0}]'),
(13, 12, 9, '198', '12/1/2021', '[{\"rollNo\":151,\"firstname\":\"Karyl June\",\"lastname\":\"Bacobo\",\"attendence\":1},{\"rollNo\":146,\"firstname\":\"Johnedel\",\"lastname\":\"Bauno\",\"attendence\":1},{\"rollNo\":157,\"firstname\":\"Ace John\",\"lastname\":\"Casuyon\",\"attendence\":1},{\"rollNo\":147,\"firstname\":\"Jerwin\",\"lastname\":\"Delos Reyes\",\"attendence\":1},{\"rollNo\":144,\"firstname\":\"Neovi\",\"lastname\":\"Devierte\",\"attendence\":1},{\"rollNo\":155,\"firstname\":\"Ma. Roxette\",\"lastname\":\"Infante\",\"attendence\":1},{\"rollNo\":134,\"firstname\":\"Victor Anthony\",\"lastname\":\"Jacobo\",\"attendence\":0},{\"rollNo\":143,\"firstname\":\"Danica\",\"lastname\":\"Lamis\",\"attendence\":0},{\"rollNo\":145,\"firstname\":\"Eril Pio\",\"lastname\":\"Mercado\",\"attendence\":0},{\"rollNo\":159,\"firstname\":\"Mary Ann\",\"lastname\":\"Panaguiton\",\"attendence\":1},{\"rollNo\":150,\"firstname\":\"Jethro\",\"lastname\":\"Pansales\",\"attendence\":1},{\"rollNo\":154,\"firstname\":\"Mae Ann\",\"lastname\":\"Panugaling\",\"attendence\":1},{\"rollNo\":158,\"firstname\":\"Rose Mae\",\"lastname\":\"Pido\",\"attendence\":1},{\"rollNo\":156,\"firstname\":\"Savrena Joy\",\"lastname\":\"Rael\",\"attendence\":1},{\"rollNo\":152,\"firstname\":\"Kristelle Shaine\",\"lastname\":\"Rubi\",\"attendence\":1},{\"rollNo\":149,\"firstname\":\"Jebson\",\"lastname\":\"Tordillos\",\"attendence\":1},{\"rollNo\":142,\"firstname\":\"Lee Ann\",\"lastname\":\"Vertucio\",\"attendence\":1},{\"rollNo\":148,\"firstname\":\"Jendrix\",\"lastname\":\"Victosa\",\"attendence\":0},{\"rollNo\":153,\"firstname\":\"Richelle\",\"lastname\":\"Villarmia\",\"attendence\":1}]'),
(14, 8, 9, '196', '12/1/2021', '[{\"rollNo\":137,\"firstname\":\"Wina Mae\",\"lastname\":\"Espenorio\",\"attendence\":0},{\"rollNo\":111,\"firstname\":\"Mark Dominic\",\"lastname\":\"Sayon\",\"attendence\":0}]'),
(15, 8, 9, '207', '12/1/2021', '[{\"rollNo\":234,\"firstname\":\"Vishal\",\"lastname\":\"Agasar\",\"attendence\":1},{\"rollNo\":76,\"firstname\":\"Jamaica Mae\",\"lastname\":\"Alipe\",\"attendence\":1},{\"rollNo\":101,\"firstname\":\"Xenia Jane\",\"lastname\":\"Billones\",\"attendence\":1},{\"rollNo\":102,\"firstname\":\"Carell\",\"lastname\":\"Catuburan\",\"attendence\":1},{\"rollNo\":110,\"firstname\":\"Zyryn\",\"lastname\":\"Corugda\",\"attendence\":1},{\"rollNo\":103,\"firstname\":\"Jade\",\"lastname\":\"Gordoncillo\",\"attendence\":1},{\"rollNo\":105,\"firstname\":\"Neljie\",\"lastname\":\"Guirnela\",\"attendence\":1},{\"rollNo\":97,\"firstname\":\"Mary Joy\",\"lastname\":\"Lambosan\",\"attendence\":1},{\"rollNo\":113,\"firstname\":\"Clifford\",\"lastname\":\"Ledesma\",\"attendence\":1},{\"rollNo\":100,\"firstname\":\"Jamilah\",\"lastname\":\"Lonot\",\"attendence\":1},{\"rollNo\":98,\"firstname\":\"Christine Joy\",\"lastname\":\"Macaya\",\"attendence\":1},{\"rollNo\":99,\"firstname\":\"Ryan Teofilo\",\"lastname\":\"Malbata-an\",\"attendence\":0},{\"rollNo\":74,\"firstname\":\"Ma. Nonie\",\"lastname\":\"Mendoza\",\"attendence\":1},{\"rollNo\":71,\"firstname\":\"Noli\",\"lastname\":\"Mendoza\",\"attendence\":1},{\"rollNo\":96,\"firstname\":\"Glecy Marie\",\"lastname\":\"Navarosa\",\"attendence\":1},{\"rollNo\":75,\"firstname\":\"Miralyn\",\"lastname\":\"Pabalate\",\"attendence\":1},{\"rollNo\":94,\"firstname\":\"Leah Mae\",\"lastname\":\"Padilla\",\"attendence\":1},{\"rollNo\":106,\"firstname\":\"Razel\",\"lastname\":\"Palermo\",\"attendence\":1},{\"rollNo\":72,\"firstname\":\"Jayvon\",\"lastname\":\"Pig-ao\",\"attendence\":1},{\"rollNo\":95,\"firstname\":\"Ergin Joy\",\"lastname\":\"Satoc\",\"attendence\":1},{\"rollNo\":111,\"firstname\":\"Mark Dominic\",\"lastname\":\"Sayon\",\"attendence\":1},{\"rollNo\":112,\"firstname\":\"Raymond\",\"lastname\":\"Serion\",\"attendence\":1},{\"rollNo\":104,\"firstname\":\"Felix Kirby\",\"lastname\":\"Ubas\",\"attendence\":0},{\"rollNo\":73,\"firstname\":\"Stephanie\",\"lastname\":\"Villanueva\",\"attendence\":1}]'),
(16, 8, 9, '196', '22/01/2021', '[{\"rollNo\":137,\"firstname\":\"Wina Mae\",\"lastname\":\"Espenorio\",\"attendence\":1},{\"rollNo\":111,\"firstname\":\"Mark Dominic\",\"lastname\":\"Sayon\",\"attendence\":0}]'),
(17, 8, 9, '196', '14/01/2021', '[{\"rollNo\":137,\"firstname\":\"Wina Mae\",\"lastname\":\"Espenorio\",\"attendence\":1},{\"rollNo\":111,\"firstname\":\"Mark Dominic\",\"lastname\":\"Sayon\",\"attendence\":0}]'),
(18, 8, 9, '196', '28/01/2021', '[{\"rollNo\":137,\"firstname\":\"Wina Mae\",\"lastname\":\"Espenorio\",\"attendence\":1},{\"rollNo\":111,\"firstname\":\"Mark Dominic\",\"lastname\":\"Sayon\",\"attendence\":0}]'),
(19, 12, 9, '198', '15/1/2021', '[{\"rollNo\":151,\"firstname\":\"Karyl June\",\"lastname\":\"Bacobo\",\"attendence\":0},{\"rollNo\":146,\"firstname\":\"Johnedel\",\"lastname\":\"Bauno\",\"attendence\":1},{\"rollNo\":157,\"firstname\":\"Ace John\",\"lastname\":\"Casuyon\",\"attendence\":0},{\"rollNo\":147,\"firstname\":\"Jerwin\",\"lastname\":\"Delos Reyes\",\"attendence\":1},{\"rollNo\":144,\"firstname\":\"Neovi\",\"lastname\":\"Devierte\",\"attendence\":1},{\"rollNo\":155,\"firstname\":\"Ma. Roxette\",\"lastname\":\"Infante\",\"attendence\":1},{\"rollNo\":134,\"firstname\":\"Victor Anthony\",\"lastname\":\"Jacobo\",\"attendence\":1},{\"rollNo\":143,\"firstname\":\"Danica\",\"lastname\":\"Lamis\",\"attendence\":0},{\"rollNo\":145,\"firstname\":\"Eril Pio\",\"lastname\":\"Mercado\",\"attendence\":1},{\"rollNo\":159,\"firstname\":\"Mary Ann\",\"lastname\":\"Panaguiton\",\"attendence\":1},{\"rollNo\":150,\"firstname\":\"Jethro\",\"lastname\":\"Pansales\",\"attendence\":1},{\"rollNo\":154,\"firstname\":\"Mae Ann\",\"lastname\":\"Panugaling\",\"attendence\":1},{\"rollNo\":158,\"firstname\":\"Rose Mae\",\"lastname\":\"Pido\",\"attendence\":1},{\"rollNo\":156,\"firstname\":\"Savrena Joy\",\"lastname\":\"Rael\",\"attendence\":1},{\"rollNo\":152,\"firstname\":\"Kristelle Shaine\",\"lastname\":\"Rubi\",\"attendence\":1},{\"rollNo\":149,\"firstname\":\"Jebson\",\"lastname\":\"Tordillos\",\"attendence\":1},{\"rollNo\":142,\"firstname\":\"Lee Ann\",\"lastname\":\"Vertucio\",\"attendence\":1},{\"rollNo\":148,\"firstname\":\"Jendrix\",\"lastname\":\"Victosa\",\"attendence\":1},{\"rollNo\":153,\"firstname\":\"Richelle\",\"lastname\":\"Villarmia\",\"attendence\":1}]');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `did` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `did`) VALUES
(7, 'CS-3A', 4),
(8, 'CS-3B', 4),
(12, 'CS-4A', 4),
(13, 'CS-4B', 4),
(14, 'EC-3A', 5),
(15, 'EC-3B', 5),
(16, 'EC-4A', 5),
(17, 'EC-4B', 5),
(18, 'ME-3A', 9),
(19, 'ME-4b', 9),
(20, 'CV-3A', 10),
(21, 'CV-3B', 10),
(22, 'CV-4A', 10),
(23, 'CV-4B', 10),
(24, 'BSIT-1A', 0),
(25, 'ME-4A', 0),
(26, 'a', 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0),
(17, 186, 1800, 6),
(18, 151, 1200, 7),
(19, 152, 1200, 7),
(20, 153, 1200, 7);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 167, '<p>Chapter&nbsp; 1</p>\r\n\r\n<p>Cha</p>\r\n'),
(2, 196, '<p>kjhgkjhgkjh</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\r\n<span style=\"font-size:16px\"><strong>Mission</strong></span></pre>\r\n\r\n<p style=\"text-align:left\"><span style=\"font-family:arial,helvetica,sans-serif; font-size:medium\"><span style=\"font-size:large\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style=\"font-size:18px\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; A leading institution in higher and continuing education commited to engage in quality instruction, development-oriented research sustinable lucrative economic enterprise, and responsive extension and training services through relevant academic programs to empower a human resource that responds effectively to challenges in life and acts as catalyst in the holistoic development of a humane society.&nbsp;</span></p>\r\n\r\n<p style=\"text-align:left\">&nbsp;</p>\r\n'),
(2, 'Vision', '<pre><span style=\"font-size: large;\"><strong>Vision</strong></span></pre>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: large;\">&nbsp; Driven by its passion for continous improvement, the State College has to vigorously pursue distinction and proficieny in delivering its statutory functions to the Filipino people in the fields of education, business, agro-fishery, industrial, science and technology, through committed and competent human resource, guided by the beacon of innovation and productivity towards the heights of elevated status. </span><br /><br /></p>'),
(3, 'History', '<pre><span style=\"font-size: large;\">HISTORY &nbsp;</span> </pre>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Carlos Hilado Memorial State College, formerly Paglaum State College, is a public educational institution that aims to provide higher technological, professional and vocational instruction and training in science, agriculture and industrial fields as well as short term or vocational courses. It was Batas Pambansa Bilang 477 which integrated these three institutions of learning: the Negros Occidental College of Arts and Trades (NOCAT) in the Municipality of Talisay, Bacolod City National Trade School (BCNTS) in Alijis, Bacolod City, and the Negros Occidental Provincial Community College (NOPCC) in Bacolod City, into a tertiary state educational institution to be called Paglaum State College. Approved in 1983, the College Charter was implemented effective January 1, 1984, with Mr. Sulpicio P. Cartera as its President. The administrative seat of the first state college in Negros Occidental is located at the Talisay Campus which was originally established as Negros Occidental School of Arts and Trades (NOSAT) under R.A. 848, authored and sponsored by Hon. Carlos Hilado. It occupies a five-hectare land donated by the provincial government under Provincial Board Resolution No. 1163. The renaming of the college to Carlos Hilado Memorial State College was effected by virtue of House Bill No. 7707 authored by then Congressman Jose Carlos V. Lacson of the 3rd Congressional District, Province of Negros Occidental, and which finally became a law on May 5, 1994</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp; Talisay Campus. July 1, 1954 marked the formal opening of NOSAT with Mr. Francisco Apilado as its first Superintendent and Mr. Gil H. Tenefrancia as Principal. There were five (5) full time teachers, with an initial enrolment of eighty-nine (89) secondary and trade technical students. The shop courses were General Metal Works, Practical Electricity and Woodworking. The first classes were held temporarily at Talisay Elementary School while the shop buildings and classrooms were under construction. NOSAT was a recipient of FOA-PHILCUA aid in terms of technical books, equipment, tools and machinery. Alijis Campus. The Alijis Campus of the Carlos Hilado Memorial State College is situated in a 5-hectare lot located at Barangay Alijis, Bacolod City. The lot was a donation of the late Dr. Antonio Lizares. The school was formerly established as the Bacolod City National Trade School. The establishment of this trade technical institution is pursuant to R.A. 3886 in 1968, authored by the late Congressman Inocencio V. Ferrer of the second congressional district of the Province of Negros Occidental. Fortune Towne. The Fortune Towne Campus of the Carlos Hilado Memorial State College was originally situated in Negros Occidental High School (NOHS), Bacolod City on a lot owned by the Provincial Government under Provincial Board Resolution No. 91 series of 1970. The school was formerly established as the Negros Occidental Provincial Community College and formally opened on July 13, 1970 with the following course offerings: Bachelor of Arts, Technical Education and Bachelor of Commerce. The initial operation of the school started in July 13, 1970, with an initial enrolment of 209 students. Classes were first housed at the Negros Occidental High School while the first building was constructed. Then Governor Alfredo L. Montelibano spearheaded the first operation of the NOPCC along with the members of the Board of Trustees. In June 1995, the campus transferred to its new site in Fortune Towne, Bacolod City. Binalbagan Campus. On Nov. 24, 2000, the Negros Occidental School of Fisheries (NOSOF) in Binalbagan, Negros Occidental was integrated to the Carlos Hilado Memorial State College system as an external campus by virtue of Resolution No. 46 series of 2000.</p>'),
(4, 'Footer', '<p style=\"text-align:center\">BIDS &nbsp;Learning Managenment System</p>\r\n\r\n<p style=\"text-align:center\">All Rights Reserved &reg;2020</p>\r\n'),
(5, 'Upcoming Events', '<pre>\r\nUP COMING EVENTS</pre>\r\n\r\n<p><strong>&gt;</strong> EXAM</p>\r\n\r\n<p><strong>&gt;</strong> INTERCAMPUS MEET</p>\r\n\r\n<p><strong>&gt;</strong> DEFENSE</p>\r\n\r\n<p><strong>&gt;</strong> ENROLLMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(6, 'Title', '<p><span style=\"font-family:trebuchet ms,geneva\">CHMSC Online Learning Management System</span></p>\r\n'),
(7, 'News', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Recent News\r\n</strong></em></span></pre>\r\n\r\n<h2><span style=\"font-size:small\">Extension and Community Services</span></h2>\r\n\r\n<p style=\"text-align:justify\">This technology package was promoted by the College of Industrial Technology Unit is an index to offer Practical Skills and Livelihood Training Program particularly to the Ina ngTahanan of Tayabas, Barangay Zone 15, Talisay City, Negros Occidental</p>\r\n\r\n<p style=\"text-align:justify\">The respondent of this technology package were mostly &ldquo;ina&rdquo; or mothers in PurokTayabas. There were twenty mothers who responded to the call of training and enhancing their sewing skills. The beginners projects include an apron, elastics waist skirts, pillow-cover and t-shirt style top. Short sleeve blouses with buttonholes or contoured seaming are also some of the many projects introduced to the mothers. Based on the interview conducted after the culmination activity, the projects done contributed as a means of earning to the respondents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; In support to the thrust of the government to improve the health status of neighboring barangays, the Faculty and Staff of CHMSC ECS Fortune Towne, Bacolod City, launched its Medical Mission in Patag, Silay City. It was conducted last March 2010, to address the health needs of the people. A medical consultation is given to the residents of SitioPatag to attend to their health related problems that may need medical treatment. Medical tablets for headache, flu, fever, antibiotics and others were availed by the residents.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;The BAYAN-ANIHAN is a Food Production Program with a battle cry of &ldquo;GOODBYE GUTOM&rdquo;, advocating its legacy &ldquo;Food on the Table for every Filipino Family&rdquo; through backyard gardening. NGO&rsquo;s, governmental organizations, private and public sectors, business sectors are the cooperating agencies that support and facilitate this project and Carlos Hilado Memorial State College (CHMSC) is one of the identified partner school. Being a member institution in advocating its thrust, the school through its Extension and Community Services had conducted capability training workshop along this program identifying two deputy coordinators and trainers last November 26,27 and 28, 2009, with the end in view of implementing the project all throughout the neighboring towns, provinces and regions to help address poverty in the country. Program beneficiaries were the selected families of GawadKalinga (GK) in Hope Village, Brgy. Cabatangan, Talisay City, with 120 families beneficiaries; GK FIAT Village in Silay City with 30 beneficiaries; Bonbon Dream Village brgy. E. Lopez, Silay City with 60 beneficiaries; and respectively Had. Teresita and Had. Carmen in Talisay City, Negros Occidental both with 60 member beneficiaries. This program was introduced to 30 household members with the end in view of alleviating the quality standards of their living.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">The extension &amp; Community Services of the College conducted a series of consultations and meetings with the different local government units to assess technology needs to determines potential products to be developed considering the abundance of raw materials in their respective areas and their product marketability. The project was released in November 2009 in six cities in the province of Negros Occidental, namely San Carlos, Sagay, Silay, Bago, Himamaylan and Sipalay and the Municipality of E. B Magalona</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The City of San Carlos focused on peanut and fish processing. Sagay and bago focused on meat processing, while Silay City on fish processing. The City of Himamaylan is on sardines, and in Sipalay focused on fish processing specially on their famous BARONGAY product. The municipality of E.B Magalona focused on bangus deboning.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; The food technology instructors are tasked to provide the needed skills along with the TLDC Livelihood project that each City is embarking on while the local government units provide the training venue for the project and the training equipment and machine were provided by the Department of Science and Technology.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n'),
(8, 'Announcements', '<pre>\r\n<span style=\"font-size:medium\"><em><strong>Announcements</strong></em></span></pre>\r\n\r\n<p>Examination Period: October 9-11, 2013</p>\r\n\r\n<p>Semestrial Break: October 12- November 3, 2013</p>\r\n\r\n<p>FASKFJASKFAFASFMFAS</p>\r\n\r\n<p>GASGA</p>\r\n'),
(10, 'Calendar', '<pre style=\"text-align:center\">\r\n<span style=\"font-size:medium\"><strong>&nbsp;CALENDAR OF EVENT</strong></span></pre>\r\n\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>First Semester &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>June 10, 2013 to October 11, 2013&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n			<td>\r\n			<p>Oct. 12, 2013 to November 3, 2013</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Second Semester</p>\r\n			</td>\r\n			<td>\r\n			<p>Nov. 5, 2013 to March 27, 2014</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer Break</p>\r\n			</td>\r\n			<td>\r\n			<p>March 27, 2014 to April 8, 2014</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Summer</p>\r\n			</td>\r\n			<td>\r\n			<p>April 8 , 2014 to May 24, 2014</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:1.6em; margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p><strong>June 5, 2013 to October 11, 2013 &ndash; First Semester AY 2013-2014</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 4, 2013 &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with the Parents of the College&nbsp;Freshmen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Service</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5</p>\r\n			</td>\r\n			<td>\r\n			<p>College Personnel General Assembly</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 6,7</p>\r\n			</td>\r\n			<td>\r\n			<p>In-Service Training (Departmental)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 10</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Orientation with Students by College/Campus/Department</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 19,20,21</p>\r\n			</td>\r\n			<td>\r\n			<p>Branch/Campus Visit for Administrative / Academic/Accreditation/ Concerns</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td rowspan=\"2\">\r\n			<p>June</p>\r\n			</td>\r\n			<td>\r\n			<p>Club Organizations (By Discipline/Programs)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Student Affiliation/Induction Programs</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July</p>\r\n			</td>\r\n			<td>\r\n			<p>Nutrition Month (Sponsor: Laboratory School)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July 11, 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August&nbsp; 8, 9</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Examinations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 19</p>\r\n			</td>\r\n			<td>\r\n			<p>ArawngLahi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 23</p>\r\n			</td>\r\n			<td>\r\n			<p>Submission of Grade Sheets for Midterm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August</p>\r\n			</td>\r\n			<td>\r\n			<p>Recognition Program (Dean&rsquo;s List)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 26</p>\r\n			</td>\r\n			<td>\r\n			<p>National Heroes Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August 28, 29, 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Sports and Cultural Meet</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>September 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 5</p>\r\n			</td>\r\n			<td>\r\n			<p>Teachers&rsquo; Day / World Teachers&rsquo; Day</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 10, 11</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examination</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>October 12</p>\r\n			</td>\r\n			<td>\r\n			<p>Semestral Break</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n			<p><strong>Nov. 4, 2013 to March 27, 2014 &ndash; Second Semester AY 2013-2014</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Classes</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>November 19, 20, 21, 22</p>\r\n			</td>\r\n			<td>\r\n			<p>Intercampus Sports and Cultural Fest/College Week</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 5, 6</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 19,20</p>\r\n			</td>\r\n			<td>\r\n			<p>Thanksgiving Celebrations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Start of Christmas Vacation</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 25</p>\r\n			</td>\r\n			<td>\r\n			<p>Christmas Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>December 30</p>\r\n			</td>\r\n			<td>\r\n			<p>Rizal Day (Regular Holiday)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 6, 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>Classes Resume</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 9, 10</p>\r\n			</td>\r\n			<td>\r\n			<p>Midterm Examinations</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>January 29</p>\r\n			</td>\r\n			<td>\r\n			<p>Submission of Grades Sheets for Midterm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>February 13, 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Long Tests</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 6, 7</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examinations (Graduating)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 13, 14</p>\r\n			</td>\r\n			<td>\r\n			<p>Final Examinations (Non-Graduating)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 17, 18, 19, 20, 21</p>\r\n			</td>\r\n			<td>\r\n			<p>Recognition / Graduation Rites</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>March 27</p>\r\n			</td>\r\n			<td>\r\n			<p>Last Day of Service for Faculty</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June 5, 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>First Day of Service for SY 2014-2015</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin-left:auto; margin-right:auto\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">\r\n			<p><strong>FLAG RAISING CEREMONY-TALISAY CAMPUS</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>MONTHS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>UNIT-IN-CHARGE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>June, Sept. and Dec. 2013, March 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>COE</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>July and October 2013, Jan. 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>SAS</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>August and November 2013, Feb. 2014</p>\r\n\r\n			<p>April and May 2014</p>\r\n			</td>\r\n			<td>\r\n			<p>CIT</p>\r\n\r\n			<p>GASS</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(11, 'Directories', '<div class=\"jsn-article-content\" style=\"text-align: left;\">\r\n<pre>\r\n<span style=\"font-size:medium\"><em><strong>DIRECTORIES</strong></em></span></pre>\r\n\r\n<ul>\r\n	<li>Lab School - 712-0848</li>\r\n	<li>Accounting - 495-5560</li>\r\n	<li>Presidents Office - 495-4064(telefax)</li>\r\n	<li>VPA/PME - 495-1635</li>\r\n	<li>Registrar Office - 495-4657(telefax)</li>\r\n	<li>Cashier - 712-7272</li>\r\n	<li>CIT - 712-0670</li>\r\n	<li>SAS/COE - 495-6017</li>\r\n	<li>BAC - 712-8404(telefax)</li>\r\n	<li>Records - 495-3470</li>\r\n	<li>Supply - 495-3767</li>\r\n	<li>Internet Lab - 712-6144/712-6459</li>\r\n	<li>COA - 495-5748</li>\r\n	<li>Guard House - 476-1600</li>\r\n	<li>HRM - 495-4996</li>\r\n	<li>Extension - 457-2819</li>\r\n	<li>Canteen - 495-5396</li>\r\n	<li>Research - 712-8464</li>\r\n	<li>Library - 495-5143</li>\r\n	<li>OSA - 495-1152</li>\r\n</ul>\r\n</div>\r\n'),
(12, 'president', '<p>It is my great pleasure and privilege to welcome you to CHMSC&rsquo;s official website. Accept my deep appreciation for continuously taking interest in CHMSC and its programs and activities.<br /> Recently, the challenges of the knowledge era of the 21st Century led me to think very deeply how educational institutions of higher learning must vigorously pursue relevant e<img style=\"float: left;\" src=\"images/president.jpg\" alt=\"\" />ducation to compete with and respond to the challenges of globalization. As an international fellow, I realized that in the face of this globalization and technological advancement, educational institutions are compelled to work extraordinary in educating the youths and enhancing their potentials for gainful employment and realization of their dreams to become effective citizens.<br /><br /> Honored and humbled to be given the opportunity for stewardship of this good College, I am fully aware that the goal is to make CHMSC as the center of excellence or development in various fields. The vision, CHMSC ExCELS: Excellence, Competence and Educational Leadership in Science and Technology is a profound battle cry for each member of CHMSC Community. A CHMSCian must be technologically and academically competent, socially mature, safety conscious with care for the environment, a good citizen and possesses high moral values. The way the College is being managed, the internal and the external culture of all stockholders, and the efforts for quality and excellence will result to the establishment of the good corporate image of the College. The hallmark is reflected as the image of the good institution.<br /><br /> The tasks at hand call for our full cooperation, support and active participation. Therefore, I urge everyone to help me in the crusade to <br /><br /></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">Provide wider access to CHMSC programs;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Harness the potentials of students thru effective teaching and learning methodologies and techniques;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Enable CHMSC Environment for All through secure green campus;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Advocate green movement, protect intellectual property and stimulate innovation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Promote lifelong learning;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Conduct Research and Development for community and poverty alleviation;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;* Share and disseminate knowledge through publication and extension outreach to communities; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*Strengthen Institute-industry linkages and public-private partnership for mutual interest.</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em; text-align: justify;\">Together, WE can make CHMSC</span></p>\r\n<p style=\"text-align: justify;\"><br /><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;*A model green institution for Human Resources Development, a builder of human resources in the knowledge era of the 21st Century;</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A center for curricular innovations and research especially in education, technology, engineering, ICT and entrepreneurship; and</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"line-height: 1.3em;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; *A Provider of quality graduates in professional and technological programs for industry and community.</span></p>\r\n<p style=\"text-align: justify;\"><br /><br /> Dear readers and guests, these are the challenges for every CHMSCian to hurdle and the dreams to realize. This website will be one of the connections with you as we ardently take each step. Feel free to visit often and be kept posted as we continue to work for discoveries and advancement that will bring benefits to the lives of the students, the community, and the world, as a whole.<br /><br /> Warmest welcome and I wish you well!</p>\r\n<p style=\"text-align: justify;\"><br /><br /></p>\r\n<p style=\"text-align: justify;\">RENATO M. SOROLLA, Ph.D.<br />SUC President II</p>'),
(13, 'motto', '<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">CHMSC EXCELS:</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Excellence, Competence and Educational</span></span></strong></p>\r\n\r\n<p><strong><span style=\"color:#FFF0F5\"><span style=\"font-family:arial,helvetica,sans-serif\">Leadership in Science and Technology</span></span></strong></p>\r\n'),
(14, 'Campuses', '<pre>\r\n<span style=\"font-size:16px\"><strong>Campuses</strong></span></pre>\r\n\r\n<ul>\r\n	<li>Alijis Campus</li>\r\n	<li>Binalbagan Campus</li>\r\n	<li>Fortunetown Campus</li>\r\n	<li>Talisay Campus<br />\r\n	&nbsp;</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(20) NOT NULL,
  `course_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(4, 'computer science engineering', 'hod'),
(5, 'electrical engineering', 'DR.'),
(9, 'mechanical engineering', 'null'),
(10, 'civil engineering', 'DR. John Smith');

-- --------------------------------------------------------

--
-- Table structure for table `edit_profile`
--

CREATE TABLE `edit_profile` (
  `profile_id` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `designation` varchar(250) NOT NULL,
  `proficiency` varchar(250) NOT NULL,
  `teaching_exp` varchar(250) NOT NULL,
  `project` varchar(250) NOT NULL,
  `qualification` varchar(250) NOT NULL,
  `publication` varchar(250) NOT NULL,
  `image` varchar(255) NOT NULL,
  `teacher_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edit_profile`
--

INSERT INTO `edit_profile` (`profile_id`, `name`, `designation`, `proficiency`, `teaching_exp`, `project`, `qualification`, `publication`, `image`, `teacher_id`) VALUES
(1, 'uday', 'designation', 'qualification', 'profociency', 'teaching', 'project', 'publication', 'image', 0),
(17, 'Jomar Pabuaya', 'Professor', 'Java', '12y', 'Image Processing', 'M.Tech', '{\"publications\":[\"IEEE\",\"ieeeeee\"]}', 'profiles/Penguins.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(12, ' 	  Orientation with the Parents of the College Freshmen', 0, '06/04/2013', '06/04/2013'),
(13, 'Start of Classes', 0, '11/04/2013', '11/04/2013'),
(14, 'Intercampus Sports and Cultural Fest/College Week', 0, '11/19/2013', '11/22/2013'),
(15, 'Long Test', 113, '12/05/2013', '12/06/2013'),
(16, 'Long Test', 0, '12/05/2013', '12/06/2013'),
(17, 'sdasf', 147, '11/16/2013', '11/16/2013'),
(18, 'Sample', 186, '12/22/2020', '12/24/2020'),
(19, 'internals', 0, '01/12/2021', '01/13/2021');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(133, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:31:38', 'sas', 14, 177, 'sss', ''),
(132, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:29:53', 'sas', 14, 178, 'sss', ''),
(131, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:28:09', 'sas', 14, 12, 'sss', ''),
(129, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:12:38', 'sas', 0, 12, 'sss', ''),
(130, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 10:26:11', 'sas', 0, 12, 'sss', ''),
(128, 'admin/uploads/7614_File_1476273_644977475552481_2029187901_n.jpg', '2014-02-13 13:31:18', 'qwwqw', 12, 185, 'kevi', 'Ruby Mae Morante'),
(127, 'admin/uploads/1085_File_Resume.docx', '2014-02-13 12:53:09', 'q', 12, 183, 'q', 'Ruby Mae Morante'),
(126, 'admin/uploads/7895_File_PERU REPORT.pptx', '2014-02-13 12:35:42', 'chapter 1', 12, 182, 'chapter 1', 'Ruby Mae Morante'),
(125, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:10:56', 'test', 12, 181, 'test', 'Ruby Mae Morante'),
(123, 'admin/uploads/4801_File_painting-02.jpg', '2013-12-11 12:02:46', 'jdkasjfd', 12, 163, 'Test', 'Ruby Mae Morante'),
(122, 'admin/uploads/3985_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:00:22', 'dasdasd', 12, 145, 'dasd', 'Ruby Mae Morante'),
(121, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 162, 'kevin', 'Ruby Mae Morante'),
(120, 'admin/uploads/7439_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:59:46', 'asdad', 12, 145, 'kevin', 'Ruby Mae Morante'),
(119, 'admin/uploads/3166_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 19:58:44', 'kevin', 12, 145, 'kevin', 'Ruby Mae Morante'),
(118, 'admin/uploads/4849_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 23:59:20', 'q', 0, 162, 'qq', 'StephanieVillanueva'),
(117, 'admin/uploads/9467_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 10:42:37', 'test', 0, 162, 'report group 1', 'MarrianneTumala'),
(116, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 162, 'w', 'Ruby Mae Morante'),
(115, 'admin/uploads/5990_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-26 02:51:24', 'w', 12, 145, 'w', 'Ruby Mae Morante'),
(138, 'admin/uploads/3952_File_sample.pdf', '2020-12-21 09:24:50', 'Sample', 9, 186, 'Sample', 'JomarPabuaya'),
(139, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 09:38:22', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(140, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 09:39:32', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(141, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 09:40:28', 'adasd', 9, 186, '234234', 'JomarPabuaya'),
(142, 'admin/uploads/8177_File_JUNE-JULY-2017 - CS-min (2).pdf', '2020-12-30 14:17:07', 'lmlml', 18, 197, 'kmkmkm', 'AllanDela Torre'),
(143, 'admin/uploads/8379_File_add_assignment.php', '2021-01-07 16:29:13', 'kjh', 9, 196, 'uuu', 'JomarPabuaya'),
(144, 'admin/uploads/8379_File_add_assignment.php', '2021-01-07 16:29:13', 'kjh', 9, 198, 'uuu', 'JomarPabuaya'),
(145, 'admin/uploads/8379_File_add_assignment.php', '2021-01-07 16:29:13', 'kjh', 9, 207, 'uuu', 'JomarPabuaya');

-- --------------------------------------------------------

--
-- Table structure for table `internals`
--

CREATE TABLE `internals` (
  `internal_id` int(11) NOT NULL,
  `internal_class_id` int(11) NOT NULL,
  `student_marks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `internals`
--

INSERT INTO `internals` (`internal_id`, `internal_class_id`, `student_marks`) VALUES
(5, 196, '{\"students\":[{\"Name\":\"Wina Mae Espenorio\",\"USN\":\"20100447\",\"class\":\"196\",\"IAs\":[{\"IAName\":\"ia-1 (25)\",\"IAMark\":\"20\"},{\"IAName\":\"IA 2 (30)\",\"IAMark\":\"25\"},{\"IAName\":\"IA 3 (30)\",\"IAMark\":\"10\"}]},{\"Name\":\"Mark Dominic Sayon\",\"USN\":\"21100867\",\"class\":\"196\",\"IAs\":[{\"IAName\":\"ia-1 (25)\",\"IAMark\":\"50\"},{\"IAName\":\"IA 2 (30)\",\"IAMark\":\"26\"},{\"IAName\":\"IA 3 (30)\",\"IAMark\":\"10\"}]}]}'),
(6, 207, '{\"students\":[{\"Name\":\"Vishal Agasar\",\"USN\":\"2BL17ME132\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Jamaica Mae Alipe\",\"USN\":\"21100555\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Xenia Jane Billones\",\"USN\":\"21100318\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Carell Catuburan\",\"USN\":\"21101124\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Zyryn Corugda\",\"USN\":\"21100881\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Jade Gordoncillo\",\"USN\":\"21100617\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Neljie Guirnela\",\"USN\":\"21101131\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Mary Joy Lambosan\",\"USN\":\"20101289\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Clifford Ledesma\",\"USN\":\"21100324\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Jamilah Lonot\",\"USN\":\"21100303\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Christine Joy Macaya\",\"USN\":\"21100579\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Ryan Teofilo Malbata-an\",\"USN\":\"21100315\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Noli Mendoza\",\"USN\":\"21100556\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Ma. Nonie Mendoza\",\"USN\":\"21100913\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Glecy Marie Navarosa\",\"USN\":\"20101436\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Miralyn Pabalate\",\"USN\":\"21100855\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Leah Mae Padilla\",\"USN\":\"21100471\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Razel Palermo\",\"USN\":\"29000676\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Jayvon Pig-ao\",\"USN\":\"21100547\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Ergin Joy Satoc\",\"USN\":\"21101142\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Mark Dominic Sayon\",\"USN\":\"21100867\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Raymond Serion\",\"USN\":\"2700372\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Felix Kirby Ubas\",\"USN\":\"21100277\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]},{\"Name\":\"Stephanie Villanueva\",\"USN\":\"21101042\",\"class\":\"207\",\"IAs\":[{\"IAName\":\"ia-1 (40)\",\"IAMark\":\"10\"}]}]}');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna', ''),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza', 'read'),
(17, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(19, 12, 'fasfaf', '2013-12-01 23:56:17', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna', ''),
(27, 93, 'fa', '2013-12-02 00:01:54', 12, 'John Kevin  Lorayna', 'Ruby Mae  Morante', ''),
(28, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante', ''),
(29, 18, 'Test message', '2020-12-21 08:51:10', 9, 'Allan Dela Torre', 'Jomar Pabuaya', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 42, 'sad', '2013-11-12 22:50:05', 42, 'john kevin lorayna', 'john kevin lorayna'),
(2, 11, 'fasf', '2013-11-13 13:15:47', 42, 'Aladin Cabrera', 'john kevin lorayna'),
(3, 12, 'bjhkcbkjsdnckldvls', '2013-11-25 15:58:55', 71, 'Ruby Mae  Morante', 'Noli Mendoza'),
(4, 71, 'bcjhbcjksdbckldj', '2013-11-25 15:59:13', 71, 'Noli Mendoza', 'Noli Mendoza'),
(5, 12, 'test', '2013-11-30 20:54:05', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(11, 12, 'tst', '2013-12-01 23:38:40', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(12, 12, 'fasfasf', '2013-12-01 23:49:13', 93, 'Ruby Mae  Morante', 'John Kevin  Lorayna'),
(13, 136, 'Submit your classcard', '2014-02-13 13:35:21', 12, 'Jorgielyn Serfino', 'Ruby Mae  Morante'),
(14, 18, 'Test message', '2020-12-21 08:51:10', 9, 'Allan Dela Torre', 'Jomar Pabuaya');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(2, 0, 'Add Downloadable Materials file name <b>sss</b>', '2014-01-17 14:35:32', 'downloadable_student.php'),
(3, 167, 'Add Annoucements', '2014-01-17 14:36:32', 'announcements_student.php'),
(4, 0, 'Add Downloadable Materials file name <b>test</b>', '2014-02-13 11:10:56', 'downloadable_student.php'),
(5, 167, 'Add Assignment file name <b>q</b>', '2014-02-13 11:27:59', 'assignment_student.php'),
(6, 0, 'Add Downloadable Materials file name <b>chapter 1</b>', '2014-02-13 12:35:42', 'downloadable_student.php'),
(7, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-13 12:53:09', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>kevi</b>', '2014-02-13 13:31:18', 'downloadable_student.php'),
(9, 185, 'Add Practice Quiz file', '2014-02-13 13:33:27', 'student_quiz_list.php'),
(10, 167, 'Add Annoucements', '2014-02-13 13:45:59', 'announcements_student.php'),
(11, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:43:38', 'downloadable_student.php'),
(12, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:18', 'downloadable_student.php'),
(13, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:46:49', 'downloadable_student.php'),
(14, 0, 'Add Downloadable Materials file name <b>q</b>', '2014-02-21 16:52:30', 'downloadable_student.php'),
(15, 186, 'Add Downloadable Materials file name <b>Sample</b>', '2020-12-21 09:24:50', 'downloadable_student.php'),
(16, 0, 'Add Downloadable Materials file name <b>123</b>', '2020-12-21 09:31:40', 'downloadable_student.php'),
(17, 0, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:36:27', 'downloadable_student.php'),
(18, 0, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:38:22', 'downloadable_student.php'),
(19, 186, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:39:32', 'downloadable_student.php'),
(20, 186, 'Add Downloadable Materials file name <b>234234</b>', '2020-12-21 09:40:28', 'downloadable_student.php'),
(21, 186, 'Add Assignment file name <b>asdasd</b>', '2020-12-21 09:56:48', 'assignment_student.php'),
(22, 186, 'Add Annoucements', '2020-12-21 09:59:00', 'announcements_student.php'),
(23, 186, 'Add Practice Quiz file', '2020-12-21 10:10:11', 'student_quiz_list.php'),
(24, 151, 'Add Practice Quiz file', '2020-12-29 09:48:57', 'student_quiz_list.php'),
(25, 152, 'Add Practice Quiz file', '2020-12-29 09:48:57', 'student_quiz_list.php'),
(26, 153, 'Add Practice Quiz file', '2020-12-29 09:48:57', 'student_quiz_list.php'),
(27, 196, 'Add Assignment file name <b>assign-1</b>', '2020-12-30 10:35:42', 'assignment_student.php'),
(28, 196, 'Add Annoucements', '2020-12-30 10:48:48', 'announcements_student.php'),
(29, 197, 'Add Annoucements', '2020-12-30 13:57:30', 'announcements_student.php'),
(30, 197, 'Add Downloadable Materials file name <b>kmkmkm</b>', '2020-12-30 14:17:07', 'downloadable_student.php'),
(31, 196, 'Add Assignment name <b>assignment</b>', '2020-12-31 18:31:47', 'assignment_student.php'),
(32, 198, 'Add Assignment name <b>assignment</b>', '2020-12-31 18:31:47', 'assignment_student.php'),
(33, 196, 'Add Assignment name <b>maxmarks</b>', '2020-12-31 18:34:48', 'assignment_student.php'),
(34, 198, 'Add Assignment name <b>maxmarks</b>', '2020-12-31 18:34:48', 'assignment_student.php'),
(35, 196, 'Add Assignment name <b>assign</b>', '2020-12-31 18:36:12', 'assignment_student.php'),
(36, 196, 'Add Assignment name <b>assign-1000</b>', '2020-12-31 18:38:46', 'assignment_student.php'),
(37, 198, 'Add Assignment name <b>assign-1000</b>', '2020-12-31 18:38:46', 'assignment_student.php'),
(38, 196, 'Add Assignment file name <b>sagu</b>', '2020-12-31 18:51:11', 'assignment_student.php'),
(39, 196, 'Add Assignment file name <b>sagu</b>', '2020-12-31 18:52:38', 'assignment_student.php'),
(40, 196, 'Add Assignment name <b>assign</b>', '2021-01-01 10:20:52', 'assignment_student.php'),
(41, 196, 'Add Assignment name <b>sagar`</b>', '2021-01-01 10:57:35', 'assignment_student.php'),
(42, 198, 'Add Assignment name <b>sagar`</b>', '2021-01-01 10:57:35', 'assignment_student.php'),
(43, 196, 'Add Assignment name <b>sdds</b>', '2021-01-01 11:29:20', 'assignment_student.php'),
(44, 198, 'Add Assignment name <b>sdds</b>', '2021-01-01 11:29:20', 'assignment_student.php'),
(45, 196, 'Add Assignment name <b>sagu</b>', '2021-01-01 11:42:29', 'assignment_student.php'),
(46, 198, 'Add Assignment name <b>sagu</b>', '2021-01-01 11:42:29', 'assignment_student.php'),
(47, 196, 'Add Assignment name <b>qwwqqw</b>', '2021-01-01 11:45:36', 'assignment_student.php'),
(48, 198, 'Add Assignment name <b>qwwqqw</b>', '2021-01-01 11:45:36', 'assignment_student.php'),
(49, 196, 'Add Assignment name <b>qwertt</b>', '2021-01-01 11:47:24', 'assignment_student.php'),
(50, 198, 'Add Assignment name <b>qwertt</b>', '2021-01-01 11:47:24', 'assignment_student.php'),
(51, 196, 'Add Assignment name <b>sddddd</b>', '2021-01-01 11:57:43', 'assignment_student.php'),
(52, 198, 'Add Assignment name <b>sddddd</b>', '2021-01-01 11:57:43', 'assignment_student.php'),
(53, 196, 'Add Assignment name <b>hgggg</b>', '2021-01-01 12:22:52', 'assignment_student.php'),
(54, 198, 'Add Assignment name <b>hgggg</b>', '2021-01-01 12:22:52', 'assignment_student.php'),
(55, 196, 'Add Downloadable Materials file name <b>uuu</b>', '2021-01-07 16:29:13', 'downloadable_student.php'),
(56, 198, 'Add Downloadable Materials file name <b>uuu</b>', '2021-01-07 16:29:13', 'downloadable_student.php'),
(57, 207, 'Add Downloadable Materials file name <b>uuu</b>', '2021-01-07 16:29:13', 'downloadable_student.php'),
(58, 196, 'Add Assignment name <b>jhg</b>', '2021-01-07 16:31:01', 'assignment_student.php'),
(59, 198, 'Add Assignment name <b>jhg</b>', '2021-01-07 16:31:01', 'assignment_student.php'),
(60, 207, 'Add Assignment name <b>jhg</b>', '2021-01-07 16:31:01', 'assignment_student.php'),
(61, 196, 'Add Assignment name <b>qqqqqq</b>', '2021-01-12 19:56:47', 'assignment_student.php'),
(62, 196, 'Add Assignment name <b>deadline_date</b>', '2021-01-14 12:31:00', 'assignment_student.php'),
(63, 198, 'Add Assignment name <b>deadline_date</b>', '2021-01-14 12:31:00', 'assignment_student.php'),
(64, 198, 'Add Assignment file name <b>course</b>', '2021-01-15 00:29:23', 'assignment_student.php'),
(65, 196, 'Add Assignment file name <b>course</b>', '2021-01-15 00:37:07', 'assignment_student.php'),
(66, 196, 'Add Assignment name <b>18-01-2021</b>', '2021-01-18 11:50:27', 'assignment_student.php'),
(67, 198, 'Add Assignment name <b>18-01-2021</b>', '2021-01-18 11:50:27', 'assignment_student.php'),
(68, 207, 'Add Assignment name <b>18-01-2021</b>', '2021-01-18 11:50:27', 'assignment_student.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `student_id`, `student_read`, `notification_id`) VALUES
(1, 219, 'yes', 22),
(2, 219, 'yes', 21),
(3, 219, 'yes', 20),
(4, 219, 'yes', 19),
(5, 219, 'yes', 15),
(6, 111, 'yes', 27),
(7, 111, 'yes', 28);

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read_teacher`
--

INSERT INTO `notification_read_teacher` (`notification_read_teacher_id`, `teacher_id`, `student_read`, `notification_id`) VALUES
(1, 12, 'yes', 14),
(2, 12, 'yes', 13),
(3, 12, 'yes', 12),
(4, 12, 'yes', 11),
(5, 12, 'yes', 10),
(6, 12, 'yes', 9),
(7, 12, 'yes', 8),
(8, 12, 'yes', 7),
(9, 18, 'yes', 15);

-- --------------------------------------------------------

--
-- Table structure for table `offlineassignment`
--

CREATE TABLE `offlineassignment` (
  `off_id` int(11) NOT NULL,
  `offline_class_id` int(11) NOT NULL,
  `offline_marks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offlineassignment`
--

INSERT INTO `offlineassignment` (`off_id`, `offline_class_id`, `offline_marks`) VALUES
(0, 198, '{\"students\":[{\"Name\":\"Karyl June Bacobo\",\"USN\":\"21100895\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"10\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"5\"}]},{\"Name\":\"Johnedel Bauno\",\"USN\":\"21100411\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"10\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"2\"}]},{\"Name\":\"Ace John Casuyon\",\"USN\":\"21100393\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"15\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"14\"}]},{\"Name\":\"Jerwin Delos Reyes\",\"USN\":\"21100369\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"10\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"15\"}]},{\"Name\":\"Neovi Devierte\",\"USN\":\"21100557\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"15\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"14\"}]},{\"Name\":\"Ma. Roxette Infante\",\"USN\":\"21100421\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"10\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"8\"}]},{\"Name\":\"Victor Anthony Jacobo\",\"USN\":\"21101050\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"18\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"5\"}]},{\"Name\":\"Danica Lamis\",\"USN\":\"21100396\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"14\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"9\"}]},{\"Name\":\"Eril Pio Mercado\",\"USN\":\"21100291\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"13\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"14\"}]},{\"Name\":\"Mary Ann Panaguiton\",\"USN\":\"21100701\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"11\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"12\"}]},{\"Name\":\"Jethro Pansales\",\"USN\":\"21101273\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"15\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"13\"}]},{\"Name\":\"Mae Ann Panugaling\",\"USN\":\"21100904\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"16\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"14\"}]},{\"Name\":\"Rose Mae Pido\",\"USN\":\"21101195\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"14\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"15\"}]},{\"Name\":\"Savrena Joy Rael\",\"USN\":\"2100287\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"3\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"13\"}]},{\"Name\":\"Kristelle Shaine Rubi\",\"USN\":\"21101063\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"5\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"16\"}]},{\"Name\":\"Jebson Tordillos\",\"USN\":\"21100406\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"6\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"17\"}]},{\"Name\":\"Lee Ann Vertucio\",\"USN\":\"21100351\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"8\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"18\"}]},{\"Name\":\"Jendrix Victosa\",\"USN\":\"21100431\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"11\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"19\"}]},{\"Name\":\"Richelle Villarmia\",\"USN\":\"20101392\",\"class\":\"198\",\"IAs\":[{\"IAName\":\"ASGN-1 (20)\",\"IAMark\":\"14\"},{\"IAName\":\"asgn-2 (20)\",\"IAMark\":\"20\"}]}]}'),
(0, 196, '{\"students\":[{\"Name\":\"Wina Mae Espenorio\",\"USN\":\"20100447\",\"class\":\"196\",\"IAs\":[{\"IAName\":\"assign-1 (42)\",\"IAMark\":\"40\"}]},{\"Name\":\"Mark Dominic Sayon\",\"USN\":\"21100867\",\"class\":\"196\",\"IAs\":[{\"IAName\":\"assign-1 (42)\",\"IAMark\":\"40\"}]}]}');

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14),
(5, 'test3', '123', '2014-01-16 04:12:07', 12),
(6, 'Sample Quiz', 'Sample 101', '2020-12-21 10:04:11', 9),
(7, 'sam[le', 'java', '2020-12-29 09:48:24', 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True'),
(36, 6, '<p>sample</p>\r\n', 1, 0, '2020-12-21 10:05:09', 'A'),
(37, 6, '<p>asdasd</p>\r\n', 2, 0, '2020-12-21 10:05:25', 'True'),
(38, 6, '<p>sdsd</p>\r\n', 2, 0, '2020-12-21 10:05:35', 'False');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(2, '2012-2013'),
(3, '2013-2014'),
(6, '2020-21(e)');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `dob` int(25) NOT NULL,
  `class_id` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `per_no` varchar(25) NOT NULL,
  `gua_no` varchar(25) NOT NULL,
  `rollno` int(11) NOT NULL,
  `assig_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `dob`, `class_id`, `did`, `username`, `password`, `location`, `status`, `per_no`, `gua_no`, `rollno`, `assig_status`) VALUES
(113, 'Clifford', 'Ledesma', 0, 13, 0, '21100324', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(112, 'Raymond', 'Serion', 0, 13, 0, '2700372', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(111, 'Mark Dominic', 'Sayon', 0, 13, 0, '21100867', 'heni', 'uploads/mark.jpg', 'registered', '0', '0', 154, 0),
(234, 'Vishal', 'Agasar', 2081999, 8, 0, '2BL17ME132', '', '', 'Unregistered', '', '', 0, 0),
(105, 'Neljie', 'Guirnela', 0, 13, 0, '21101131', '', 'uploads/Koala.jpg', 'Unregistered', '0', '0', 0, 0),
(106, 'Razel', 'Palermo', 0, 13, 0, '29000676', '', 'uploads/razel.jpg', 'Unregistered', '0', '0', 0, 0),
(103, 'Jade', 'Gordoncillo', 0, 13, 0, '21100617', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(104, 'Felix Kirby', 'Ubas', 0, 13, 0, '21100277', 'lms10117', 'uploads/kirb.jpg', 'Unregistered', '0', '0', 0, 0),
(100, 'Jamilah', 'Lonot', 0, 13, 0, '21100303', '', 'uploads/jamila.jpg', 'Unregistered', '0', '0', 0, 0),
(101, 'Xenia Jane', 'Billones', 0, 13, 0, '21100318', 'sen', 'uploads/xenia.jpg', 'Unregistered', '0', '0', 0, 0),
(102, 'Carell', 'Catuburan', 0, 13, 0, '21101124', '', 'uploads/carel.jpg', 'Unregistered', '0', '0', 0, 0),
(97, 'Mary Joy', 'Lambosan', 0, 13, 0, '20101289', '', 'uploads/Desert.jpg', 'Unregistered', '0', '0', 0, 0),
(98, 'Christine Joy', 'Macaya', 0, 13, 0, '21100579', '', 'uploads/tin.jpg', 'Unregistered', '0', '0', 0, 0),
(95, 'Ergin Joy', 'Satoc', 0, 13, 0, '21101142', '', 'uploads/ergin.jpg', 'Unregistered', '0', '0', 0, 0),
(93, 'John Kevin ', 'Lorayna', 0, 7, 0, '111', 'teph', 'uploads/3094_384893504898082_1563225657_n.jpg', 'Registered', '0', '0', 0, 0),
(94, 'Leah Mae', 'Padilla', 0, 13, 0, '21100471', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(76, 'Jamaica Mae', 'Alipe', 0, 13, 0, '21100555', '123', 'uploads/maica.jpg', 'Registered', '0', '0', 0, 0),
(235, 'Sarvesh', 'Goddagi', 2081999, 8, 0, '2BL17ME133', '', '', 'Unregistered', '', '', 0, 0),
(110, 'Zyryn', 'Corugda', 0, 13, 0, '21100881', '', 'uploads/baby.jpg', 'Unregistered', '0', '0', 0, 0),
(233, 'Uday', 'Patil', 2081999, 8, 0, '2BL17ME131', '', '', 'Unregistered', '', '', 0, 0),
(99, 'Ryan Teofilo', 'Malbata-an', 0, 13, 0, '21100315', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(96, 'Glecy Marie', 'Navarosa', 0, 13, 0, '20101436', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(209, 'dhalia', 'hofilena', 0, 20, 0, '21300311', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(75, 'Miralyn', 'Pabalate', 0, 13, 0, '21100855', 'em', 'uploads/em2.jpg', 'Unregistered', '0', '0', 0, 0),
(74, 'Ma. Nonie', 'Mendoza', 0, 13, 0, '21100913', '', 'uploads/nonie.jpg', 'Unregistered', '0', '0', 0, 0),
(73, 'Stephanie', 'Villanueva', 0, 13, 0, '21101042', 'tephai', 'uploads/3094_384893504898082_1563225657_n.jpg', 'Registered', '0', '0', 0, 0),
(72, 'Jayvon', 'Pig-ao', 0, 13, 0, '21100547', 'test', 'uploads/von.jpg', 'Unregistered', '0', '0', 0, 0),
(71, 'Noli', 'Mendoza', 0, 13, 0, '21100556', 'noledel', 'uploads/noli.jpg', 'Registered', '0', '0', 0, 0),
(134, 'Victor Anthony', 'Jacobo', 0, 12, 0, '21101050', 'akositon', 'uploads/win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', 'Registered', '0', '0', 0, 0),
(135, 'Albert Kezzel', 'Naynay', 0, 14, 0, '20101361', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(136, 'Jorgielyn', 'Serfino', 0, 7, 0, '20100331', 'jorgie', 'uploads/Koala.jpg', 'Registered', '0', '0', 0, 0),
(137, 'Wina Mae', 'Espenorio', 0, 8, 0, '20100447', 'sagu123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '7000000000', '8000000000', 0, 0),
(138, 'Brian Paul', 'Sablan', 0, 7, 0, '29000557', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(139, 'Rodzil', 'Camato', 0, 7, 0, '20100RC', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(140, 'Dean Martin', 'Tingson', 0, 14, 0, '21100665', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(141, 'Jared Reu', 'Windam', 0, 15, 0, '21100695', 'iloveyoujam', 'uploads/1463666_678111108874417_1795412912_n.jpg', 'Registered', '0', '0', 0, 0),
(142, 'Lee Ann', 'Vertucio', 0, 12, 0, '21100351', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(143, 'Danica', 'Lamis', 0, 12, 0, '21100396', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(144, 'Neovi', 'Devierte', 0, 12, 0, '21100557', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(145, 'Eril Pio', 'Mercado', 0, 12, 0, '21100291', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(146, 'Johnedel', 'Bauno', 0, 12, 0, '21100411', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(147, 'Jerwin', 'Delos Reyes', 0, 12, 0, '21100369', 'jerwin27 cute', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0', '0', 0, 0),
(148, 'Jendrix', 'Victosa', 0, 12, 0, '21100431', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(149, 'Jebson', 'Tordillos', 0, 12, 0, '21100406', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(150, 'Jethro', 'Pansales', 0, 12, 0, '21101273', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(151, 'Karyl June', 'Bacobo', 0, 12, 0, '21100895', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(152, 'Kristelle Shaine', 'Rubi', 0, 12, 0, '21101063', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(153, 'Richelle', 'Villarmia', 0, 12, 0, '20101392', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(154, 'Mae Ann', 'Panugaling', 0, 12, 0, '21100904', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(155, 'Ma. Roxette', 'Infante', 0, 12, 0, '21100421', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(156, 'Savrena Joy', 'Rael', 0, 12, 0, '2100287', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(157, 'Ace John', 'Casuyon', 0, 12, 0, '21100393', 'DianaraSayon', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0', '0', 0, 0),
(158, 'Rose Mae', 'Pido', 0, 12, 0, '21101195', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(159, 'Mary Ann', 'Panaguiton', 0, 12, 0, '21100701', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(162, 'kimberly kaye', 'salvatierra', 0, 14, 0, '21101182', 'kimzteng', 'uploads/29001002.jpg', 'Registered', '0', '0', 0, 0),
(210, 'cherylda', 'ohiman', 0, 20, 0, '21300036', 'sawsa', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0', '0', 0, 0),
(164, 'Alit', 'Arvin', 0, 14, 0, '20101605', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(165, 'Ana Mae', 'Alquizar', 0, 14, 0, '21100785', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(166, 'Thessalonica', 'Arroz', 0, 14, 0, '21100651', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(167, 'Leslie', 'Campo', 0, 14, 0, '21100265', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(168, 'Ace', 'Casolino', 0, 14, 0, '27000921', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(169, 'Michael Jed', 'Flores', 0, 14, 0, '21100820', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(172, 'Hennie Rose', 'Laz', 0, 14, 0, '21100805', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(171, 'Joy', 'Macahilig', 0, 14, 0, '21100464', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(173, 'Ma. Nieva', 'Manuel ', 0, 14, 0, '21100711', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(174, 'Devina', 'Navarro', 0, 14, 0, '21100711', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(175, 'Aimee', 'Orlido', 0, 14, 0, '21100654', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(176, 'Mary Grace', 'Quizan', 0, 14, 0, '21100772', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(177, 'John Christopher', 'Reguindin', 0, 14, 0, '21100418', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(178, 'Mary Ann', 'Somosa', 0, 14, 0, '21101150', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(179, 'Marrianne', 'Tumala', 0, 14, 0, '21100710', 'test', 'uploads/win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', 'Registered', '0', '0', 0, 0),
(180, 'Deo Christopher', 'Tribaco', 0, 14, 0, '21101227', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(181, 'Jerson', 'Vargas', 0, 14, 0, '21100819', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(182, 'Valencia', 'Jeralice', 0, 14, 0, '29000405', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(183, 'Cristine', 'Yanson', 0, 14, 0, '21101148', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(184, 'Ariane', 'Alix', 0, 17, 0, '21201166', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(185, 'Mark Arvin', 'Arandilla', 0, 17, 0, '21201453', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(186, 'Ryan Carl', 'Biaquis', 0, 17, 0, '21201244', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(187, 'Ria', 'Bitar', 0, 17, 0, '21201282', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(188, 'Jeremae', 'Bustamante', 0, 17, 0, '21200798', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(189, 'Rhen Mark', 'Callado', 0, 17, 0, '21201012', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(190, 'Ma. Geraldine', 'Carisma', 0, 17, 0, '21201219', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(191, 'Jenny', 'Casapao', 0, 17, 0, '21200855', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(192, 'Welson', 'Castro', 0, 17, 0, '120733', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(193, 'Kimberly Hope', 'Centina', 0, 17, 0, '21201338', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(194, 'Sandra', 'Gomez', 0, 17, 0, '21201335', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(195, 'Dona Jean', 'Guardialao', 0, 17, 0, '21201113', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(196, 'Jeara Mae', 'Guttierrez', 0, 17, 0, '21200782', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(197, 'Mary Joy', 'Jimenez', 0, 17, 0, '21201437', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(198, 'Cyril', 'Lambayong', 0, 17, 0, '21201163', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(199, 'Angelie', 'Lape', 0, 17, 0, '21201356', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(200, 'Jamine', 'Navarosa', 0, 17, 0, '21201115', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(201, 'Allen Joshua', 'Nicor', 0, 17, 0, '21201430', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(202, 'Charis', 'Onate', 0, 17, 0, '21200984', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(203, 'Ikea', 'Padonio', 0, 17, 0, '20100527', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(204, 'Marissa', 'Pasco', 0, 17, 0, '21200935', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(205, 'Kenneth', 'Sayon', 0, 17, 0, '21201268', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(206, 'Mary Grace', 'Morales', 0, 14, 0, '21100293', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(207, 'Danica', 'Delarmente', 0, 14, 0, '21100613', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(208, 'Irish Dawn', 'Belo', 0, 19, 0, '21300413', 'olebirish', 'uploads/Desert.jpg', 'Registered', '0', '0', 0, 0),
(211, 'val', 'roushen', 0, 7, 0, '201011231', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(212, 'chrystelle Marie', 'Belecina', 0, 15, 0, '21200363', 'chrys', 'uploads/380903_288008981235527_682004916_n.jpg', 'Registered', '0', '0', 0, 0),
(213, 'kearl joy', 'bartolome', 0, 18, 0, '21300410', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(214, 'marie', 'rojo', 0, 18, 0, '21300375', 'maayeeh', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0', '0', 0, 0),
(215, 'cristine', 'trespuer', 0, 18, 0, '21300258', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(216, 'arian', 'baldostamon', 0, 18, 0, '21300176', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(217, 'Alyssa', 'David', 0, 17, 0, '21200507', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '0', '0', 0, 0),
(218, 'josie', 'banday', 0, 7, 0, '20100452', 'heaven', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0', '0', 0, 0),
(219, 'Claire ', 'Blake', 0, 18, 0, '2011120', 'cblake123', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '0', '0', 0, 0),
(232, 'sagar', 'sagar', 77889999, 7, 0, '112233', 'sagar', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered', '7019190195', '7019190198', 0, 0),
(244, 'Uday', 'Patil', 2081999, 22, 5, '2BL17ME136', '', '', 'Unregistered', '', '', 0, 0),
(245, 'omer', 'kazi', 0, 8, 0, '2bl16cs054', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(246, 'jb', 'mnmn', 0, 13, 0, '22112', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(247, 'asqq', 'as', 0, 8, 0, '5555', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(248, 'sa', 'as', 0, 18, 0, '122', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(249, 's', 'z', 0, 18, 0, '1222', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(250, 'Uday', 'Patil', 2081999, 12, 9, '2BL17ME134', '', '', 'Unregistered', '', '', 0, 0),
(251, 'Uday', 'Patil', 2081999, 12, 9, '2BL17ME135', '', '', 'Unregistered', '', '', 0, 0),
(252, 'Uday', 'Patil', 2081999, 12, 9, '2BL17ME137', '', '', 'Unregistered', '', '', 0, 0),
(253, 'Uday', 'Patil', 2081999, 12, 9, '2BL17ME138', '', '', 'Unregistered', '', '', 0, 0),
(254, 'Uday', 'Patil', 2081999, 12, 9, '2BL17ME139', '', '', 'Unregistered', '', '', 0, 0),
(255, 'Uday', 'Patil', 2081999, 12, 9, '2BL17ME140', '', '', 'Unregistered', '', '', 0, 0),
(256, 'Uday', 'Patil', 2081999, 12, 9, '2BL17ME141', '', '', 'Unregistered', '', '', 0, 0),
(257, 'asfsd', 'dsfsdf', 0, 18, 9, '5556', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(258, 'asasd', 'fdszdfsd', 0, 19, 9, '349815', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(259, 'asfdsqwfsdxf', 'wesdfsdf', 0, 19, 9, '464', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(260, 'tqqqq', 'awwww', 77889999, 8, 4, '22112', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(261, 'tqqqq', 'awwww', 77889999, 8, 4, '22112', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(262, 'tqqqq', 'awwww', 77889999, 8, 4, '22112', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(263, 'qwerty', 'io', 22552222, 13, 4, '11111', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 0, 0),
(264, 'omer', 'saif', 19032021, 25, 0, '22ee3322', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 23, 0),
(265, 'omer', 'saif', 19032021, 25, 0, '22ee3322', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 23, 0),
(266, 'omer', 'saif', 11223333, 25, 0, '22ee3355', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 21, 0),
(267, 'omer', 'saif', 11223333, 25, 0, '22ee3355', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 21, 0),
(268, 'omer', 'saif', 11224444, 24, 0, '21WW2255', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 55, 0),
(269, 'omer', 'saif', 225511111, 26, 0, '21WW2266', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 52, 0),
(270, 'omer', 'saif', 88775555, 24, 0, '22ee3322', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered', '', '', 58, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `roll_no` varchar(215) NOT NULL,
  `marks_alloc` varchar(250) NOT NULL,
  `totalmarks` varchar(115) NOT NULL,
  `status_assignment` int(11) NOT NULL,
  `teacher_class_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`, `roll_no`, `marks_alloc`, `totalmarks`, `status_assignment`, `teacher_class_id`) VALUES
(1, 31, 'admin/uploads/7820_File_sample.pdf', '2020-12-21 10:12:04', 'aaa', 'asdasd', 219, '30', '', '', '', 0, ''),
(2, 41, 'admin/uploads/6991_File_Jan-2019.pdf', '2020-12-31 18:56:28', 'test', 'test', 111, '', '', '', '', 0, ''),
(3, 32, 'admin/uploads/1378_File_studentsSheet.xlsx', '2021-01-01 10:21:51', 'roll no-50', 'assign', 111, '45', '', '', '', 0, ''),
(4, 43, 'admin/uploads/8900_File_studentsSheet.xlsx', '2021-01-01 10:58:22', 'roll no-50', 'assign', 111, '50', '', '', '', 0, ''),
(5, 45, 'admin/uploads/2706_File_studentsSheet.xlsx', '2021-01-01 11:30:11', 'dsd', 'sdsd', 111, '', '', '', '', 0, ''),
(6, 47, 'admin/uploads/1504_File_studentsSheet.xlsx', '2021-01-01 11:43:32', 'ass', 'asss', 111, '', '', '', '', 0, ''),
(7, 55, 'admin/uploads/2824_File_studentsSheet.xlsx', '2021-01-01 12:23:49', 'roll no-50', 'hgggg', 111, '', '', '', '', 0, ''),
(8, 55, 'admin/uploads/3014_File_studentsSheet.xlsx', '2021-01-01 12:27:09', 'roll no-50', 'assign', 137, '', '', '', '', 0, ''),
(9, 55, 'admin/uploads/8302_File_studentsSheet.xlsx', '2021-01-01 17:00:58', 'asas', 'hgggg', 111, '', '', '', '', 0, ''),
(10, 55, 'admin/uploads/6352_File_studentsSheet.xlsx', '2021-01-01 17:03:41', 'asadsdkdnj', 'assign', 111, '', '', '', '', 0, ''),
(11, 55, 'admin/uploads/1892_File_Jan-2019.pdf', '2021-01-01 17:08:27', 'description', 'suhaKJASDH', 111, '', '', '', '', 0, ''),
(12, 55, 'admin/uploads/4568_File_Jan-2019.pdf', '2021-01-01 17:14:59', 'DSSAsd', 'asda', 111, '', 'asdaWQ', '', '', 0, ''),
(13, 55, 'admin/uploads/1937_File_11414017524-NOV-20365767.PDF', '2021-01-02 11:42:45', 'assignment-0011', 'assignment', 111, '', '50', '', '', 0, ''),
(14, 55, 'admin/uploads/5304_File_terms-and-condition.pdf', '2021-01-02 11:56:43', 'assignment-00120', 'assignment', 111, '', '55', '', '', 0, ''),
(16, 61, 'admin/uploads/1331_File_Jan-2019.pdf', '2021-01-15 13:17:34', 'sadasd', 'hii', 137, '20', '20', '', '', 0, '196'),
(17, 60, 'admin/uploads/9444_File_Courses_Pharmacy.pdf', '2021-01-15 15:20:53', 'sad', 'saas', 111, '65', '58', '{\"questions\":[{\"questionNo\":\"1\",\"marksObtained\":\"45\"},{\"questionNo\":\"2\",\"marksObtained\":\"20\"}]}', '', 1, '196'),
(18, 57, 'admin/uploads/5324_File_Jan-2019.pdf', '2021-01-16 11:24:09', 'sad', 'sd', 111, '', '22', '', '', 1, '196'),
(19, 57, 'admin/uploads/8872_File_pdkeaAO_NC071_2021_01_12_13_21_08.pdf', '2021-01-18 11:35:17', 'khygh', '22222', 111, '', '33', '', '', 1, '196'),
(20, 65, 'admin/uploads/2106_File_pdkeaAO_NC071_2021_01_12_13_21_08.pdf', '2021-01-18 11:52:35', 'sqdwe224', 'awwqqqqq', 111, '40', '12', '{\"questions\":[{\"questionNo\":\"1\",\"marksObtained\":\"20\"},{\"questionNo\":\"2\",\"marksObtained\":\"20\"}]}', '', 1, '196');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test'),
(2, 'admin/uploads/9782_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(3, 'admin/uploads/6898_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234'),
(4, 'admin/uploads/3579_File_sample.pdf', '2020-12-21 10:12:54', 'adasd', 219, '234234');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0'),
(3, 17, 219, '3600', '1 out of 3'),
(4, 19, 111, '1189', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `cid` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`, `cid`) VALUES
(14, '17MAT31-A', 'engineering maths-A', '', 'Engineering Mathematics – III', 3, '', '', 7),
(43, '17CS45-A ', 'OOC-A', '', 'object oriented concepts', 4, '', '4', 12),
(44, '15CS4-B ', 'OOC-B', '', 'object oriented concepts', 0, '', '4', 13),
(15, '17MAT31-B', 'engineering maths-B', '', '<p><span style=\"font-size: medium;\"><em>About the Subject</em></span></p>\r\n<p>This subject is intended for IT students to develop or enhance communication skills that will be beneficial especially when used in the business industry. The lesson includes Verbal Communication (Written and Oral), Non-verbal Communication, etc.</p>', 3, '', '', 8),
(16, '17CS32-A', 'ADE-A', '', '<pre class=\"coursera-course-heading\" data-msg=\"coursera-course-about\"><span style=\"font-size: medium;\"><em>About the Subject</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">Learn many of the concepts that underlie all programming languages. Develop a programming style known as functional programming and contrast it with object-oriented programming. Through experience writing programs and studying three different languages, learn the key issues in designing and using programming languages, such as modularity and the complementary benefits of static and dynamic typing. This course is neither particularly theoretical nor just about programming specifics &ndash; it will give you a framework for understanding how to use language constructs effectively and how to design correct and elegant programs. By using different languages, you learn to think more deeply than in terms of the particular syntax of one language. The emphasis on functional programming is essential for learning how to write robust, reusable, composable, and elegant programs &ndash; in any language.</div>\r\n<h2 class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">&nbsp;</h2>\r\n<pre class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\"><span style=\"font-size: medium;\"><em>&nbsp;Course Syllabus</em></span></pre>\r\n<div class=\"coursera-course-detail\" data-user-generated=\"data-user-generated\">\r\n<ul>\r\n<li>Syntax vs. semantics vs. idioms vs. libraries vs. tools</li>\r\n<li>ML basics (bindings, conditionals, records, functions)</li>\r\n<li>Recursive functions and recursive types</li>\r\n<li>Benefits of no mutation</li>\r\n<li>Algebraic datatypes, pattern matching</li>\r\n<li>Tail recursion</li>\r\n<li>First-class functions and function closures</li>\r\n<li>Lexical scope</li>\r\n<li>Equivalence and effects</li>\r\n<li>Parametric polymorphism and container types</li>\r\n<li>Type inference</li>\r\n<li>Abstract types and modules</li>\r\n<li>Racket basics</li>\r\n<li>Dynamic vs. static typing</li>\r\n<li>Implementing languages, especially higher-order functions</li>\r\n<li>Macro</li>\r\n<li>Ruby basics</li>\r\n<li>Object-oriented programming</li>\r\n<li>Pure object-orientation</li>\r\n<li>Implementing dynamic dispatch</li>\r\n<li>Multiple inheritance, interfaces, and mixins</li>\r\n<li>OOP vs. functional decomposition and extensibility</li>\r\n<li>Subtyping for records, functions, and objects</li>\r\n<li>Subtyping</li>\r\n<li>Class-based subtyping</li>\r\n<li>Subtyping vs. parametric polymorphism; bounded polymorphism</li>\r\n</ul>\r\n</div>', 3, '', '', 7),
(17, '17CS32-B', 'ADE-B', '', '<p>This subject discusses about Ethics, E-Commerce, Cybercrime Law, Computer Security, etc.</p>', 0, '', '', 8),
(22, '17CS42-A', 'software engineering-A', '', '', 3, '', '4', 12),
(23, '17CS42-B ', 'software engineering-B', '', '', 3, '', '4', 13),
(24, '17CS43-A', 'DA-A', '', '', 3, '', '4', 12),
(25, '17CS43-B ', 'DA-B', '', '', 3, '', '4', 13),
(45, '22ee33', 'wwqw', '', '', 1, '', '3rd', 7),
(46, '19cs-098', 'qwerty', '', '', 5, '', '5th', 7);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(9, '1001', 'test', 'Jomar', 'Pabuaya', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Deactivated'),
(5, '1002', 'red', 'Cristine', 'Redoblo', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Deactivated'),
(11, '1003', 'aladin', 'Aladin', 'Cabrera', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(13, 'test', 'test', 'Rammel', 'Cadagat', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(12, '1000', 'morante', 'Ruby Mae ', 'Morante', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '<p style=\"text-align: justify;\">Dan Grossman has taught programming languages at the University of Washington since 2003. During his 10 years as a faculty member, his department&rsquo;s undergraduate students have elected him &ldquo;teacher of the year&rdquo; twice and awarded him second place once. His research, resulting in over 50 peer-reviewed publications, has covered the theory, design, and implementation of programming languages, as well as connections to computer architecture and softwar', '', 'Activated'),
(14, 'honey', 'lee', 'Honeylee', 'Magbanua', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(15, 'chaw', 'chaw', 'Charito ', 'Puray', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(17, '', '', 'Lovelyn ', 'Layson', 5, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', 'Activated'),
(18, 'test123', 'test123', 'Allan', 'Dela Torre', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(19, 'delam', 'denise', 'Denesa', 'Lamique', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', 'Activated'),
(23, '', '', 'omer', 'k', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(22, '', '', 'omer', 'kazi', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(24, '', '', 'ffffrr', 'fffrr', 9, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(25, '', '', 'Test', 'Test', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL,
  `department_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`, `department_id`) VALUES
(97, 9, 7, 15, 'admin/uploads/thumbnails.jpg', '2012-2013', 0),
(135, 0, 22, 29, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(151, 5, 7, 14, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(152, 5, 8, 14, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(153, 5, 13, 36, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(157, 18, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(158, 18, 16, 23, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(159, 18, 12, 23, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(160, 18, 7, 29, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(165, 134, 15, 23, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(167, 12, 13, 35, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(168, 12, 14, 35, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(170, 12, 16, 24, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(172, 18, 13, 39, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(173, 18, 14, 39, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(174, 13, 12, 16, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(175, 13, 13, 16, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(176, 13, 14, 16, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(177, 14, 12, 32, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(178, 14, 13, 32, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(179, 14, 14, 32, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(180, 19, 13, 22, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(181, 12, 20, 24, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(183, 12, 18, 24, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(184, 12, 17, 25, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(185, 12, 7, 22, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(187, 0, 0, 0, 'admin/uploads/thumbnails.jpg', '2013-2014', 0),
(196, 9, 8, 15, 'admin/uploads/thumbnails.jpg', '2020-21(e)', 4),
(197, 18, 8, 15, 'admin/uploads/thumbnails.jpg', '2020-21(e)', 4),
(198, 9, 12, 24, 'admin/uploads/thumbnails.jpg', '2020-21(e)', 4),
(199, 18, 12, 43, 'admin/uploads/thumbnails.jpg', '', 4),
(200, 18, 12, 24, 'admin/uploads/thumbnails.jpg', '', 4),
(201, 18, 12, 24, 'admin/uploads/thumbnails.jpg', '', 4),
(202, 18, 8, 15, 'admin/uploads/thumbnails.jpg', '', 4),
(203, 18, 8, 17, 'admin/uploads/thumbnails.jpg', '', 4),
(204, 18, 8, 17, 'admin/uploads/thumbnails.jpg', '', 4),
(205, 18, 8, 17, 'admin/uploads/thumbnails.jpg', '2020-21(e)', 4),
(206, 18, 12, 24, 'admin/uploads/thumbnails.jpg', '2020-21(e)', 4),
(207, 9, 13, 23, 'admin/uploads/thumbnails.jpg', '2020-21(e)', 4);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(2, '<p><strong>Project Deadline</strong></p>\r\n\r\n<p>In December 1st week&nbsp; system must fully functioning.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '9', 87, '2013-10-30 13:21:13'),
(21, '<p>fsaf</p>\r\n', '9', 87, '2013-10-30 14:33:21'),
(31, '<p>Hi im kevin i edit this</p>\r\n', '9', 87, '2013-10-30 15:41:56'),
(33, '<p>hello teph</p>\r\n', '9', 95, '2013-10-30 17:44:28'),
(34, '<p>hello guys</p>\r\n', '9', 95, '2013-11-02 10:51:39'),
(35, '<p>dsdasd</p>\r\n', '12', 147, '2013-11-16 13:59:33'),
(36, '<p>BSIS 1A: Submit assignment on November 20, 2013 before 5pm.</p>\r\n', '12', 154, '2013-11-18 15:29:34'),
(37, '<p>aaaaa<br />\r\n&nbsp;</p>\r\n', '12', 167, '2014-01-17 14:36:32'),
(38, '<p>wala klase<img alt=\"sad\" src=\"http://localhost/lms/admin/vendors/ckeditor/plugins/smiley/images/sad_smile.gif\" style=\"height:20px; width:20px\" title=\"sad\" /></p>\r\n', '12', 167, '2014-02-13 13:45:59'),
(40, '<p>q908rt4</p>\r\n', '9', 196, '2020-12-30 10:48:48'),
(41, '<div style=\"background:#eee;border:1px solid #ccc;padding:5px 10px;\">dfsa</div>\r\n', '18', 197, '2020-12-30 13:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(31, 165, 141, 134),
(32, 165, 134, 134),
(54, 167, 113, 12),
(55, 167, 112, 12),
(58, 167, 105, 12),
(59, 167, 106, 12),
(60, 167, 103, 12),
(61, 167, 104, 12),
(62, 167, 100, 12),
(63, 167, 101, 12),
(64, 167, 102, 12),
(65, 167, 97, 12),
(66, 167, 98, 12),
(67, 167, 95, 12),
(68, 167, 94, 12),
(69, 167, 76, 12),
(71, 167, 110, 12),
(73, 167, 99, 12),
(74, 167, 96, 12),
(75, 167, 75, 12),
(76, 167, 74, 12),
(77, 167, 73, 12),
(78, 167, 72, 12),
(79, 167, 71, 12),
(80, 168, 135, 12),
(81, 168, 140, 12),
(82, 168, 162, 12),
(83, 168, 164, 12),
(84, 168, 165, 12),
(85, 168, 166, 12),
(86, 168, 167, 12),
(87, 168, 168, 12),
(88, 168, 169, 12),
(89, 168, 172, 12),
(90, 168, 171, 12),
(91, 168, 173, 12),
(92, 168, 174, 12),
(93, 168, 175, 12),
(94, 168, 176, 12),
(95, 168, 177, 12),
(96, 168, 178, 12),
(97, 168, 179, 12),
(98, 168, 180, 12),
(99, 168, 181, 12),
(100, 168, 182, 12),
(101, 168, 183, 12),
(102, 168, 206, 12),
(103, 168, 207, 12),
(127, 172, 113, 18),
(128, 172, 112, 18),
(129, 172, 111, 18),
(131, 172, 105, 18),
(132, 172, 106, 18),
(133, 172, 103, 18),
(134, 172, 104, 18),
(135, 172, 100, 18),
(136, 172, 101, 18),
(137, 172, 102, 18),
(138, 172, 97, 18),
(139, 172, 98, 18),
(140, 172, 95, 18),
(141, 172, 94, 18),
(142, 172, 76, 18),
(144, 172, 110, 18),
(146, 172, 99, 18),
(147, 172, 96, 18),
(148, 172, 75, 18),
(149, 172, 74, 18),
(150, 172, 73, 18),
(151, 172, 72, 18),
(152, 172, 71, 18),
(153, 173, 135, 18),
(154, 173, 140, 18),
(155, 173, 162, 18),
(156, 173, 164, 18),
(157, 173, 165, 18),
(158, 173, 166, 18),
(159, 173, 167, 18),
(160, 173, 168, 18),
(161, 173, 169, 18),
(162, 173, 172, 18),
(163, 173, 171, 18),
(164, 173, 173, 18),
(165, 173, 174, 18),
(166, 173, 175, 18),
(167, 173, 176, 18),
(168, 173, 177, 18),
(169, 173, 178, 18),
(170, 173, 179, 18),
(171, 173, 180, 18),
(172, 173, 181, 18),
(173, 173, 182, 18),
(174, 173, 183, 18),
(175, 173, 206, 18),
(176, 173, 207, 18),
(177, 174, 134, 13),
(178, 174, 142, 13),
(179, 174, 143, 13),
(180, 174, 144, 13),
(181, 174, 145, 13),
(182, 174, 146, 13),
(183, 174, 147, 13),
(184, 174, 148, 13),
(185, 174, 149, 13),
(186, 174, 150, 13),
(187, 174, 151, 13),
(188, 174, 152, 13),
(189, 174, 153, 13),
(190, 174, 154, 13),
(191, 174, 155, 13),
(192, 174, 156, 13),
(193, 174, 157, 13),
(194, 174, 158, 13),
(195, 174, 159, 13),
(196, 175, 113, 13),
(197, 175, 112, 13),
(198, 175, 111, 13),
(200, 175, 105, 13),
(201, 175, 106, 13),
(202, 175, 103, 13),
(203, 175, 104, 13),
(204, 175, 100, 13),
(205, 175, 101, 13),
(206, 175, 102, 13),
(207, 175, 97, 13),
(208, 175, 98, 13),
(209, 175, 95, 13),
(210, 175, 94, 13),
(211, 175, 76, 13),
(213, 175, 110, 13),
(215, 175, 99, 13),
(216, 175, 96, 13),
(217, 175, 75, 13),
(218, 175, 74, 13),
(219, 175, 73, 13),
(220, 175, 72, 13),
(221, 175, 71, 13),
(222, 176, 135, 13),
(223, 176, 140, 13),
(224, 176, 162, 13),
(225, 176, 164, 13),
(226, 176, 165, 13),
(227, 176, 166, 13),
(228, 176, 167, 13),
(229, 176, 168, 13),
(230, 176, 169, 13),
(231, 176, 172, 13),
(232, 176, 171, 13),
(233, 176, 173, 13),
(234, 176, 174, 13),
(235, 176, 175, 13),
(236, 176, 176, 13),
(237, 176, 177, 13),
(238, 176, 178, 13),
(239, 176, 179, 13),
(240, 176, 180, 13),
(241, 176, 181, 13),
(242, 176, 182, 13),
(243, 176, 183, 13),
(244, 176, 206, 13),
(245, 176, 207, 13),
(246, 177, 134, 14),
(247, 177, 142, 14),
(248, 177, 143, 14),
(249, 177, 144, 14),
(250, 177, 145, 14),
(251, 177, 146, 14),
(252, 177, 147, 14),
(253, 177, 148, 14),
(254, 177, 149, 14),
(255, 177, 150, 14),
(256, 177, 151, 14),
(257, 177, 152, 14),
(258, 177, 153, 14),
(259, 177, 154, 14),
(260, 177, 155, 14),
(261, 177, 156, 14),
(262, 177, 157, 14),
(263, 177, 158, 14),
(264, 177, 159, 14),
(265, 178, 113, 14),
(266, 178, 112, 14),
(267, 178, 111, 14),
(269, 178, 105, 14),
(270, 178, 106, 14),
(271, 178, 103, 14),
(272, 178, 104, 14),
(273, 178, 100, 14),
(274, 178, 101, 14),
(275, 178, 102, 14),
(276, 178, 97, 14),
(277, 178, 98, 14),
(278, 178, 95, 14),
(279, 178, 94, 14),
(280, 178, 76, 14),
(282, 178, 110, 14),
(284, 178, 99, 14),
(285, 178, 96, 14),
(286, 178, 75, 14),
(287, 178, 74, 14),
(288, 178, 73, 14),
(289, 178, 72, 14),
(290, 178, 71, 14),
(291, 179, 135, 14),
(292, 179, 140, 14),
(293, 179, 162, 14),
(294, 179, 164, 14),
(295, 179, 165, 14),
(296, 179, 166, 14),
(297, 179, 167, 14),
(298, 179, 168, 14),
(299, 179, 169, 14),
(300, 179, 172, 14),
(301, 179, 171, 14),
(302, 179, 173, 14),
(303, 179, 174, 14),
(304, 179, 175, 14),
(305, 179, 176, 14),
(306, 179, 177, 14),
(307, 179, 178, 14),
(308, 179, 179, 14),
(309, 179, 180, 14),
(310, 179, 181, 14),
(311, 179, 182, 14),
(312, 179, 183, 14),
(313, 179, 206, 14),
(314, 179, 207, 14),
(315, 180, 113, 19),
(316, 180, 112, 19),
(317, 180, 111, 19),
(319, 180, 105, 19),
(320, 180, 106, 19),
(321, 180, 103, 19),
(322, 180, 104, 19),
(323, 180, 100, 19),
(324, 180, 101, 19),
(325, 180, 102, 19),
(326, 180, 97, 19),
(327, 180, 98, 19),
(328, 180, 95, 19),
(329, 180, 94, 19),
(330, 180, 76, 19),
(332, 180, 110, 19),
(334, 180, 99, 19),
(335, 180, 96, 19),
(336, 180, 75, 19),
(337, 180, 74, 19),
(338, 180, 73, 19),
(339, 180, 72, 19),
(340, 180, 71, 19),
(341, 181, 209, 12),
(342, 181, 210, 12),
(345, 183, 213, 12),
(346, 183, 214, 12),
(347, 183, 215, 12),
(348, 183, 216, 12),
(349, 184, 184, 12),
(350, 184, 185, 12),
(351, 184, 186, 12),
(352, 184, 187, 12),
(353, 184, 188, 12),
(354, 184, 189, 12),
(355, 184, 190, 12),
(356, 184, 191, 12),
(358, 184, 193, 12),
(359, 184, 194, 12),
(360, 184, 195, 12),
(361, 184, 196, 12),
(362, 184, 197, 12),
(363, 184, 198, 12),
(364, 184, 199, 12),
(365, 184, 200, 12),
(366, 184, 201, 12),
(367, 184, 202, 12),
(368, 184, 203, 12),
(369, 184, 204, 12),
(370, 184, 205, 12),
(371, 184, 217, 12),
(372, 184, 192, 12),
(373, 185, 93, 12),
(374, 185, 136, 12),
(375, 185, 138, 12),
(376, 185, 139, 12),
(377, 185, 211, 12),
(385, 152, 113, 5),
(386, 152, 111, 111),
(472, 196, 137, 9),
(473, 196, 111, 9),
(474, 197, 137, 18),
(475, 198, 134, 9),
(476, 198, 142, 9),
(477, 198, 143, 9),
(478, 198, 144, 9),
(479, 198, 145, 9),
(480, 198, 146, 9),
(481, 198, 147, 9),
(482, 198, 148, 9),
(483, 198, 149, 9),
(484, 198, 150, 9),
(485, 198, 151, 9),
(486, 198, 152, 9),
(487, 198, 153, 9),
(488, 198, 154, 9),
(489, 198, 155, 9),
(490, 198, 156, 9),
(491, 198, 157, 9),
(492, 198, 158, 9),
(493, 198, 159, 9),
(494, 199, 134, 18),
(495, 199, 142, 18),
(496, 199, 143, 18),
(497, 199, 144, 18),
(498, 199, 145, 18),
(499, 199, 146, 18),
(500, 199, 147, 18),
(501, 199, 148, 18),
(502, 199, 149, 18),
(503, 199, 150, 18),
(504, 199, 151, 18),
(505, 199, 152, 18),
(506, 199, 153, 18),
(507, 199, 154, 18),
(508, 199, 155, 18),
(509, 199, 156, 18),
(510, 199, 157, 18),
(511, 199, 158, 18),
(512, 199, 159, 18),
(513, 200, 134, 18),
(514, 200, 142, 18),
(515, 200, 143, 18),
(516, 200, 144, 18),
(517, 200, 145, 18),
(518, 200, 146, 18),
(519, 200, 147, 18),
(520, 200, 148, 18),
(521, 200, 149, 18),
(522, 200, 150, 18),
(523, 200, 151, 18),
(524, 200, 152, 18),
(525, 200, 153, 18),
(526, 200, 154, 18),
(527, 200, 155, 18),
(528, 200, 156, 18),
(529, 200, 157, 18),
(530, 200, 158, 18),
(531, 200, 159, 18),
(532, 201, 134, 18),
(533, 201, 142, 18),
(534, 201, 143, 18),
(535, 201, 144, 18),
(536, 201, 145, 18),
(537, 201, 146, 18),
(538, 201, 147, 18),
(539, 201, 148, 18),
(540, 201, 149, 18),
(541, 201, 150, 18),
(542, 201, 151, 18),
(543, 201, 152, 18),
(544, 201, 153, 18),
(545, 201, 154, 18),
(546, 201, 155, 18),
(547, 201, 156, 18),
(548, 201, 157, 18),
(549, 201, 158, 18),
(550, 201, 159, 18),
(551, 202, 137, 18),
(552, 203, 137, 18),
(553, 204, 137, 18),
(554, 205, 137, 18),
(555, 206, 134, 18),
(556, 206, 142, 18),
(557, 206, 143, 18),
(558, 206, 144, 18),
(559, 206, 145, 18),
(560, 206, 146, 18),
(561, 206, 147, 18),
(562, 206, 148, 18),
(563, 206, 149, 18),
(564, 206, 150, 18),
(565, 206, 151, 18),
(566, 206, 152, 18),
(567, 206, 153, 18),
(568, 206, 154, 18),
(569, 206, 155, 18),
(570, 206, 156, 18),
(571, 206, 157, 18),
(572, 206, 158, 18),
(573, 206, 159, 18),
(574, 207, 113, 9),
(575, 207, 112, 9),
(576, 207, 111, 9),
(577, 207, 105, 9),
(578, 207, 106, 9),
(579, 207, 103, 9),
(580, 207, 104, 9),
(581, 207, 100, 9),
(582, 207, 101, 9),
(583, 207, 102, 9),
(584, 207, 97, 9),
(585, 207, 98, 9),
(586, 207, 95, 9),
(587, 207, 94, 9),
(588, 207, 76, 9),
(589, 207, 110, 9),
(590, 207, 99, 9),
(591, 207, 96, 9),
(592, 207, 75, 9),
(593, 207, 74, 9),
(594, 207, 73, 9),
(595, 207, 72, 9),
(596, 207, 71, 9),
(597, 207, 234, 9);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(15, 160, 'Submit Assignment file name <b>my_assginment</b>', '2013-11-25 10:39:52', 'view_submit_assignment.php', 93, 16),
(17, 161, 'Submit Assignment file name <b>q</b>', '2013-11-25 15:54:19', 'view_submit_assignment.php', 71, 17),
(19, 196, 'Submit Assignment file name <b>test</b>', '2020-12-31 18:56:28', 'view_submit_assignment.php', 111, 41),
(20, 196, 'Submit Assignment file name <b>assign</b>', '2021-01-01 10:21:51', 'view_submit_assignment.php', 111, 32),
(21, 196, 'Submit Assignment file name <b>assign</b>', '2021-01-01 10:58:22', 'view_submit_assignment.php', 111, 43),
(22, 196, 'Submit Assignment file name <b>sdsd</b>', '2021-01-01 11:30:11', 'view_submit_assignment.php', 111, 45),
(23, 196, 'Submit Assignment file name <b>asss</b>', '2021-01-01 11:43:32', 'view_submit_assignment.php', 111, 47),
(24, 196, 'Submit Assignment file name <b>hgggg</b>', '2021-01-01 12:23:49', 'view_submit_assignment.php', 111, 55),
(25, 196, 'Submit Assignment file name <b>assign</b>', '2021-01-01 12:27:09', 'view_submit_assignment.php', 137, 55),
(26, 196, 'Submit Assignment file name <b>52</b>', '2021-01-01 16:58:59', 'view_submit_assignment.php', 111, 55),
(27, 196, 'Submit Assignment file name <b>hgggg</b>', '2021-01-01 17:00:58', 'view_submit_assignment.php', 111, 55),
(28, 196, 'Submit Assignment file name <b>assign</b>', '2021-01-01 17:03:41', 'view_submit_assignment.php', 111, 55),
(29, 196, 'Submit Assignment file name <b>suhaKJASDH</b>', '2021-01-01 17:08:27', 'view_submit_assignment.php', 111, 55),
(30, 196, 'Submit Assignment file name <b>asda</b>', '2021-01-01 17:14:59', 'view_submit_assignment.php', 111, 55),
(31, 196, 'Submit Assignment file name <b>assignment</b>', '2021-01-02 11:42:45', 'view_submit_assignment.php', 111, 55),
(32, 196, 'Submit Assignment file name <b>assignment</b>', '2021-01-02 11:56:43', 'view_submit_assignment.php', 111, 55),
(33, 196, 'Submit Assignment file name <b>sir me sir</b>', '2021-01-12 19:59:05', 'view_submit_assignment.php', 111, 60),
(34, 196, 'Submit Assignment file name <b>hii</b>', '2021-01-15 13:17:34', 'view_submit_assignment.php', 137, 60),
(35, 196, 'Submit Assignment file name <b>saas</b>', '2021-01-15 15:20:53', 'view_submit_assignment.php', 111, 60),
(36, 196, 'Submit Assignment file name <b>sd</b>', '2021-01-16 11:24:09', 'view_submit_assignment.php', 111, 57),
(37, 196, 'Submit Assignment file name <b>22222</b>', '2021-01-18 11:35:17', 'view_submit_assignment.php', 111, 57),
(38, 196, 'Submit Assignment file name <b>awwqqqqq</b>', '2021-01-18 11:52:35', 'view_submit_assignment.php', 111, 65);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `did`) VALUES
(13, 'teph', 'teph', 'Stephanie', 'villanueva', 0),
(14, 'jkev', 'jkev', 'john kevin', 'lorayna', 0),
(15, 'admin', 'admin', 'admin', 'admin', 0),
(16, 'udayptl9', 'testing123', 'Uday', 'Patil', 9),
(17, 'agasar123', 'testing123', 'Vishal', 'Agasar', 5),
(18, 'csAdmin', 'testing123', 'csAdmin', 'cdAdmin', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'admin', '2013-11-01 11:57:33', '2013-11-18 10:33:54', 10),
(2, 'admin', '2013-11-05 09:52:09', '2013-11-18 10:33:54', 10),
(3, 'admin', '2013-11-08 10:41:09', '2013-11-18 10:33:54', 10),
(4, 'admin', '2013-11-12 22:53:05', '2013-11-18 10:33:54', 10),
(5, 'admin', '2013-11-13 07:07:04', '2013-11-18 10:33:54', 10),
(6, 'admin', '2013-11-13 13:07:58', '2013-11-18 10:33:54', 10),
(7, 'admin', '2013-11-13 13:30:45', '2013-11-18 10:33:54', 10),
(8, 'admin', '2013-11-13 15:25:20', '2013-11-18 10:33:54', 10),
(9, 'admin', '2013-11-13 15:46:28', '2013-11-18 10:33:54', 10),
(10, 'admin', '2013-11-13 16:04:10', '2013-11-18 10:33:54', 10),
(11, 'admin', '2013-11-13 17:31:37', '2013-11-18 10:33:54', 10),
(12, 'admin', '2013-11-13 22:47:45', '2013-11-18 10:33:54', 10),
(13, 'admin', '2013-11-14 10:27:06', '2013-11-18 10:33:54', 10),
(14, 'admin', '2013-11-14 10:27:55', '2013-11-18 10:33:54', 10),
(15, 'admin', '2013-11-14 10:38:08', '2013-11-18 10:33:54', 10),
(16, 'admin', '2013-11-14 10:38:09', '2013-11-18 10:33:54', 10),
(17, 'admin', '2013-11-14 10:41:06', '2013-11-18 10:33:54', 10),
(18, 'admin', '2013-11-14 11:44:08', '2013-11-18 10:33:54', 10),
(19, 'admin', '2013-11-14 21:53:56', '2013-11-18 10:33:54', 10),
(20, 'admin', '2013-11-14 22:03:53', '2013-11-18 10:33:54', 10),
(21, 'admin', '2013-11-16 13:40:56', '2013-11-18 10:33:54', 10),
(22, 'admin', '2013-11-18 10:22:07', '2013-11-18 10:33:54', 10),
(23, 'jkev', '2013-11-18 10:33:59', '2014-02-13 11:19:36', 14),
(24, 'jkev', '2013-11-18 15:20:45', '2014-02-13 11:19:36', 14),
(25, 'jkev', '2013-11-18 15:42:04', '2014-02-13 11:19:36', 14),
(26, 'jkev', '2013-11-18 16:30:14', '2014-02-13 11:19:36', 14),
(27, 'jkev', '2013-11-18 16:36:44', '2014-02-13 11:19:36', 14),
(28, 'jkev', '2013-11-18 17:39:55', '2014-02-13 11:19:36', 14),
(29, 'jkev', '2013-11-18 20:06:49', '2014-02-13 11:19:36', 14),
(30, 'jkev', '2013-11-23 08:04:27', '2014-02-13 11:19:36', 14),
(31, 'teph', '2013-11-23 12:02:27', '2013-11-30 21:33:02', 13),
(32, 'teph', '2013-11-24 08:55:55', '2013-11-30 21:33:02', 13),
(33, 'jkev', '2013-11-25 10:32:16', '2014-02-13 11:19:36', 14),
(34, 'jkev', '2013-11-25 14:33:05', '2014-02-13 11:19:36', 14),
(35, 'jkev', '2013-11-25 15:02:47', '2014-02-13 11:19:36', 14),
(36, 'jkev', '2013-11-25 21:08:19', '2014-02-13 11:19:36', 14),
(37, 'jkev', '2013-11-25 23:49:58', '2014-02-13 11:19:36', 14),
(38, 'jkev', '2013-11-26 00:32:22', '2014-02-13 11:19:36', 14),
(39, 'jkev', '2013-11-26 10:39:52', '2014-02-13 11:19:36', 14),
(40, 'jkev', '2013-11-26 21:48:05', '2014-02-13 11:19:36', 14),
(41, 'jkev', '2013-11-28 23:00:00', '2014-02-13 11:19:36', 14),
(42, 'jkev', '2013-11-28 23:00:06', '2014-02-13 11:19:36', 14),
(43, 'jkev', '2013-11-30 21:28:54', '2014-02-13 11:19:36', 14),
(44, 'teph', '2013-11-30 21:32:54', '2013-11-30 21:33:02', 13),
(45, 'jkev', '2013-12-04 12:45:09', '2014-02-13 11:19:36', 14),
(46, 'teph', '2013-12-04 14:02:19', '', 13),
(47, 'jkev', '2013-12-11 11:56:15', '2014-02-13 11:19:36', 14),
(48, 'jkev', '2013-12-11 12:04:44', '2014-02-13 11:19:36', 14),
(49, 'jkev', '2013-12-12 09:44:34', '2014-02-13 11:19:36', 14),
(50, 'jkev', '2013-12-13 01:48:23', '2014-02-13 11:19:36', 14),
(51, 'jkev', '2013-12-27 09:13:20', '2014-02-13 11:19:36', 14),
(52, 'jkev', '2013-12-27 10:18:38', '2014-02-13 11:19:36', 14),
(53, 'jkev', '2013-12-27 10:35:43', '2014-02-13 11:19:36', 14),
(54, 'jkev', '2013-12-27 11:08:54', '2014-02-13 11:19:36', 14),
(55, 'jkev', '2013-12-27 11:20:25', '2014-02-13 11:19:36', 14),
(56, 'jkev', '2013-12-27 11:41:58', '2014-02-13 11:19:36', 14),
(57, 'jkev', '2013-12-27 11:43:10', '2014-02-13 11:19:36', 14),
(58, 'jkev', '2013-12-27 14:54:57', '2014-02-13 11:19:36', 14),
(59, 'jkev', '2014-01-12 20:08:26', '2014-02-13 11:19:36', 14),
(60, 'jkev', '2014-01-13 15:24:07', '2014-02-13 11:19:36', 14),
(61, 'jkev', '2014-01-13 18:46:08', '2014-02-13 11:19:36', 14),
(62, 'jkev', '2014-01-15 20:40:15', '2014-02-13 11:19:36', 14),
(63, 'jkev', '2014-01-16 14:42:02', '2014-02-13 11:19:36', 14),
(64, 'jkev', '2014-01-17 09:16:17', '2014-02-13 11:19:36', 14),
(65, 'jkev', '2014-01-17 13:25:51', '2014-02-13 11:19:36', 14),
(66, 'admin', '2014-01-17 14:41:30', '2021-01-16 16:53:39', 15),
(67, 'admin', '2014-01-17 15:56:32', '2021-01-16 16:53:39', 15),
(68, 'admin', '2014-01-26 17:45:31', '2021-01-16 16:53:39', 15),
(69, 'admin', '2014-02-13 10:45:17', '2021-01-16 16:53:39', 15),
(70, 'admin', '2014-02-13 11:05:27', '2021-01-16 16:53:39', 15),
(71, 'jkev', '2014-02-13 11:16:48', '2014-02-13 11:19:36', 14),
(72, 'admin', '2014-02-13 11:55:36', '2021-01-16 16:53:39', 15),
(73, 'admin', '2014-02-13 12:32:38', '2021-01-16 16:53:39', 15),
(74, 'admin', '2014-02-13 12:52:05', '2021-01-16 16:53:39', 15),
(75, 'admin', '2014-02-13 13:04:35', '2021-01-16 16:53:39', 15),
(76, 'jkev', '2014-02-13 14:35:27', '', 14),
(77, 'admin', '2014-02-20 09:40:39', '2021-01-16 16:53:39', 15),
(78, 'admin', '2014-02-20 09:42:21', '2021-01-16 16:53:39', 15),
(79, 'admin', '2014-02-27 22:40:15', '2021-01-16 16:53:39', 15),
(80, 'admin', '2014-02-28 13:12:52', '2021-01-16 16:53:39', 15),
(81, 'admin', '2014-04-02 17:27:47', '2021-01-16 16:53:39', 15),
(82, 'admin', '2014-04-03 15:29:38', '2021-01-16 16:53:39', 15),
(83, 'admin', '2014-06-15 12:31:51', '2021-01-16 16:53:39', 15),
(84, 'Admin', '2020-12-21 08:32:51', '2021-01-16 16:53:39', 15),
(85, 'admin', '2020-12-21 08:48:23', '2021-01-16 16:53:39', 15),
(86, 'admin', '2020-12-24 21:29:17', '2021-01-16 16:53:39', 15),
(87, 'admin', '2020-12-26 00:38:43', '2021-01-16 16:53:39', 15),
(88, 'admin', '2020-12-26 00:52:35', '2021-01-16 16:53:39', 15),
(89, 'admin', '2020-12-26 10:48:35', '2021-01-16 16:53:39', 15),
(90, 'admin', '2020-12-26 11:11:36', '2021-01-16 16:53:39', 15),
(91, 'admin', '2020-12-26 12:41:02', '2021-01-16 16:53:39', 15),
(92, 'admin', '2020-12-26 12:55:29', '2021-01-16 16:53:39', 15),
(93, 'admin', '2020-12-28 12:53:41', '2021-01-16 16:53:39', 15),
(94, 'admin', '2020-12-28 16:26:03', '2021-01-16 16:53:39', 15),
(95, 'admin', '2020-12-29 09:12:14', '2021-01-16 16:53:39', 15),
(96, 'admin', '2020-12-29 09:32:40', '2021-01-16 16:53:39', 15),
(97, 'admin', '2020-12-29 15:46:16', '2021-01-16 16:53:39', 15),
(98, 'admin', '2020-12-31 14:41:00', '2021-01-16 16:53:39', 15),
(99, 'admin', '2020-12-31 15:52:19', '2021-01-16 16:53:39', 15),
(100, 'admin', '2020-12-31 16:09:30', '2021-01-16 16:53:39', 15),
(101, 'admin', '2020-12-31 17:00:25', '2021-01-16 16:53:39', 15),
(102, 'admin', '2020-12-31 17:02:43', '2021-01-16 16:53:39', 15),
(103, 'admin', '2020-12-31 17:13:31', '2021-01-16 16:53:39', 15),
(104, 'admin', '2020-12-31 17:24:03', '2021-01-16 16:53:39', 15),
(105, 'admin', '2020-12-31 17:26:59', '2021-01-16 16:53:39', 15),
(106, 'admin', '2020-12-31 17:28:52', '2021-01-16 16:53:39', 15),
(107, 'admin', '2020-12-31 17:53:58', '2021-01-16 16:53:39', 15),
(108, 'admin', '2020-12-31 20:06:27', '2021-01-16 16:53:39', 15),
(109, 'admin', '2020-12-31 20:34:00', '2021-01-16 16:53:39', 15),
(110, 'admin', '2021-01-01 10:18:33', '2021-01-16 16:53:39', 15),
(111, 'admin', '2021-01-01 11:20:11', '2021-01-16 16:53:39', 15),
(112, 'admin', '2021-01-04 18:06:37', '2021-01-16 16:53:39', 15),
(113, 'admin', '2021-01-06 18:38:07', '2021-01-16 16:53:39', 15),
(114, 'admin', '2021-01-07 01:26:27', '2021-01-16 16:53:39', 15),
(115, 'admin', '2021-01-07 16:24:28', '2021-01-16 16:53:39', 15),
(116, 'admin', '2021-01-07 16:45:19', '2021-01-16 16:53:39', 15),
(117, 'admin', '2021-01-07 19:24:02', '2021-01-16 16:53:39', 15),
(118, 'admin', '2021-01-07 19:38:43', '2021-01-16 16:53:39', 15),
(119, 'udayptl9', '2021-01-07 19:49:34', '2021-01-16 16:26:52', 16),
(120, 'admin', '2021-01-07 20:13:32', '2021-01-16 16:53:39', 15),
(121, 'agasar123', '2021-01-07 20:14:13', '2021-01-12 18:33:11', 17),
(122, 'udayptl9', '2021-01-07 20:41:20', '2021-01-16 16:26:52', 16),
(123, 'admin', '2021-01-07 20:41:35', '2021-01-16 16:53:39', 15),
(124, 'csAdmin', '2021-01-07 20:42:34', '2021-01-18 13:19:56', 18),
(125, 'udayptl9', '2021-01-07 20:57:37', '2021-01-16 16:26:52', 16),
(126, 'admin', '2021-01-07 21:04:45', '2021-01-16 16:53:39', 15),
(127, 'udayptl9', '2021-01-07 21:09:59', '2021-01-16 16:26:52', 16),
(128, 'admin', '2021-01-12 17:16:32', '2021-01-16 16:53:39', 15),
(129, 'udayptl9', '2021-01-12 17:17:39', '2021-01-16 16:26:52', 16),
(130, 'csAdmin', '2021-01-12 17:18:31', '2021-01-18 13:19:56', 18),
(131, 'agasar123', '2021-01-12 17:19:03', '2021-01-12 18:33:11', 17),
(132, 'admin', '2021-01-12 17:23:52', '2021-01-16 16:53:39', 15),
(133, 'udayptl9', '2021-01-12 17:24:24', '2021-01-16 16:26:52', 16),
(134, 'agasar123', '2021-01-12 17:25:13', '2021-01-12 18:33:11', 17),
(135, 'admin', '2021-01-12 18:20:55', '2021-01-16 16:53:39', 15),
(136, 'agasar123', '2021-01-12 18:22:39', '2021-01-12 18:33:11', 17),
(137, 'agasar123', '2021-01-12 18:25:41', '2021-01-12 18:33:11', 17),
(138, 'agasar123', '2021-01-12 18:26:02', '2021-01-12 18:33:11', 17),
(139, 'admin', '2021-01-12 18:26:35', '2021-01-16 16:53:39', 15),
(140, 'agasar123', '2021-01-12 18:29:54', '2021-01-12 18:33:11', 17),
(141, 'admin', '2021-01-13 10:29:44', '2021-01-16 16:53:39', 15),
(142, 'admin', '2021-01-13 14:24:26', '2021-01-16 16:53:39', 15),
(143, 'csadmin', '2021-01-13 14:51:03', '2021-01-18 13:19:56', 18),
(144, 'admin', '2021-01-14 17:48:52', '2021-01-16 16:53:39', 15),
(145, 'admin', '2021-01-15 15:52:47', '2021-01-16 16:53:39', 15),
(146, 'admin', '2021-01-16 13:53:04', '2021-01-16 16:53:39', 15),
(147, 'admin', '2021-01-16 14:04:22', '2021-01-16 16:53:39', 15),
(148, 'udayptl9', '2021-01-16 14:05:35', '2021-01-16 16:26:52', 16),
(149, 'admin', '2021-01-16 15:12:46', '2021-01-16 16:53:39', 15),
(150, 'udayptl9', '2021-01-16 15:21:02', '2021-01-16 16:26:52', 16),
(151, 'admin', '2021-01-16 16:26:57', '2021-01-16 16:53:39', 15),
(152, 'csAdmin', '2021-01-16 16:27:56', '2021-01-18 13:19:56', 18),
(153, 'admin', '2021-01-16 16:52:31', '2021-01-16 16:53:39', 15),
(154, 'csAdmin', '2021-01-16 16:54:03', '2021-01-18 13:19:56', 18),
(155, 'csAdmin', '2021-01-18 00:13:07', '2021-01-18 13:19:56', 18),
(156, 'csAdmin', '2021-01-18 00:32:24', '2021-01-18 13:19:56', 18),
(157, 'csAdmin', '2021-01-18 10:04:38', '2021-01-18 13:19:56', 18),
(158, 'admin', '2021-01-18 10:07:51', '', 15),
(159, 'admin', '2021-01-18 12:08:11', '', 15),
(160, 'csAdmin', '2021-01-18 13:14:24', '2021-01-18 13:19:56', 18),
(161, 'admin', '2021-01-18 13:20:03', '', 15),
(162, 'admin', '2021-01-18 14:08:43', '', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `attendence`
--
ALTER TABLE `attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `edit_profile`
--
ALTER TABLE `edit_profile`
  ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `internals`
--
ALTER TABLE `internals`
  ADD PRIMARY KEY (`internal_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `attendence`
--
ALTER TABLE `attendence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `edit_profile`
--
ALTER TABLE `edit_profile`
  MODIFY `profile_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `internals`
--
ALTER TABLE `internals`
  MODIFY `internal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;

--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
