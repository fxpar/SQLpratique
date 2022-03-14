-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 14 mars 2022 à 09:09
-- Version du serveur :  5.7.11
-- Version de PHP : 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sqlpratique`
--

-- --------------------------------------------------------

--
-- Structure de la table `livres`
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
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`idQuestion`, `numQuestion`, `db`, `enonce`, `correction`, `commentaire`, `rollback`) VALUES
(6, 1, 'sqlpratique_livres', 'Afficher tous les éléments de la table livre', 'SELECT * FROM livre', 'tous les livres sont affichés', ''),
(7, 2, 'sqlpratique_livres', 'Affiche tous les livres dont le titre commence par la lettre A', 'SELECT * FROM livre WHERE  	titre LIKE \"A%\"', 'On met LIKE et non égal.', ''),
(8, 3, 'sqlpratique_livres', 'Supprimer le ou les livres dont le titre contient \"Cyrano\"', 'Delete from livre where titre like \"%Cyrano%\"', 'Attention à l\'intégrité référentiel lors de la suppression.', 'Select count(titre)  from livre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`idQuestion`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
