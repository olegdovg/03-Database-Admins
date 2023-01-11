
--
-- База даних: `epam_l1`
--
CREATE DATABASE epam_l1;
USE epam_l1
-- --------------------------------------------------------
--
-- Структура таблиці `roldor`
--

CREATE TABLE `roldor` (
  `id` int(10) NOT NULL,
  `in_date` varchar(10) NOT NULL,
  `in_date_1` date NOT NULL,
  `client` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `count` int(2) NOT NULL,
  `high` int(4) NOT NULL,
  `width` int(4) NOT NULL,
  `systembrend` varchar(15) NOT NULL,
  `systemtype` varchar(15) NOT NULL,
  `systemcolor` varchar(15) NOT NULL,
  `systemdrol` varchar(15) NOT NULL,
  `tovn` text NOT NULL,
  `notes` text NOT NULL,
  `callback` tinyint(1) NOT NULL,
  `call_d_in` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;


--
-- Структура таблиці `dors`
--

CREATE TABLE `dors` (
  `ID` int(10) NOT NULL,
  `id_par` int(10) NOT NULL,
  `dor_numb` int(2) NOT NULL,
  `typ_dor` varchar(15) NOT NULL,
  `h1` int(4) NOT NULL,
  `filling1` varchar(50) NOT NULL,
  `h2` int(4) NOT NULL,
  `filling2` varchar(50) NOT NULL,
  `h3` int(4) NOT NULL,
  `filling3` varchar(50) NOT NULL,
  `h4` int(4) NOT NULL,
  `filling4` varchar(50) NOT NULL,
  `h5` int(4) NOT NULL,
  `filling5` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Структура таблиці `dor_filling`
--

CREATE TABLE `dor_filling` (
  `id` int(11) NOT NULL,
  `art` int(8) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `costs` decimal(6,2) NOT NULL,
  `kilk` decimal(6,2) DEFAULT NULL,
  `mat_typ` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Структура таблиці `dor_furn`
--

CREATE TABLE `dor_furn` (
  `id` int(10) NOT NULL,
  `kod` int(10) NOT NULL,
  `brend` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL,
  `color` varchar(15) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `cina` decimal(6,2) NOT NULL,
  `kilk` decimal(6,2) DEFAULT NULL,
  `position` varchar(15) NOT NULL,
  `indiv` decimal(6,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_ci;

--
-- Індекси таблиці `roldor`
--
ALTER TABLE `roldor`
  ADD PRIMARY KEY (`id`);
--
-- Індекси таблиці `dors`
--
ALTER TABLE `dors`
  ADD PRIMARY KEY (`ID`);

--
-- Індекси таблиці `dor_filling`
--
ALTER TABLE `dor_filling`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `dor_furn`
--
ALTER TABLE `dor_furn`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для таблиці `roldor`
--
ALTER TABLE `roldor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=838;

--
-- AUTO_INCREMENT для таблиці `dors`
--
ALTER TABLE `dors`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3332;

--
-- AUTO_INCREMENT для таблиці `dor_filling`
--
ALTER TABLE `dor_filling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблиці `dor_furn`
--
ALTER TABLE `dor_furn`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
