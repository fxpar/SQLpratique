-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 30 mars 2022 à 15:11
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

DROP TABLE IF EXISTS `chalet`;
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

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE `employe` (
  `CodeEmp` int(11) NOT NULL,
  `NomEmp` text,
  `PrenomEmp` text,
  `RueEmp` text,
  `VilleEmp` text,
  `CPEmp` int(11) DEFAULT NULL,
  `Salaire` decimal(10,0) DEFAULT NULL,
  `NumHotel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`CodeEmp`, `NomEmp`, `PrenomEmp`, `RueEmp`, `VilleEmp`, `CPEmp`, `Salaire`, `NumHotel`) VALUES
(1, 'Granger', 'Hermione', '', '', 33300, '1900', 1),
(2, 'Potter', 'Harry', '', '', 33150, '1650', 2),
(3, 'Weasley', 'Ron', '', '', 33800, '1400', 1),
(4, 'Weasley', 'Ginny', '', '', 33200, '1700', 3),
(5, 'Malfoy', 'Draco', '', '', 33400, '2500', 4);

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `NumHotel` int(11) NOT NULL,
  `NomHotel` text,
  `NbEtoiles` int(11) DEFAULT NULL,
  `CPHotel` int(11) DEFAULT NULL,
  `VilleHotel` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`NumHotel`, `NomHotel`, `NbEtoiles`, `CPHotel`, `VilleHotel`) VALUES
(1, 'Chênes', 3, NULL, 'Nice'),
(2, 'Cèdres', 5, 33000, 'Bordeaux'),
(3, 'Cerisiers', 2, 33150, 'Cenon'),
(4, 'Citronniers', 1, 33700, 'Mérignac'),
(5, 'Acacias', 4, 33200, 'Bacalan');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `CodeType` int(11) NOT NULL,
  `LibelléType` text,
  `TarifSemaine` decimal(10,0) DEFAULT NULL,
  `TarifNuitee` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`CodeEmp`),
  ADD KEY `NumHotel` (`NumHotel`);

--
-- Index pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`NumHotel`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`CodeType`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chalet`
--
ALTER TABLE `chalet`
  MODIFY `NumChalet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `CodeEmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `NumHotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `CodeType` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `chalet`
--
ALTER TABLE `chalet`
  ADD CONSTRAINT `chalet_ibfk_1` FOREIGN KEY (`CodeType`) REFERENCES `type` (`CodeType`),
  ADD CONSTRAINT `chalet_ibfk_2` FOREIGN KEY (`NumHotel`) REFERENCES `hotel` (`NumHotel`);

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `employe_ibfk_1` FOREIGN KEY (`NumHotel`) REFERENCES `hotel` (`NumHotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
