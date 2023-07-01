-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: dbiae
-- Generation Time: Apr 02, 2023 at 05:57 PM
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
-- Table structure for table `dcg2020`
--

DROP TABLE IF EXISTS `dcg2020`;
CREATE TABLE `dcg2020` (
  `idQuestion` int(11) NOT NULL,
  `numQuestion` int(11) NOT NULL,
  `db` text NOT NULL,
  `enonce` text NOT NULL,
  `correction` text NOT NULL,
  `commentaire` text NOT NULL,
  `rollback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcg2020`
--

INSERT INTO `dcg2020` (`idQuestion`, `numQuestion`, `db`, `enonce`, `correction`, `commentaire`, `rollback`) VALUES
(1, 1, 'sqlpratique_dcg2020', 'Affichez Le pavillon du navire immatriculé 9776418', 'SELECT pavillon\r\nFROM Navire N, Pays P\r\nWHERE N.idPays = P.idPays \r\nAND numOMI = 9776418;', 'On doit faire la jointure entre la table des navires et la table des pays', ''),
(2, 2, 'sqlpratique_dcg2020', 'Le nombre d’opérations de l’escale n°20200524007 dont le libellé est Déchargement.', 'SELECT COUNT(*) \r\nFROM Operation O, CompositionCargaison C\r\nWHERE O.idOperation = C.idOperation\r\nAND idEscale = 20200524007\r\nAND libelléOpération = \"Déchargement\"\r\n', '', ''),
(3, 3, 'sqlpratique_dcg2020', 'La liste des agents consignataires (numéro, raison sociale) n’ayant encore jamais pris en charge d’escale.', 'SELECT IdAgent, RaisonSocialeAgent\r\nFROM AgentConsignataire\r\nWHERE idAgent NOT IN  (SELECT idAgent \r\n	       FROM Escale)\r\n', '', ''),
(4, 4, 'sqlpratique_dcg2020', 'La liste des clients (identifiant, raison sociale, tonnage total) pour lesquels des opérations ont été réalisées pour un tonnage total supérieur à 1000 tonnes.', 'SELECT CL.idClient, raisonSocialeClient, SUM (tonnageMarchandise)\r\nFROM CLIENT CL, compositionCargaison CO\r\nWHERE CO.idClient = CL.idClient\r\nGROUP BY CL.idClient, raisonSocialeClient\r\nHAVING SUM (tonnageMarchandise) > 1000\r\n', '', ''),
(5, 5, 'sqlpratique_dcg2020', 'e)	La liste des navires (numéro, nom) de plus grande longueur que le navire ST EXUPÉRY et qui ont fait escale en 2019 (date de début).', 'SELECT NumOMI, NomNavire \r\nFROM Navire N, Escale E\r\nWHERE N.numOMI = E.numOMI \r\nAND Year(dateDebut) = 2019\r\nAND longueur > (SELECT longueur \r\n  FROM NAVIRE \r\nWHERE nomNavire = \"ST EXUPÉRY\")\r\n', 'Vérifiez que vous avez mis l\'accent à ST EXUPÉRY.\r\nOn a besoin d\'avoir d\'obtenir les informations sur la longueur de ce navire pour obtenir la liste des autres navires.', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dcg2020`
--
ALTER TABLE `dcg2020`
  ADD PRIMARY KEY (`idQuestion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dcg2020`
--
ALTER TABLE `dcg2020`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
