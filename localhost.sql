-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017 年 11 月 16 日 13:36
-- サーバのバージョン： 5.7.17-log
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miyu724`
--
CREATE DATABASE IF NOT EXISTS `miyu724` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `miyu724`;

-- --------------------------------------------------------

--
-- テーブルの構造 `datas`
--

CREATE TABLE `datas` (
  `name` text NOT NULL,
  `message` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `datas`
--

INSERT INTO `datas` (`name`, `message`, `created`) VALUES
('mochi', 'aaa', '2017-11-15 10:06:45'),
('takase', 'HELLO!', '2017-11-15 10:08:02'),
('<b>takase</b> ', '<H3>hogehoge</H3>', '2017-11-15 10:18:36'),
('<b>takase</b> ', 'あ\r\nい\r\nう\r\nえ\r\nお', '2017-11-15 10:21:40'),
('本当にあった怖い名無し', 'a\r\na\r\na\r\na\r\na\r\na', '2017-11-16 04:13:58'),
('本当にあった怖い名無し', 'a\r\na\r\na\r\na\r\na\r\na', '2017-11-16 04:17:02'),
('本当にあった怖い名無し', 'bbbbcccc', '2017-11-16 04:17:12'),
('本当にあった怖い名無し', '<h2>aaaa</h2>', '2017-11-16 04:17:27'),
('a', '', '2017-11-16 04:18:50'),
('本当にあった怖い名無し', 'aaaaaaaaa', '2017-11-16 04:32:12');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
