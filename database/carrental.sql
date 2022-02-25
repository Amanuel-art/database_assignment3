<?xml version="1.0" encoding="UTF-8" ?>
<project name="carrental.sql" id="Project-2121" database="MySql" >
	<schema name="public" >
		<table name="brand" spec="" >
			<column name="brand_id" type="int" length="20" jt="4" mandatory="y" />
			<column name="name" type="varchar" length="20" jt="12" mandatory="y" />
			<column name="details" type="varchar" length="1500" jt="12" mandatory="y" />
			<column name="PRIMARY" type="varchar" jt="12" />
			<index name="pk_brand" unique="UNIQUE_KEY" >
				<column name="PRIMARY" />
			</index>
			<options><![CDATA[ENGINE=InnoDB DEFAULT CHARSET=utf8]]></options>
		</table>
		<table name="cars" spec="" >
			<column name="car_id" type="varchar" length="20" jt="12" mandatory="y" >
				<defo><![CDATA['']]></defo>
			</column>
			<column name="brand" type="varchar" length="20" jt="12" mandatory="y" />
			<column name="brand_id" type="int" length="20" jt="4" mandatory="y" />
			<column name="model" type="varchar" length="20" jt="12" mandatory="y" />
			<column name="price" type="int" length="10" jt="4" mandatory="y" />
			<column name="photo" type="varchar" length="45" jt="12" mandatory="y" />
			<column name="detials" type="varchar" length="1500" jt="12" mandatory="y" />
			<column name="year" type="year" length="4" jt="4" mandatory="y" />
			<column name="active" type="tinyint" length="10" jt="-6" mandatory="y" unsigned="y" />
			<column name="type" type="varchar" length="20" jt="12" mandatory="y" />
			<column name="PRIMARY" type="varchar" jt="12" />
			<index name="pk_cars" unique="UNIQUE_KEY" >
				<column name="PRIMARY" />
			</index>
			<fk name="brand_id" to_schema="public" to_table="brand" delete_action="cascade" update_action="cascade" options="" >
				<fk_column name="brand_id" pk="brand_id" />
			</fk>
			<options><![CDATA[ENGINE=InnoDB DEFAULT CHARSET=utf8]]></options>
		</table>
		<table name="carswithhigherprice" spec="" >
			<column name="car_id" type="varchar" length="20" jt="12" />
			<column name="brand" type="varchar" length="20" jt="12" />
			<column name="brand_id" type="int" length="20" jt="4" />
			<column name="model" type="varchar" length="20" jt="12" />
			<column name="price" type="int" length="10" jt="4" />
			<column name="photo" type="varchar" length="45" jt="12" />
			<column name="detials" type="varchar" length="1500" jt="12" />
			<column name="year" type="year" length="4" jt="4" />
			<column name="active" type="tinyint" length="10" jt="-6" unsigned="y" />
			<column name="type" type="varchar" length="20" jt="12" />
		</table>
		<table name="carswithlowerprice" spec="" >
			<column name="car_id" type="varchar" length="20" jt="12" />
			<column name="brand" type="varchar" length="20" jt="12" />
			<column name="brand_id" type="int" length="20" jt="4" />
			<column name="model" type="varchar" length="20" jt="12" />
			<column name="price" type="int" length="10" jt="4" />
			<column name="photo" type="varchar" length="45" jt="12" />
			<column name="detials" type="varchar" length="1500" jt="12" />
			<column name="year" type="year" length="4" jt="4" />
			<column name="active" type="tinyint" length="10" jt="-6" unsigned="y" />
			<column name="type" type="varchar" length="20" jt="12" />
		</table>
		<table name="carswithmediumprice" spec="" >
			<column name="car_id" type="varchar" length="20" jt="12" />
			<column name="brand" type="varchar" length="20" jt="12" />
			<column name="brand_id" type="int" length="20" jt="4" />
			<column name="model" type="varchar" length="20" jt="12" />
			<column name="price" type="int" length="10" jt="4" />
			<column name="photo" type="varchar" length="45" jt="12" />
			<column name="detials" type="varchar" length="1500" jt="12" />
			<column name="year" type="year" length="4" jt="4" />
			<column name="active" type="tinyint" length="10" jt="-6" unsigned="y" />
			<column name="type" type="varchar" length="20" jt="12" />
		</table>
		<table name="reservation" spec="" >
			<column name="idReservation" type="int" length="11" jt="4" mandatory="y" />
			<column name="car_id" type="int" length="11" jt="4" mandatory="y" />
			<column name="userFullName" type="varchar" length="250" jt="12" mandatory="y" />
			<column name="user_id" type="int" length="11" jt="4" mandatory="y" />
			<column name="fullPrice" type="int" length="11" jt="4" mandatory="y" />
			<column name="dateIn" type="date" jt="91" mandatory="y" />
			<column name="dateOut" type="date" jt="91" mandatory="y" />
			<column name="active" type="tinyint" length="1" jt="-6" mandatory="y" />
			<column name="PRIMARY" type="varchar" jt="12" />
			<index name="pk_reservation" unique="UNIQUE_KEY" >
				<column name="PRIMARY" />
			</index>
			<fk name="userId" to_schema="public" to_table="users" delete_action="cascade" update_action="cascade" options="" >
				<fk_column name="user_id" pk="user_id" />
			</fk>
			<options><![CDATA[ENGINE=InnoDB DEFAULT CHARSET=utf8]]></options>
		</table>
		<table name="users" spec="" >
			<column name="user_id" type="int" length="25" jt="4" mandatory="y" />
			<column name="fullName" type="varchar" length="45" jt="12" mandatory="y" />
			<column name="email" type="varchar" length="70" jt="12" mandatory="y" />
			<column name="pass" type="varchar" length="250" jt="12" mandatory="y" />
			<column name="admin" type="tinyint" length="1" jt="-6" mandatory="y" unsigned="y" />
			<column name="active" type="tinyint" length="1" jt="-6" mandatory="y" unsigned="y" />
			<column name="PRIMARY" type="varchar" jt="12" />
			<index name="pk_users" unique="UNIQUE_KEY" >
				<column name="PRIMARY" />
			</index>
			<options><![CDATA[ENGINE=InnoDB DEFAULT CHARSET=utf8]]></options>
		</table>
	</schema>
	<layout name="Layout" id="Layout-2629" show_relation="columns" >
		<entity schema="public" name="brand" color="C7F4BE" x="48" y="48" />
		<entity schema="public" name="cars" color="C7F4BE" x="240" y="48" />
		<entity schema="public" name="carswithhigherprice" color="BED3F4" x="464" y="416" />
		<entity schema="public" name="carswithlowerprice" color="BED3F4" x="688" y="416" />
		<entity schema="public" name="carswithmediumprice" color="BED3F4" x="688" y="720" />
		<entity schema="public" name="reservation" color="F4DDBE" x="464" y="48" />
		<entity schema="public" name="users" color="F4DDBE" x="688" y="48" />
		<script name="carrental.sql" id="Editor-17f4" language="SQL" >
			<string><![CDATA[-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2022 at 02:07 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `details` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `details`) VALUES
(1, 'Aston Martin', 'Aston Martin Lagonda Global Holdings plc is a British independent manufacturer of luxury sports cars and grand tourers. It was founded in 1913 by Lionel Martin and Robert Bamford. Steered from 1947 by David Brown, it became associated with expensive grand touring cars in the 1950s and 1960s, and with the fictional character James Bond following his use of a DB5 model in the 1964 film Goldfinger. Their sports cars are regarded as a British cultural icon. Aston Martin has held a Royal Warrant as purveyor of motorcars to the Prince of Wales since 1982. It has over 150 car dealerships in over 50 countries on six continents, making them a global automobile brand. The company is traded at the London Stock Exchange and is a constituent of the FTSE 250 Index. In 2003 it received the Queen\'s Award for Enterprise for outstanding contribution to international trade. The company has gone bankrupt seven times in its history.'),
(2, 'BMW', 'BMW (originally an initialism for Bayerische Motoren Werke in German, or Bavarian Motor Works in English) is a German multinational company which currently produces luxury automobiles and motorcycles, and also produced aircraft engines until 1945.'),
(3, 'Bugatti', 'Automobiles Ettore Bugatti was a French car manufacturer of high-performance automobiles, founded in 1909 in the then German city of Molsheim, Alsace by Italian-born Ettore Bugatti. Bugatti cars were known for their design beauty (Ettore Bugatti was from a family of artists and considered himself to be both an artist and builder) and for their many race victories. Famous Bugattis include the Type 35 Grand Prix cars, the Type 41 \"Royale\", the Type 57 \"Atlantic\" and the Type 55 sports car.'),
(4, 'Chevrolet', 'Chevrolet, colloquially referred to as Chevy and formally the Chevrolet Division of General Motors Company, is an American automobile division of the American manufacturer General Motors (GM). Louis Chevrolet and ousted General Motors founder William C. Durant started the company on November 3, 1911 as the Chevrolet Motor Car Company. Durant used the Chevrolet Motor Car Company to acquire a controlling stake in General Motors with a reverse merger occurring on May 2, 1918, and propelled himself back to the GM presidency. After Durant\'s second ousting in 1919, Alfred Sloan, with his maxim \"a car for every purse and purpose\", would pick the Chevrolet brand to become the volume leader in the General Motors family, selling mainstream vehicles to compete with Henry Ford\'s Model T in 1919 and overtaking Ford as the best-selling car in the United States by 1929.'),
(5, 'Dodge', 'Dodge is an American brand of automobile manufactured by FCA US LLC (formerly known as Fiat Chrysler Group LLC), based in Auburn Hills, Michigan. Dodge vehicles currently include performance cars, though for much of its existence Dodge was Chrysler\'s mid-priced brand above Plymouth.'),
(6, 'Ferrari', 'Ferrari is an Italian luxury sports car manufacturer based in Maranello. Founded by Enzo Ferrari in 1939 out of Alfa Romeo\'s race division as Auto Avio Costruzioni, the company built its first car in 1940. However, the company\'s inception as an auto manufacturer is usually recognized in 1947, when the first Ferrari-badged car was completed.'),
(7, 'Ford', 'Ford Motor Company, commonly known as Ford, is an American multinational automaker that has its main headquarters in Dearborn, Michigan, a suburb of Detroit. It was founded by Henry Ford and incorporated on June 16, 1903. The company sells automobiles and commercial vehicles under the Ford brand, and most luxury cars under the Lincoln brand. Ford also owns Brazilian SUV manufacturer Troller, an 8% stake in Aston Martin of the United Kingdom and a 32% stake in Jiangling Motors. It also has joint-ventures in China (Changan Ford), Taiwan (Ford Lio Ho), Thailand (AutoAlliance Thailand), Turkey (Ford Otosan), and Russia (Ford Sollers). The company is listed on the New York Stock Exchange and is controlled by the Ford family; they have minority ownership but the majority of the voting power.'),
(8, 'Koenigsegg', 'The Swedish auto industry has some of the finest luxury cars to offer. What is really interesting is that they are on par with other rival car manufacturers like Ferrari, Lamborghini, Volvo and even Aston Martin. Koenigsegg is one such manufacturer that has exceeded expectations with the introduction of hyper-cars. The history of Koenigsegg started from nothing and now has made considerable contributions to the car market. Take a look at the Koenigsegg Logo, history timeline and list of latest models.'),
(9, 'Lamborghini', 'Automobili Lamborghini S.p.A. (Italian pronunciation: [lamborˈɡiːni]) is an Italian brand and manufacturer of luxury sports cars and SUVs based in Sant\'Agata Bolognese. The company is owned by the Volkswagen Group through its subsidiary Audi.'),
(10, 'Mazda', 'Mazda Motor Corporation, commonly referred to as simply Mazda, is a Japanese multinational automaker based in Fuchū, Aki District, Hiroshima Prefecture, Japan.'),
(11, 'Mercedes-Benz', 'Mercedes-Benz is a German global automobile marque and a division of Daimler AG. Mercedes-Benz is known for luxury vehicles, vans, trucks, buses, coaches and ambulances. The headquarters is in Stuttgart, Baden-Württemberg. The name first appeared in 1926 under Daimler-Benz. In 2018, Mercedes-Benz was the largest seller of premium vehicles in the world, having sold 2.31 million passenger cars.'),
(12, 'Mitsubishi', 'The Mitsubishi Group is a group of autonomous Japanese multinational companies in a variety of industries.'),
(13, 'Pagani', 'Pagani Automobili S.p.A is well-known for creating some of the best super cars in the world. The Pagani history started when the company was founded in 1992 by former Lamborghini Engineer, Horacio Pagani. So, how did he get the idea to start a company of his own? Horacio, from an early age, loved making cars using balsa wood. These designs can also be seen at the Pagani Showroom in Italy, Pagani being one of the biggest names in Italian cars. Continue reading to learn more about the Pagani logo, history timeline and latest models.'),
(14, 'Porsche', 'Dr.-Ing. h.c. F. Porsche AG, usually shortened to Porsche AG, is a German automobile manufacturer specializing in high-performance sports cars, SUVs and sedans. The headquarters of Porsche AG is in Stuttgart, and is owned by Volkswagen AG, a controlling stake of which is owned by Porsche Automobil Holding SE. Porsche\'s current lineup includes the 718 Boxster/Cayman, 911, Panamera, Macan, Cayenne and Taycan.'),
(15, 'Rolls Royce', 'Rolls-Royce Motor Cars Limited is a British luxury automobile maker. A wholly owned subsidiary of German group BMW, it was established in 1998 after BMW was licensed the rights to the Rolls-Royce brand name and logo from Rolls-Royce plc and acquired the rights to the Spirit of Ecstasy and Rolls-Royce grill shape trademarks from Volkswagen AG. Rolls-Royce Motor Cars Limited operates from purpose-built administrative and production facilities opened in 2003 across from the historic Goodwood Circuit in Goodwood, West Sussex, England, United Kingdom. Rolls-Royce Motors Cars Limited is the exclusive manufacturer of Rolls-Royce branded motor cars since 2003.'),
(16, 'Toyota', 'Toyota Motor Corporation is a Japanese multinational automotive manufacturer headquartered in Toyota, Aichi, Japan. In 2017, Toyota\'s corporate structure consisted of 364,445 employees worldwide and, as of December 2019, was the tenth-largest company in the world by revenue. Toyota is the largest automobile manufacturer in Japan, and the second-largest in the world behind Volkswagen, based on 2018 unit sales.'),
(17, 'Volkswagen', 'Volkswagen, is a German automaker founded in 1937 by the German Labour Front, known for the iconic \"Beetle\" and headquartered in Wolfsburg. It is the flagship marque of the Volkswagen Group, the largest automaker by worldwide sales in 2016 and 2017. The group\'s biggest market is in China, which delivers 40% of its sales and profits.');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` varchar(20) NOT NULL DEFAULT '',
  `brand` varchar(20) NOT NULL,
  `brand_id` int(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `photo` varchar(45) NOT NULL,
  `detials` varchar(1500) NOT NULL,
  `year` year(4) NOT NULL,
  `active` tinyint(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `brand`, `brand_id`, `model`, `price`, `photo`, `detials`, `year`, `active`, `type`) VALUES
('1', 'Ferrari', 1, 'M3', 500, 'images/M3.jpg', 'Aston Martin Lagonda Global Holdings plc is a British independent manufacturer of luxury sports cars and grand tourers. It was founded in 1913 by Lionel Martin and Robert Bamford. Steered from 1947 by David Brown, it became associated with expensive grand touring cars in the 1950s and 1960s, and with the fictional character James Bond following his use of a DB5 model in the 1964 film Goldfinger. Their sports cars are regarded as a British cultural icon. Aston Martin has held a Royal Warrant as purveyor of motorcars to the Prince of Wales since 1982. It has over 150 car dealerships in over 50 countries on six continents, making them a global automobile brand. The company is traded at the London Stock Exchange and is a constituent of the FTSE 250 Index. In 2003 it received the Queen\'s Award for Enterprise for outstanding contribution to international trade. The company has gone bankrupt seven times in its history.', 2017, 1, 'Compact'),
('10', 'BMW', 2, 'F-150', 550, 'images/F150.jpeg', 'BMW (originally an initialism for Bayerische Motoren Werke in German, or Bavarian Motor Works in English) is a German multinational company which currently produces luxury automobiles and motorcycles, and also produced aircraft engines until 1945.', 2018, 1, 'Truck'),
('11', 'Bugatti', 3, 'RX-8', 250, 'images/RX8.jpg', 'Automobiles Ettore Bugatti was a French car manufacturer of high-performance automobiles, founded in 1909 in the then German city of Molsheim, Alsace by Italian-born Ettore Bugatti. Bugatti cars were known for their design beauty (Ettore Bugatti was from a family of artists and considered himself to be both an artist and builder) and for their many race victories. Famous Bugattis include the Type 35 Grand Prix cars, the Type 41 \"Royale\", the Type 57 \"Atlantic\" and the Type 55 sports car.', 2005, 1, 'Sport'),
('12', 'Chevrolet', 4, 'DB9', 300, 'images/DB9.jpg', 'Chevrolet, colloquially referred to as Chevy and formally the Chevrolet Division of General Motors Company, is an American automobile division of the American manufacturer General Motors (GM). Louis Chevrolet and ousted General Motors founder William C. Durant started the company on November 3, 1911 as the Chevrolet Motor Car Company. Durant used the Chevrolet Motor Car Company to acquire a controlling stake in General Motors with a reverse merger occurring on May 2, 1918, and propelled himself back to the GM presidency. After Durant\'s second ousting in 1919, Alfred Sloan, with his maxim \"a car for every purse and purpose\", would pick the Chevrolet brand to become the volume leader in the General Motors family, selling mainstream vehicles to compete with Henry Ford\'s Model T in 1919 and overtaking Ford as the best-selling car in the United States by 1929.', 2016, 1, 'Sport'),
('13', 'Dodge', 5, 'Viper', 500, 'images/Viper.jpg', 'Dodge is an American brand of automobile manufactured by FCA US LLC (formerly known as Fiat Chrysler Group LLC), based in Auburn Hills, Michigan. Dodge vehicles currently include performance cars, though for much of its existence Dodge was Chrysler\'s mid-priced brand above Plymouth.', 2017, 1, 'Luxurious'),
('14', 'Ferrari', 6, 'GT', 650, 'images/GT.jpg', 'Ferrari is an Italian luxury sports car manufacturer based in Maranello. Founded by Enzo Ferrari in 1939 out of Alfa Romeo\'s race division as Auto Avio Costruzioni, the company built its first car in 1940. However, the company\'s inception as an auto manufacturer is usually recognized in 1947, when the first Ferrari-badged car was completed.', 2015, 1, 'Luxurious'),
('15', 'Ford', 7, 'Gallardo', 480, 'images/Gallardo.jpg', 'Ford Motor Company, commonly known as Ford, is an American multinational automaker that has its main headquarters in Dearborn, Michigan, a suburb of Detroit. It was founded by Henry Ford and incorporated on June 16, 1903. The company sells automobiles and commercial vehicles under the Ford brand, and most luxury cars under the Lincoln brand. Ford also owns Brazilian SUV manufacturer Troller, an 8% stake in Aston Martin of the United Kingdom and a 32% stake in Jiangling Motors. It also has joint-ventures in China (Changan Ford), Taiwan (Ford Lio Ho), Thailand (AutoAlliance Thailand), Turkey (Ford Otosan), and Russia (Ford Sollers). The company is listed on the New York Stock Exchange and is controlled by the Ford family; they have minority ownership but the majority of the voting power.', 2016, 1, 'Sport'),
('16', 'Koenigsegg', 8, 'RX-7', 350, 'images/RX7.jpg', 'The Swedish auto industry has some of the finest luxury cars to offer. What is really interesting is that they are on par with other rival car manufacturers like Ferrari, Lamborghini, Volvo and even Aston Martin. Koenigsegg is one such manufacturer that has exceeded expectations with the introduction of hyper-cars. The history of Koenigsegg started from nothing and now has made considerable contributions to the car market. Take a look at the Koenigsegg Logo, history timeline and list of latest models.', 2008, 1, 'Sport'),
('17', 'Lamborghini', 9, 'SL 500', 400, 'images/SL500.jpg', 'Automobili Lamborghini S.p.A. (Italian pronunciation: [lamborˈɡiːni]) is an Italian brand and manufacturer of luxury sports cars and SUVs based in Sant\'Agata Bolognese. The company is owned by the Volkswagen Group through its subsidiary Audi.', 2010, 1, 'Sport'),
('18', 'Mazda', 10, 'SLR McLaren', 700, 'images/SLRMcLaren.jpg', 'Mazda Motor Corporation, commonly referred to as simply Mazda, is a Japanese multinational automaker based in Fuchū, Aki District, Hiroshima Prefecture, Japan.', 2015, 1, 'Luxurious'),
('19', 'Mercedes-Benz', 11, 'Cobalt SS', 350, 'images/ColbatSS.jpg', 'Mercedes-Benz is a German global automobile marque and a division of Daimler AG. Mercedes-Benz is known for luxury vehicles, vans, trucks, buses, coaches and ambulances. The headquarters is in Stuttgart, Baden-Württemberg. The name first appeared in 1926 under Daimler-Benz. In 2018, Mercedes-Benz was the largest seller of premium vehicles in the world, having sold 2.31 million passenger cars.', 2010, 1, 'Sport'),
('2', 'Mitsubishi', 12, 'Chiron', 950, 'images/Chiron.jpg', 'The Mitsubishi Group is a group of autonomous Japanese multinational companies in a variety of industries.', 2017, 1, 'Luxurious'),
('20', 'Pagani', 13, 'M3 GTR', 800, 'images/M3GTR.jpg', 'Pagani Automobili S.p.A is well-known for creating some of the best super cars in the world. The Pagani history started when the company was founded in 1992 by former Lamborghini Engineer, Horacio Pagani. So, how did he get the idea to start a company of his own? Horacio, from an early age, loved making cars using balsa wood. These designs can also be seen at the Pagani Showroom in Italy, Pagani being one of the biggest names in Italian cars. Continue reading to learn more about the Pagani logo, history timeline and latest models.', 2016, 1, 'Luxurious'),
('21', 'Porsche', 14, 'Corvette C6', 480, 'images/CorvetteC6.png', 'Dr.-Ing. h.c. F. Porsche AG, usually shortened to Porsche AG, is a German automobile manufacturer specializing in high-performance sports cars, SUVs and sedans. The headquarters of Porsche AG is in Stuttgart, and is owned by Volkswagen AG, a controlling stake of which is owned by Porsche Automobil Holding SE. Porsche\'s current lineup includes the 718 Boxster/Cayman, 911, Panamera, Macan, Cayenne and Taycan.', 2013, 1, 'Luxurious'),
('22', 'Rolls Royce', 15, 'Lancer Evolution VII', 650, 'images/LancerEvolutionVIII.jpg', 'Rolls-Royce Motor Cars Limited is a British luxury automobile maker. A wholly owned subsidiary of German group BMW, it was established in 1998 after BMW was licensed the rights to the Rolls-Royce brand name and logo from Rolls-Royce plc and acquired the rights to the Spirit of Ecstasy and Rolls-Royce grill shape trademarks from Volkswagen AG. Rolls-Royce Motor Cars Limited operates from purpose-built administrative and production facilities opened in 2003 across from the historic Goodwood Circuit in Goodwood, West Sussex, England, United Kingdom. Rolls-Royce Motors Cars Limited is the exclusive manufacturer of Rolls-Royce branded motor cars since 2003.', 2012, 1, 'Convertible'),
('23', 'Toyota', 16, 'Carrera GT', 750, 'images/CarreraGT.jpg', 'Toyota Motor Corporation is a Japanese multinational automotive manufacturer headquartered in Toyota, Aichi, Japan. In 2017, Toyota\'s corporate structure consisted of 364,445 employees worldwide and, as of December 2019, was the tenth-largest company in the world by revenue. Toyota is the largest automobile manufacturer in Japan, and the second-largest in the world behind Volkswagen, based on 2018 unit sales.', 2015, 1, 'Luxurious'),
('24', 'Volkswagen', 17, 'Divo', 1000, 'images/Divo.jpg', 'Volkswagen, is a German automaker founded in 1937 by the German Labour Front, known for the iconic \"Beetle\" and headquartered in Wolfsburg. It is the flagship marque of the Volkswagen Group, the largest automaker by worldwide sales in 2016 and 2017. The group\'s biggest market is in China, which delivers 40% of its sales and profits.', 2018, 1, 'Luxurious'),
('25', 'Bugatti', 0, 'Veyron EB 16.4', 850, 'images/Veyron.jpeg', 'The Bugatti Veyron E', 2016, 1, 'Luxurious'),
('26', 'Ferrari', 0, 'Burago', 800, 'images/Burago.jpg', 'NULL', 2015, 1, 'Luxurious'),
('27', 'Ferrari', 0, 'Spider', 850, 'images/Spider.jpg', 'NULL', 2016, 1, 'Luxurious'),
('28', 'Rolls Royce', 0, 'Cullinan', 650, 'images/Cullinan.jpg', 'NULL', 2015, 1, 'SUV'),
('3', 'Koenigsegg', 0, 'One 1', 700, 'images/One1.jpg', 'The Koenigsegg Agera', 2011, 1, 'Luxurious'),
('4', 'Lamborghini ', 0, 'Centenario', 800, 'images/Centenario.jpg', 'NULL', 2016, 1, 'Luxurious'),
('5', 'Pagani', 0, 'Zonda 760 X', 600, 'images/Zonda760X.jpg', 'NULL', 2015, 1, 'Luxurious'),
('6', 'Toyota', 0, 'Corola', 450, 'images/Corolla.jpg', 'NULL', 2017, 1, 'Convertible'),
('7', 'Chevrolet', 0, 'Bolt', 320, 'images/Bolt.png', 'NULL', 2017, 1, 'Compact'),
('8', 'Chevrolet', 0, 'Impala', 380, 'images/Impala.jpg', 'NULL', 2016, 1, 'Convertible'),
('9', 'Toyota', 0, 'Highlander', 500, 'images/Highlander.png', 'NULL', 2018, 1, 'SUV');

-- --------------------------------------------------------

--
-- Stand-in structure for view `carswithhigherprice`
-- (See below for the actual view)
--
CREATE TABLE `carswithhigherprice` (
`car_id` varchar(20)
,`brand` varchar(20)
,`brand_id` int(20)
,`model` varchar(20)
,`price` int(10)
,`photo` varchar(45)
,`detials` varchar(1500)
,`year` year(4)
,`active` tinyint(10) unsigned
,`type` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `carswithlowerprice`
-- (See below for the actual view)
--
CREATE TABLE `carswithlowerprice` (
`car_id` varchar(20)
,`brand` varchar(20)
,`brand_id` int(20)
,`model` varchar(20)
,`price` int(10)
,`photo` varchar(45)
,`detials` varchar(1500)
,`year` year(4)
,`active` tinyint(10) unsigned
,`type` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `carswithmediumprice`
-- (See below for the actual view)
--
CREATE TABLE `carswithmediumprice` (
`car_id` varchar(20)
,`brand` varchar(20)
,`brand_id` int(20)
,`model` varchar(20)
,`price` int(10)
,`photo` varchar(45)
,`detials` varchar(1500)
,`year` year(4)
,`active` tinyint(10) unsigned
,`type` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `idReservation` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `userFullName` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullPrice` int(11) NOT NULL,
  `dateIn` date NOT NULL,
  `dateOut` date NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`idReservation`, `car_id`, `userFullName`, `user_id`, `fullPrice`, `dateIn`, `dateOut`, `active`) VALUES
