-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 09 mars 2022 à 21:57
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
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `idQuestion` int(11) NOT NULL,
  `db` text NOT NULL,
  `enonce` text NOT NULL,
  `correction` text NOT NULL,
  `commentaire` text NOT NULL,
  `numQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`idQuestion`, `db`, `enonce`, `correction`, `commentaire`, `numQuestion`) VALUES
(1, 'sqlpratique_livres', 'Afficher tous les enregistrements de la table livre', 'SELECT * FROM livre', 'tous les livres sont affichés', 1),
(2, 'sqlpratique_livres', 'Affiche tous les livres dont le titre commence par la lettre A', 'SELECT * FROM livre WHERE  	titreLivreFR LIKE \"A%\"', 'On met LIKE et non égal.', 2),
(3, 'sqlpratique_employee', 'Liste des employés ayant un salaire supérieur à celui de leur manager', 'SELECT E1.name, E1.salary, E1.managerId, E2.name, E2.salary FROM Employee E1\r\nJOIN Employee E2 on E1.managerId = E2.id\r\nWhere E1.salary > E2.salary', 'Il s\'agit d\'une très belle requête d\'une table sur elle-même!', 1),
(4, '', '', '', '', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`idQuestion`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
