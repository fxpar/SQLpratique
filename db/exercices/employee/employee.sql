-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : dbiae
-- Généré le : sam. 16 avr. 2022 à 07:45
-- Version du serveur : 10.5.15-MariaDB-1:10.5.15+maria~focal
-- Version de PHP : 8.0.15

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
-- Structure de la table `employee`
--

CREATE TABLE `employee` (
  `idQuestion` int(11) NOT NULL,
  `numQuestion` int(11) NOT NULL,
  `db` text NOT NULL,
  `enonce` text NOT NULL,
  `correction` text NOT NULL,
  `commentaire` text NOT NULL,
  `rollback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`idQuestion`, `numQuestion`, `db`, `enonce`, `correction`, `commentaire`, `rollback`) VALUES
(1, 1, 'sqlpratique_employee', 'Liste des employés ayant un salaire supérieur à celui de leur manager', 'SELECT E1.name as \'employee\', E1.salary, E1.managerId as \'mgr id\', E2.name as \'mgr\', E2.salary as \'mgr salary\' FROM employee E1 JOIN employee E2 on E1.managerId = E2.id Where E1.salary > E2.salary', 'Il s\'agit d\'une très belle requête d\'une table sur elle-même!', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`idQuestion`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `employee`
--
ALTER TABLE `employee`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