(1, 11, 'Amanuel Semereab', 1, 750, '2022-02-23', '2022-02-25', 1),
(2, 25, 'Amanuel Semereab', 1, 850, '2022-02-24', '2022-02-24', 1),
(3, 28, 'john Stevenson', 4, 1300, '2022-02-24', '2022-02-25', 1),
(4, 3, 'john Stevenson', 4, 2100, '2022-02-24', '2022-02-26', 1),
(5, 21, 'john Stevenson', 4, 960, '2022-02-24', '2022-02-25', 1),
(6, 24, 'Yeti yeti', 5, 2000, '2022-02-24', '2022-02-25', 1),
(7, 13, 'Yeti yeti', 5, 1000, '2022-02-24', '2022-02-25', 1),
(8, 10, 'Yeti yeti', 5, 1100, '2022-02-24', '2022-02-25', 1),
(10, 9, 'Aman semer', 6, 1000, '2022-02-24', '2022-02-25', 1),
(11, 22, 'Aman semer', 6, 1300, '2022-02-24', '2022-02-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(25) NOT NULL,
  `fullName` varchar(45) NOT NULL,
  `email` varchar(70) NOT NULL,
  `pass` varchar(250) NOT NULL,
  `admin` tinyint(1) UNSIGNED NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullName`, `email`, `pass`, `admin`, `active`) VALUES
(1, 'Amanuel Semereab', 'semereabamanuel@gmail.com', '4c92b92e1f5115a835cdf43d23d0fcbf7312456e5af4fc7986a79f66a7a42da4', 0, 1),
(4, 'john Stevenson', 'john@gmail.com', 'a6adf91250f114a8c8d85f7878c8f0d3d187407700a743692ebef2b2b973901b', 1, 1),
(5, 'Yeti yeti', 'yeti@gmail.com', '7c8df1222a6cf2d21fd5ff9a1a2ad4af7309ce1bf3f26ae2a11b7a954edd810b', 1, 1),
(6, 'Aman semer', 'aman@gmail.com', '72bd89380286d3491f214e435d7760912ffe6792b67b6b82ab25cfbfc296bcc6', 1, 1);

-- --------------------------------------------------------

--
-- Structure for view `carswithhigherprice`
--
DROP TABLE IF EXISTS `carswithhigherprice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `carswithhigherprice`  AS SELECT `cars`.`car_id` AS `car_id`, `cars`.`brand` AS `brand`, `cars`.`brand_id` AS `brand_id`, `cars`.`model` AS `model`, `cars`.`price` AS `price`, `cars`.`photo` AS `photo`, `cars`.`detials` AS `detials`, `cars`.`year` AS `year`, `cars`.`active` AS `active`, `cars`.`type` AS `type` FROM `cars` WHERE (`cars`.`price` between 750 and 1000) ;

-- --------------------------------------------------------

--
-- Structure for view `carswithlowerprice`
--
DROP TABLE IF EXISTS `carswithlowerprice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `carswithlowerprice`  AS SELECT `cars`.`car_id` AS `car_id`, `cars`.`brand` AS `brand`, `cars`.`brand_id` AS `brand_id`, `cars`.`model` AS `model`, `cars`.`price` AS `price`, `cars`.`photo` AS `photo`, `cars`.`detials` AS `detials`, `cars`.`year` AS `year`, `cars`.`active` AS `active`, `cars`.`type` AS `type` FROM `cars` WHERE (`cars`.`price` between 300 and 500) ;

-- --------------------------------------------------------

--
-- Structure for view `carswithmediumprice`
--
DROP TABLE IF EXISTS `carswithmediumprice`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `carswithmediumprice`  AS SELECT `cars`.`car_id` AS `car_id`, `cars`.`brand` AS `brand`, `cars`.`brand_id` AS `brand_id`, `cars`.`model` AS `model`, `cars`.`price` AS `price`, `cars`.`photo` AS `photo`, `cars`.`detials` AS `detials`, `cars`.`year` AS `year`, `cars`.`active` AS `active`, `cars`.`type` AS `type` FROM `cars` WHERE (`cars`.`price` between 550 and 700) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`idReservation`),
  ADD UNIQUE KEY `car_id` (`car_id`),
  ADD KEY `userId` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `idReservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `userId` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;]]></string>
		</script>
	</layout>
</project>