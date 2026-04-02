SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `kviz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `kviz`;

CREATE TABLE IF NOT EXISTS `kerdesek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kerdes` varchar(300) NOT NULL,
  `valasz1` varchar(200) NOT NULL,
  `valasz2` varchar(200) NOT NULL,
  `valasz3` varchar(200) NOT NULL,
  `helyes` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10349 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

INSERT INTO `kerdesek` (`id`, `kerdes`, `valasz1`, `valasz2`, `valasz3`, `helyes`) VALUES
(1, 'Körülbelül hány millió km-re van a Nap a Földtől?', '117', '150', '189', 2),
(2, 'Az alábbiak közül melyik NEM egy JavaScript framework?', 'React', 'Vue', 'Flask', 3),
(3, 'Mi Jeffrey Epstein szigetének a neve?', 'Little Green', 'Little Saint James', 'Little Cayman', 2),
(4, 'Hányas teremben szokott Faur István tanár úr tanítani a Pollákon belül legtöbbször?', 'Info. I', 'Info. IV', 'Info. V', 1),
(5, 'Hány széle van egy quasirhombicosidodecahedron-nak?', '45', '120', '85', 2),
(6, 'Melyik paranccsal tudsz kiíratni egy fájlt linuxon?', 'cat', 'touch', 'pwd', 1),
(7, 'Fordítsd le az alábbi mondatot: \"Labalabay koy gatas.\"', 'Nem szeretem a kapukat.', 'Szeretem a tejet.', 'Van egy nagy labubu-m.', 2),
(8, 'Milyen nyelven van az alábbi szöveg? \"Dalawang tambak ng kalbong bulate\"', 'Bulgár', 'Zulu', 'Filippínó', 3),
(9, 'Hány óra van egy percben?', '60', '0.6', '0,0167', 3),
(10, 'Hány hónapnak van 28 napja?', '1', '2', '12', 3),
(11, 'Hogy hívják a Linux logójában látható pingvint?', 'Linux', 'Tux', 'Unix', 2),
(12, 'Melyik elem periódusos jele a Au?', 'amerícium', 'ezüst', 'arany', 3),
(13, 'Körülbelül hány joule energiát termel egy átlagos japán ember lépése?', '0,1', '1', '0,01', 1),
(14, 'Melyik ország nem része az Európai Uniónak?', 'Lettország', 'Ciprus', 'Norvégia', 3),
(15, 'Olyan gépjárművön, amelynek teherbírását csak a szállítható személyek számával határozták meg, személyenként hány kilogramm rakomány szállítható?', '10kg', '20kg', '5kg', 1),
(16, 'Mennyi a maximum megengedett sebességhatár Magyarországon, autópályán?', '110km/h', '130km/h', '90km/h', 2),
(17, 'Normális esetben hány Minecraft tick történik egy másodperc alatt?', '15', '5', '20', 3),
(18, 'Hány CD lemez van a Minecraft  1.21.7-es verziójában?', '21', '17', '30', 1),
(19, 'Egy átlagos felnőtt embernek hány foga van?', '32', '34', '26', 1),
(20, 'Hol található a legkisebb csont az emberi testben?', 'Kéz', 'Orr', 'Fül', 3),
(21, 'Az alábbiak közül melyik trópusi növény?', 'Bugás lángvirág', 'Közönséges kígyószisz', 'Pofók árvacsalán', 1),
(22, 'Milyen hullámhosszú tartományban terjed a látható fény?', '1mm-780nm', '380-780nm', '1nm-6pm', 2),
(23, 'Hagyományosan hány szín van a szivárványban?', '7', '6', '8', 1),
(24, 'Mi a Genshin Impact kezdő karakter fiú változatának a neve?', 'Lumine', 'Kaeya', 'Aether', 3),
(25, 'Általában mikor virágzik az őszibarack, ha korán virágzik?', 'március', 'február', 'április', 1),
(26, 'Hány gigabájt 1 terrabájt az SI rendszer átváltása szerint?', '1000', '1024', '1048', 1),
(27, 'Milyen maximális adatátviteli sebességet képes elérni egy USB 3.2 2. generáció szabvány?', '20 Gbps', '5 Gbps', '10 Gbps', 3),
(28, 'Melyik OLED kijelzőfajta a legnépszerűbb telefonoknál?', 'WOLED', 'QD-OLED', 'AMOLED', 3),
(29, 'Hányszor hány pixel van egy \"full HD\" felbontású képernyőben?', '1920 × 1080', '2560 × 1440', '1280 × 720', 1),
(30, 'Melyik cég leányvállalata építette a Burdzs Kalifát?', 'Bechtel', 'Samsung', 'Tesla', 2),
(31, 'Melyik japán ételt szokták gyakran enni gyömbérrel?', 'sushi', 'onigiri', 'tempura', 1),
(32, 'Mi Japán fővárosa?', 'Tokió', 'Kiotó', 'Oszaka', 1),
(33, 'Melyik írásrendszer nem japán?', 'hiragana', 'kanji', 'hangul', 3),
(34, 'Melyik összetevő nincs a McDonald\'s Big Mac burgerjében?', 'hagyma', 'parmezán sajt', 'tojássárgája', 2),
(35, 'Melyik összetevő nincs a Burger King WHOPPER burgerjében?', 'vöröshagyma', 'bors', 'paprika', 3),
(36, 'Melyik sport labdájának a legkisebb az átmérője?', 'golf', 'pingpong', 'biliárd', 2),
(37, 'Körülbelül hányszor jobb egy kutya hallása mint egy emberé?', '4-szer', '1.5-ször', '2.5-ször', 1),
(38, 'Melyik növény nem gyümölcs (botanikai szempontból)?', 'spárga', 'tök', 'paradicsom', 1),
(39, 'Melyik növény gyümölcs (kulináris szempontból)?', 'tök', 'paprika', 'durián', 3),
(40, 'Az alábbi országok közül melyik a legkisebb?', 'San Marino', 'Monaco', 'Tuvalu', 2),
(41, 'Mi Burkina Faso fővárosa?', 'Yamoussoukro', 'N\'Djamena', 'Ouagadougou', 3),
(42, 'Az alábbiak közül melyik folyamat endoterm?', 'vas rozsdásodása', 'víz fagyása', 'fotoszintézis', 3),
(43, 'Egy derékszögű háromszög esetén az alábbiak közül melyik szögfüggvényt ajánlott használni egy, az átfogón fekvő szög kiszámításához, ha csak a két befogó hossza ismert?', 'szinusz', 'koszinusz', 'tangens', 3),
(44, 'Melyik nem alapszín?', 'zöld', 'kék', 'piros', 1),
(45, 'Melyik a magyar ábécé 30. betűje?', 'P', 'R', 'S', 3),
(46, 'Melyik prímtényező nem található meg a 35-ben?', '3', '7', '5', 1),
(47, 'Az alábbiak közül melyik szám nem primszám?', '997', '521', '771', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
