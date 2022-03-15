-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 15 mars 2022 à 09:08
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
-- Base de données : `sqlpratique_chalets`
--

-- --------------------------------------------------------

--
-- Structure de la table `chalet`
--

CREATE TABLE `chalet` (
  `NumChalet` int(11) NOT NULL,
  `NomChalet` text,
  `CapaciteAccueil` int(11) DEFAULT NULL,
  `NbPieces` int(11) DEFAULT NULL,
  `NbLitsSimples` int(11) DEFAULT NULL,
  `NbLitsDoubles` int(11) DEFAULT NULL,
  `NumHotel` int(11) DEFAULT NULL,
  `CodeType` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chalet`
--

INSERT INTO `chalet` (`NumChalet`, `NomChalet`, `CapaciteAccueil`, `NbPieces`, `NbLitsSimples`, `NbLitsDoubles`, `NumHotel`, `CodeType`) VALUES
(1, 'Moineau', 6, 8, 3, 2, 1, NULL),
(2, 'Pélican', 2, 2, 0, 1, 1, NULL),
(3, 'Albatros', 3, 1, 1, 1, 2, NULL),
(4, 'Mouettes', 8, 5, 2, 3, 4, NULL),
(5, 'Cormorans', 7, 5, 1, 2, 3, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chalet`
--
ALTER TABLE `chalet`
  ADD PRIMARY KEY (`NumChalet`),
  ADD KEY `CodeType` (`CodeType`),
  ADD KEY `NumHotel` (`NumHotel`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chalet`
--
ALTER TABLE `chalet`
  MODIFY `NumChalet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chalet`
--
ALTER TABLE `chalet`
  ADD CONSTRAINT `chalet_ibfk_1` FOREIGN KEY (`CodeType`) REFERENCES `type` (`CodeType`),
  ADD CONSTRAINT `chalet_ibfk_2` FOREIGN KEY (`NumHotel`) REFERENCES `hotel` (`NumHotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
