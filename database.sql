-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Már 16. 10:38
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kviz`
--
CREATE DATABASE IF NOT EXISTS kviz;
USE kviz;


-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kerdesek`
--

CREATE TABLE `kerdesek` (
  `id` int(11) NOT NULL,
  `kerdes` varchar(300) NOT NULL,
  `valasz1` varchar(200) NOT NULL,
  `valasz2` varchar(200) NOT NULL,
  `valasz3` varchar(200) NOT NULL,
  `helyes` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kerdesek`
--

INSERT INTO `kerdesek` (`id`, `kerdes`, `valasz1`, `valasz2`, `valasz3`, `helyes`) VALUES
(1, 'Körülbelül hány millió km-re van a Nap a Földtől?', '117', '150', '189', 2),
(2, 'Az alábbiak közül melyik NEM egy JavaScript framework?', 'React', 'Vue', 'Flask', 3),
(3, 'Mi Jeffrey Epstein szigetének a neve?', 'Little Green', 'Little Saint James', 'Little Cayman', 2),
(4, 'Hányas teremben szokott Faur István tanítani a Pollákon belül legtöbbször?', 'Info. I', 'Info. IV', 'Info. V', 1),
(5, 'Hány széle van egy quasirhombicosidodecahedron-nak?', '45', '120', '85', 2);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kerdesek`
--
ALTER TABLE `kerdesek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kerdesek`
--
ALTER TABLE `kerdesek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
