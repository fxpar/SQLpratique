-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: dbiae
-- Generation Time: Apr 02, 2023 at 05:46 PM
-- Server version: 10.5.15-MariaDB-1:10.5.15+maria~focal
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sqlpratique`
--

-- --------------------------------------------------------

--
-- Table structure for table `dcg2022`
--

CREATE TABLE `dcg2022` (
  `idQuestion` int(11) NOT NULL,
  `numQuestion` int(11) NOT NULL,
  `db` text NOT NULL,
  `enonce` text NOT NULL,
  `correction` text NOT NULL,
  `commentaire` text NOT NULL,
  `rollback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcg2022`
--

INSERT INTO `dcg2022` (`idQuestion`, `numQuestion`, `db`, `enonce`, `correction`, `commentaire`, `rollback`) VALUES
(1, 1, 'sqlpratique_dcg2022', 'La liste des clients (numéro, nom et prénom) qui ont réservé un séjour \"MER & MAMAN BÉBÉ\" ayant débuté en janvier 2022.', 'SELECT C.numClient, nomClient, prénomClient\r\nFROM CLIENT C, RESERVER R, SEJOUR SE\r\nWHERE C.numClient = R.numClient\r\nAND R.codeSéjour = SE.codeSéjour\r\nAND libelléSéjour = \"MER & MAMAN BÉBÉ\"\r\nAND Month(dateDébutSéjour) = 1 \r\nAND Year(dateDébutSéjour) = 2022\r\n', 'Remplacez le caractère &amp; par %26<br>Vérifiez que vous avez mis les accents sur BÉBÉ.<br>\r\nUtilisez les formules de date (observez comment elles sont inscrites dans la bases avec une requête simple pour voir les premiers enregistrements de chaque table)', ''),
(2, 2, 'sqlpratique_dcg2022', 'Le nombre de soins par salon (code, nombre de soins) dont la durée est supérieure à 60 minutes.', 'SELECT codeSalon, COUNT(*)\r\nFROM SOIN\r\nWHERE duréeSoin > 60\r\nGROUP BY codeSalon\r\n', 'Pensez à regrouper les éléments', ''),
(3, 3, 'sqlpratique_dcg2022', 'La liste des soins (code et libellé) qui ne sont pas planifiés le 27 janvier 2022.', 'SELECT S.codeSéjour, libelléSéjour, COUNT(*)\r\nFROM SEJOUR S, RESERVER R\r\nWHERE R.codeSéjour = S.codeSéjour\r\nGROUP BY S.codeSéjour, libelléSéjour\r\nHAVING COUNT(*) > 20\r\n', 'Il n\'était pas demandé d\'afficher le nombre de fois il le séjour est planifié, mais c\'est une bonne idée.', ''),
(4, 4, 'sqlpratique_dcg2022', 'La liste des séjours (code et libellé) réservés par plus de 20 clients.', 'SELECT S.codeSéjour, libelleSéjour, COUNT(*)\r\nFROM SEJOUR S, RESERVER R\r\nWHERE R.codeSéjour = S.codeSéjour\r\nGROUP BY S.codeSéjour, libelleSéjour\r\nHAVING COUNT(*) > 20\r\n', '', ''),
(5, 5, 'sqlpratique_dcg2022', 'Écrire en langage SQL la requête permettant d’insérer le séjour intitulé « MER & MÉDITATION » ayant pour code MMD.', 'INSERT INTO SEJOUR\r\nVALUES (\"MMD\", \"MER & MÉDITATION\") \r\n', '', 'Select count(*) From SEJOUR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dcg2022`
--
ALTER TABLE `dcg2022`
  ADD PRIMARY KEY (`idQuestion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dcg2022`
--
ALTER TABLE `dcg2022`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
