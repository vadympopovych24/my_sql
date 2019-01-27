-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Янв 28 2019 г., 00:24
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `accouting_software`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cathadra`
--

CREATE TABLE IF NOT EXISTS `cathadra` (
  `id_cathadra` varchar(255) COLLATE utf8_bin NOT NULL,
  `name_cathadra` char(100) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_cathadra`),
  KEY `id_2` (`id_cathadra`),
  KEY `id_3` (`id_cathadra`),
  KEY `id_4` (`id_cathadra`),
  KEY `id_5` (`id_cathadra`),
  KEY `id` (`id`),
  KEY `name` (`name_cathadra`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `cathadra`
--

INSERT INTO `cathadra` (`id_cathadra`, `name_cathadra`, `id`) VALUES
('K24', 'Кафедра диференціальних рівнянь і прикладної математики', 4),
('K25', 'Кафедра математичного і функціонального аналізу', 3),
('K26', 'Кафедра комп’ютерних наук та інформаційних систем', 6),
('K27', 'Кафедра математики та інформатики і методики навчання', 2),
('K28', 'Кафедра алгебри та геометрії', 5),
('K29', 'Кафедра інформаційних технологій', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `classroom`
--

CREATE TABLE IF NOT EXISTS `classroom` (
  `id_classroom` varchar(255) COLLATE utf8_bin NOT NULL,
  `storey` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  PRIMARY KEY (`id_classroom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `classroom`
--

INSERT INTO `classroom` (`id_classroom`, `storey`, `type`, `id`, `id_type`) VALUES
('207', 2, 'Комп''ютерна аудиторія', 2, 1),
('234', 2, 'Комп''ютерна аудиторія', 1, 1),
('301', 3, 'Лекційна аудиторія', 6, 0),
('303', 3, 'Лекційна аудиторія', 2, 0),
('306', 3, 'Лекційна аудиторія', 2, 0),
('307', 3, 'Комп''ютерна аудиторія', 3, 1),
('307a', 3, 'Комп''ютерна аудиторія', 3, 1),
('310', 3, 'Лекційна аудиторія', 5, 0),
('312', 3, 'Лекційна аудиторія', 4, 0),
('313', 3, 'Комп''ютерна аудиторія', 5, 1),
('316', 3, 'Лекційна аудиторія', 5, 0),
('318', 3, 'Лекційна аудиторія', 4, 0),
('319', 3, 'Лекційна аудиторія', 2, 0),
('320', 3, 'Комп''ютерна аудиторія', 2, 1),
('320a', 3, 'Комп''ютерна аудиторія', 6, 1),
('322', 3, 'Комп''ютерна аудиторія', 6, 1),
('324', 3, 'Лекційна аудиторія', 1, 0),
('325', 3, 'Лекційна аудиторія', 6, 0),
('402', 4, 'Лекційна аудиторія', 4, 0),
('403', 4, 'Лекційна аудиторія', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `media_program`
--

CREATE TABLE IF NOT EXISTS `media_program` (
  `id_PC` char(20) COLLATE utf8_bin NOT NULL,
  `name_PC` char(20) COLLATE utf8_bin DEFAULT NULL,
  `type_disk` char(3) COLLATE utf8_bin DEFAULT NULL,
  `volume_disk_GB` int(4) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id_PC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `media_program`
--

INSERT INTO `media_program` (`id_PC`, `name_PC`, `type_disk`, `volume_disk_GB`, `id`) VALUES
('D01', 'Dell', 'HDD', 500, 1),
('D02', 'ASUS', 'HDD', 240, 2),
('D03', 'ASUS', 'HDD', 240, 1),
('D04', 'ASUS', 'HDD', 240, 1),
('D05', 'Acer', 'SSD', 240, 2),
('D06', 'ASUS', 'HDD', 240, 1),
('D07', 'ASUS', 'HDD', 240, 1),
('D08', 'Acer', 'HDD', 500, 2),
('D09', 'Dell', 'SSD', 240, 1),
('D10', 'ASUS', 'HDD', 240, 2),
('D11', 'ASUS', 'HDD', 240, 1),
('D12', 'ASUS', 'HDD', 240, 2),
('D13', 'Acer', 'HDD', 500, 1),
('D14', 'Acer', 'HDD', 240, 2),
('D15', 'Dell', 'SSD', 240, 1),
('D16', 'ASUS', 'HDD', 500, 2),
('D17', 'ASUS', 'HDD', 500, 1),
('D18', 'Acer', 'HDD', 240, 2),
('D19', 'Acer', 'HDD', 240, 1),
('D20', 'ASUS', 'HDD', 240, 1),
('D21', 'Acer', 'HDD', 500, 1),
('D22', 'Acer', 'HDD', 240, 2),
('D23', 'Acer', 'HDD', 240, 1),
('D24', 'Dell', 'SSD', 240, 1),
('D25', 'ASUS', 'HDD', 240, 1),
('D26', 'ASUS', 'HDD', 240, 2),
('D27', 'Acer', 'HDD', 240, 1),
('D28', 'Acer', 'HDD', 240, 2),
('D29', 'Acer', 'HDD', 240, 1),
('D30', 'ASUS', 'HDD', 500, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `software`
--

CREATE TABLE IF NOT EXISTS `software` (
  `name_software` varchar(50) COLLATE utf8_bin NOT NULL,
  `publisher` varchar(255) COLLATE utf8_bin NOT NULL,
  `install_date` date DEFAULT NULL,
  `size_MB` float NOT NULL,
  `version` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date_completion_license` date DEFAULT NULL,
  `program_activity` char(20) COLLATE utf8_bin NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`name_software`,`publisher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `software`
--

INSERT INTO `software` (`name_software`, `publisher`, `install_date`, `size_MB`, `version`, `date_completion_license`, `program_activity`, `id`) VALUES
('3Ds Max 2012', 'Autodesk', '2018-09-24', 1348, '14.0', '2019-03-24', 'Активована', 1),
('ARCHICAD 21', 'GRAPHISOFT', '2018-08-11', 2056, '21.0.0', '2019-08-11', 'Активована', 1),
('ARIA Engine', 'Plogue Art et Technologie', '2018-08-08', 18, '1.6.2.0', '2019-08-09', 'Активована', 2),
('Adobe Photoshop CC ', 'Adobe Systems Incorporated', '2018-08-07', 5056, '16.0', '2019-08-07', 'Активована', 1),
('Adobe Reader XI', 'Adobe Systems Incorporated', '2018-08-06', 779, '11.0.05', '2019-08-06', 'Активована', 2),
('Android Studio', 'Google Inc', '2018-08-16', 723, '1.0', '2019-08-16', 'Активована', 1),
('Backburner 2012', 'Autodesk', '2018-09-24', 12, '2012.0.0', '2020-09-24', 'Активована', 1),
('Borland Delphi', 'Borland Software Corporation', '2018-08-08', 1367, '7.0', '2019-04-08', 'Активована', 2),
('CCleaner', 'Pirform', '2018-08-08', 36, '5.30', '2019-08-08', 'Активована', 1),
('Cisco Packet Tracer', 'Cisco Systems, Inc', '2018-03-27', 218, '7.0', '2019-03-27', 'Активована', 1),
('CodeMeter Runtime Kit', 'WIBU-SYSTEMS AG', '2017-09-17', 55, '6.40.24', '2018-09-17', 'Не активована', 2),
('CodeVisionAVR', 'HP Info Tech S.R.L', '2018-02-20', 138, '3.12', '2019-02-20', 'Активована', 1),
('Composite 2012', 'Autodesk', '2016-09-05', 386, '7.0.0', '2018-09-05', 'Не активована', 2),
('DAEMON Tools Lite', 'Disc Soft Ltd', '2017-06-25', 37, '10.8.0', '2018-06-25', 'Не активована', 1),
('Eclipse', 'JetBrains', '2018-08-06', 911, '7.5', '2019-08-06', 'Активована', 1),
('FBX Plug-in 2012', 'Autodesk', '2018-09-24', 59, '2012.0.0', '2019-09-24', 'Активована', 2),
('Far Manager 3', 'Eugene Roshal & Far group', '2015-10-08', 10, '3.0', '2020-10-08', 'Активована', 1),
('Finale 2014', 'MakeMusic', '2017-12-10', 3364, '0.3163', '2018-12-10', 'Не активована', 2),
('Free Pascal ', 'Free Pascal Team', '2016-05-27', 248, '3.0.4', '2017-05-27', 'Не активована', 1),
('GPSS World Student Version ', 'Minuteman Software', '2017-08-25', 11, '5.0.2', '2018-08-25', 'Не активована', 2),
('GRAPHISOFT BIMx Desktop Viewer', 'GRAPHISOFT', '2017-05-26', 16, '21.0', '2018-05-26', 'Не активована', 2),
('GRAPHISOFT License Manager Tool', 'GRAPHISOFT', '2018-08-11', 185, '20.0', '2020-08-11', 'Активована', 2),
('Garritan ARIA Player ', 'Garritan', '2018-08-08', 61, '1.6.2.0', '2019-08-08', 'Активована', 1),
('Garritan Instruments for Finale', 'Garritan', '2014-01-30', 2863, '2.0.0', '2015-01-30', 'Не активована', 1),
('Git version', 'The Git Development community', '2017-04-14', 229, '2.18.0', '2019-04-14', 'Активована', 2),
('Google Chrome ', 'Google Inc', '2018-08-29', 406, '71.0', '2019-08-29', 'Активована', 1),
('Intel(R) C++ Redistributables on Intel', 'Intel Corporation', '2018-03-16', 33, '15.0.179', '2022-03-16', 'Активована', 2),
('Intel(R) Hardware Accelecated Executable', 'Intel Corporation', '2018-08-16', 654, '7.2.0', '2020-08-16', 'Активована', 1),
('Intel(R) Management Engine', 'Intel Corporation', '2017-09-11', 5, '11.6.0.1030', '2019-09-11', 'Активована', 2),
('Intel(R) Rapid Storage Techonology', 'Intel Corporation', '2017-08-08', 13, '15.2.0.1020', '2018-08-08', 'Не активована', 1),
('Intel(R) USB Host Controller Adapter', 'Intel Corporation', '2018-08-06', 1788, '1.0.1.45', '2020-08-06', 'Активована', 2),
('IntelliJ IDEA Community Edition ', 'JetBrains.s.r.o', '2017-05-17', 841, '182.391', '2019-05-17', 'Активована', 1),
('InterBase ', 'Inter', '2016-10-01', 98, '4.0.9', '2018-10-01', 'Не активована', 2),
('Java 8 Update ', 'Oracle Corporation', '2018-08-07', 77, '8.0.45', '2022-08-07', 'Активована', 1),
('Java SE Development', 'Oracle Corporation', '2018-08-08', 345, '8.0.13', '2022-08-08', 'Активована', 2),
('Lazarus', 'Lazarus Team', '2018-08-08', 750, '1.8.4', '2019-08-08', 'Активована', 2),
('LibreOffice ', 'The Document Foundation', '2018-03-07', 554, '5.0.4.2', '2019-03-07', 'Активована', 1),
('MATLAB R2014', 'The MathWorks, Inc', '2018-08-06', 28, '8.3', '2019-08-06', 'Активована', 1),
('MPICH ', 'Argonne National Laboratory', '2017-09-12', 21, '1.4.1', '2018-09-12', 'Не активована', 2),
('MSXML SP2 Parser and SDK', 'Microsoft Corporation', '2018-08-07', 2, '4.20', '2022-08-07', 'Активована', 1),
('Maple ', 'Maplesoft', '2018-09-18', 1296, '18', '2020-09-18', 'Активована', 2),
('Material Library 2012', 'Autodesk', '2018-09-10', 97, '2.5.0.8', '2019-09-10', 'Активована', 1),
('Mathcad', 'PTC', '2018-08-06', 142, '14.0.3.0', '2019-08-06', 'Активована', 2),
('MiKTeX', 'MiKTeX.org', '2018-08-07', 48, '2.9', '2020-08-07', 'Активована', 1),
('Microsoft Office', 'Microsoft Corporation', '2018-04-21', 1721, '14.0.47', '2019-04-21', 'Активована', 2),
('Microsoft System CLR Types for SQL', 'Microsoft Corporation', '2018-08-06', 7, '14.0.306', '2019-08-06', 'Активована', 2),
('Microsoft Visual C++ 2005 Redistributable Package', 'Microsoft Corporation', '2018-04-07', 4, '8.0.61', '2019-04-07', 'Активована', 1),
('Microsoft Visual C++ 2008 Redistributable Package', 'Microsoft Corporation', '2018-09-24', 13, '9.0.307', '2020-09-24', 'Активована', 1),
('Microsoft Visual C++ 2010 Redistributable Package', 'Microsoft Corporation', '2018-03-01', 13, '10.0.19', '2019-03-01', 'Активована', 2),
('Microsoft Visual C++ 2012 Redistributable Package', 'Microsoft Corporation', '2018-10-12', 17, '11.0.30.0', '2019-10-12', 'Активована', 1),
('Microsoft Visual C++ 2013 Redistributable Package', 'Microsoft Corporation', '2018-08-06', 20, '12.501.0', '2020-08-06', 'Активована', 2),
('Microsoft Visual C++ 2017 Redistributable Package', 'Microsoft Corporation', '2018-10-03', 25, '14.14.26.0', '2020-10-03', 'Активована', 1),
('Microsoft Visual Studio', 'Microsoft Corporation', '2018-08-07', 4745, '1.16.1252', '2019-04-07', 'Активована', 1),
('Microsoft Visual Studio Code', 'Microsoft Corporation', '2017-08-07', 219, '1.25.1', '2018-08-07', 'Активована', 2),
('Mozilla Firefox', 'Mozilla', '2014-08-06', 150, '61.0.1', '2021-08-06', 'Активована', 1),
('Mozilla Maintenance Service', 'Mozilla', '2014-08-06', 279, '61.0.1', '2021-08-06', 'Активована', 2),
('MySQL Workbench CE', 'Oracle Corporation', '2018-09-10', 120, '8.0.12', '2019-09-10', 'Активована', 1),
('NTPort Library Driver ', 'Zeal SoftStudio', '2018-05-25', 31, '2.8', '2019-05-25', 'Активована', 1),
('NetBeans', 'NetBeans Publisher''s ', '2018-09-24', 841, '8.2', '2019-09-24', 'Активована', 0),
('Notepad++ ', 'Notepad++ Team', '2016-08-22', 10, '7.5.8', '2020-08-22', 'Активована', 2),
('PTC Diagnostic Tools', 'PTC', '2018-10-04', 50, '4.0', '2020-10-04', 'Активована', 2),
('PTC Mathcad Prime', 'PTC', '2018-10-04', 609, '4.0.1', '2020-10-04', 'Активована', 1),
('Paint.net', 'DotPDN LLC', '2018-08-03', 29, '4.0.21', '2019-08-03', 'Активована', 1),
('PascalABC.NET', 'Pascal', '2017-12-07', 107, '1.5.3', '2018-12-07', 'Активована', 2),
('Proteus 8 Professional ', 'Labcenter Electronics', '2018-08-07', 2165, '8.6.2', '2021-08-07', 'Активована', 2),
('Python Launcher', 'Python Software Foundation', '2017-09-12', 1, '3.7.6', '2018-09-12', 'Не активована', 1),
('Realtek Enternet Controller Driver', 'Realtek', '2018-09-15', 3, '8.43', '2020-09-15', 'Активована', 2),
('STATISTICA ', 'StatSoft , Inc', '2018-10-28', 821, '12.5', '2019-10-28', 'Активована', 1),
('STATNOVAPDF', 'Softland', '2018-08-08', 19, '1.5', '2021-08-08', 'Активована', 1),
('Sublime Text', 'Sublime HQ Pty Ltd', '2018-08-07', 25, '2.3.7', '2022-08-07', 'Активована', 1),
('Total Commander ', 'Total Commander ', '2017-10-17', 14, '3.2', '2019-10-17', 'Активована', 1),
('Visual Paradigm CE', 'Visual Paradigm Interface', '2017-09-19', 741, '15.1', '2018-09-19', 'Не активована', 2),
('WibuKey ', 'WIBU-SYSTEMS-AG', '2017-06-10', 22, '6.4', '2018-06-10', 'Не активована', 2),
('WinEdt', 'WinEdt Team', '2018-08-08', 117, '10.3', '2020-08-08', 'Активована', 2),
('WinRAR', 'win.rar GmbH', '2018-08-06', 47, '5.40', '2019-08-06', 'Активована', 1),
('Windows Driver Package - FTDI CDM', 'Microsoft Corporation', '2017-08-07', 10, '7.2', '2018-08-07', 'Не активована', 2),
('Windows Mobile ', 'Microsoft Corporation', '2018-08-07', 1, '10.1', '2019-08-07', 'Активована', 1),
('Windows SDK AddOn', 'Microsoft Corporation', '2018-08-08', 152, '10.1', '2020-08-08', 'Активована', 2),
('Windows Software Development Kit', 'Microsoft Corporation', '2016-09-04', 2773, '10.1', '2018-09-04', 'Не активована', 2),
('Wolfram Mathematica 8', 'Wolfram Research, Inc', '2018-10-09', 2957, '8.0.4', '2019-10-09', 'Активована', 1),
('Zillya! Antivirus', 'TOB Online Service', '2018-08-06', 1097, '2.0', '2020-08-06', 'Активована', 1);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cathadra`
--
ALTER TABLE `cathadra`
  ADD CONSTRAINT `FK_cathadra` FOREIGN KEY (`id_cathadra`) REFERENCES `classroom` (`id_classroom`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `FK_classroom` FOREIGN KEY (`id_classroom`) REFERENCES `media_program` (`id_PC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `media_program`
--
ALTER TABLE `media_program`
  ADD CONSTRAINT `FK_media_program` FOREIGN KEY (`id_PC`) REFERENCES `software` (`name_software`) ON DELETE NO ACTION ON UPDATE NO ACTION;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
