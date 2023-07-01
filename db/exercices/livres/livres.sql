-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: dbiae
-- Generation Time: Jul 01, 2023 at 08:46 AM
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
-- Table structure for table `livres`
--

CREATE TABLE `livres` (
  `idQuestion` int(11) NOT NULL,
  `numQuestion` int(11) NOT NULL,
  `db` text NOT NULL,
  `enonce` text NOT NULL,
  `correction` text NOT NULL,
  `commentaire` text NOT NULL,
  `rollback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `livres`
--

INSERT INTO `livres` (`idQuestion`, `numQuestion`, `db`, `enonce`, `correction`, `commentaire`, `rollback`) VALUES
(6, 1, 'sqlpratique_livres', 'Afficher tous les éléments de la table livre', 'SELECT * FROM livre', 'tous les livres sont affichés', ''),
(7, 2, 'sqlpratique_livres', 'Affiche tous les livres dont le titre commence par la lettre A', 'SELECT * FROM livre WHERE  	titre LIKE \"A%\"', 'On met LIKE et non égal.', ''),
(8, 3, 'sqlpratique_livres', 'Supprimer le ou les livres dont le titre contient \"Cyrano\"', 'DELETE FROM livre WHERE titre LIKE \"%Cyrano%\"', 'Attention à l\'intégrité référentielle lors de la suppression.', 'Select count(titre)  from livre'),
(9, 4, 'sqlpratique_livres', 'Les auteurs qui n\'ont pas de prénom', 'SELECT * FROM auteur\r\nWHERE prenom = \"\"', 'Le champ prenom est de type TEXT, on demande donc s\'il y a des lignes avec du texte vide. On verra plus tard qu\'il existe d\'autres façons dont les lignes peuvent être vide (avec null).', ''),
(10, 5, 'sqlpratique_livres', 'Afficher les titre des livres avec leur type en français', 'SELECT titre, t.fr as \"role\" from livre, type t\r\nwhere t.id = livre.type', 'On peut créer la relation (jointure) soit avec where, soit avec inner join (mais on ne met qu\'une seule table dans le from):\r\nSELECT titre, t.fr as \"role\" from livre \r\nINNER JOIN type t ON t.id = livre.type\r\n\r\n', ''),
(11, 6, 'sqlpratique_livres', 'Afficher les nom et prénom des auteurs avec le titre de leur(s) livre', 'SELECT nom, prenom, l.titre FROM auteur a, livre l, contribution c\r\nWHERE c.livre = l.id \r\nAND c.auteur = a.id\r\n', 'On pourrait créer les jointures avec des join\r\nSELECT nom, prenom, l.titre FROM auteur a\r\nINNER JOIN contribution c ON c.auteur = a.id\r\nINNER JOIN livre l ON c.livre = l.id \r\n', ''),
(12, 7, 'sqlpratique_livres', 'Afficher les auteurs sans livre', 'SELECT * FROM auteur a\r\nLEFT JOIN contribution c on c.auteur = a.id\r\nWHERE c.auteur IS NULL\r\n', 'La jointure sur la gauche affiche toute les données des auteurs même s\'il n\'y a pas de contribution. En ajoutant NULL on affiche seulement ceux pour lesquels la contribution est vide.', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`idQuestion`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `livres`
--
ALTER TABLE `livres`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
