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

CREATE TABLE IF NOT EXISTS `kerdesek` (
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
(5, 'Hány széle van egy quasirhombicosidodecahedron-nak?', '45', '120', '85', 2),
(6, 'Mennyi (5*2*48)/(2*4)+7?', '67', '32', '690', 1),
(7, 'Melyik paranccsal tudsz kiíratni egy fájlt linuxon?', 'cat', 'touch', 'pwd', 1),
(9, 'Fordítsd le az alábbi mondatot: \"Labalabay koy gatas.\"', 'Nem szeretem a kapukat.', 'Szeretem a tejet.', 'Van egy nagy labubu-m.', 2),
(10, 'Milyen nyelven van az alábbi szöveg? \"Dalawang tambak ng kalbong bulate\"', 'Bulgár', 'Zulu', 'Filippínó', 3),
(11, 'Ide leng, oda leng, egyszer fent van, máskor lent. Mi lehet?', 'hinta', 'hancúrléc', 'haj', 1),
(12, 'Hány óra van egy percben?', '60', '0.6', '0,0167', 3),
(13, 'Hány hónapnak van 28 napja?', '1', '2', '12', 3),
(14, 'Hogy hívják a Linux logójában látható pingvint?', 'Linux', 'Tux', 'Unix', 2),
(15, 'Melyik elem periódusos jele a Au?', 'amerícium', 'ezüst', 'arany', 3),
(16, 'Körülbelül hány joule energiát termel egy átlagos japán ember lépése?', '0,1', '1', '0,01', 1),
(17, 'Melyik ország nem része az Európai Uniónak?', 'Lettország', 'Ciprus', 'Norvégia', 3),
(18, 'Olyan gépjárművön, amelynek teherbírását csak a szállítható személyek számával határozták meg, személyenként hány kilogramm rakomány szállítható?', '10kg', '20kg', '5kg', 1),
(19, 'Mennyi a maximum megengedett sebességhatár Magyarországon, autópályán?', '110km/h', '130km/h', '90km/h', 2),
(20, 'Normális esetben hány Minecraft tick történik egy másodperc alatt?', '15', '5', '20', 3),
(21, 'Hány CD lemez van a Minecraft  1.21.7-es verziójában?', '21', '17', '30', 1),
(22, 'Egy átlagos felnőtt embernek hány foga van?', '32', '34', '26', 1),
(23, 'Hol található a legkisebb csont az emberi testben?', 'Kéz', 'Orr', 'Fül', 3),
(24, 'Az alábbiak közül melyik trópusi növény?', 'Bugás lángvirág', 'Közönséges kígyószisz', 'Pofók árvacsalán', 1),
(25, 'Milyen hullámhosszú tartományban terjed a látható fény?', '1mm-780nm', '380-780nm', '1nm-6pm', 2);

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
