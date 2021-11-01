-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2021. Nov 01. 18:19
-- Kiszolgáló verziója: 8.0.26-0ubuntu0.20.04.3
-- PHP verzió: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `irodalom`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `egyenlegvaltozasok`
--

CREATE TABLE `egyenlegvaltozasok` (
  `id` int NOT NULL,
  `datum` date NOT NULL,
  `egyenleg` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `egyenlegvaltozasok`
--

INSERT INTO `egyenlegvaltozasok` (`id`, `datum`, `egyenleg`) VALUES
(1, '2020-10-11', 7),
(2, '2021-10-20', 10),
(3, '2021-10-19', 17400),
(4, '2021-10-20', 44),
(5, '2021-11-01', 41100),
(6, '2021-11-01', 71);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `egyenlegvaltozasok`
--
ALTER TABLE `egyenlegvaltozasok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `egyenlegvaltozasok`
--
ALTER TABLE `egyenlegvaltozasok`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
