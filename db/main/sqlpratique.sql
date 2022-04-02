-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 30 mars 2022 à 15:02
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
-- Structure de la table `chalets`
--

DROP TABLE IF EXISTS `chalets`;
CREATE TABLE `chalets` (
  `idQuestion` int(11) NOT NULL,
  `numQuestion` int(11) NOT NULL,
  `db` text NOT NULL,
  `enonce` text NOT NULL,
  `correction` text NOT NULL,
  `commentaire` text NOT NULL,
  `rollback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `chalets`
--

INSERT INTO `chalets` (`idQuestion`, `numQuestion`, `db`, `enonce`, `correction`, `commentaire`, `rollback`) VALUES
(1, 1, '', 'Quels sont les hôtels (nom et ville de l’hôtel) qui ont plus de 3 étoiles ?', 'SELECT NomHotel, VilleHotel from Hotel WHERE NbEtoiles > 3', 'Simple requête avec where numérique', ''),
(2, 2, '', 'Quel est le montant total des salaires (addition) par hôtel (numéro et nom d’hôtel) triés\r\npar ordre alphabétique des hôtels ?', 'select NomHotel, sum(Salaire) from Employe\r\nJOIN hotel on Hotel.NumHotel = Employe.NumHotel\r\nGroup by NomHotel \r\norder by NomHotel \r\n', 'Jointure et addition', ''),
(3, 3, '', 'Quels sont les chalets (numéro et nom du chalet) qui ont 5 pièces, classés par hôtels (nom de l’hôtel) ?', 'SELECT NumChalet, NomChalet from Chalet where NbPieces = 5 ORDER BY NomChalet', 'simple where numérique', ''),
(4, 4, '', 'Liste des salariés (nom et prénom) qui travaillent pour des hôtels ayant plus de 3 pièces ? ', 'SELECT PrenomEmp, NomEmp from Employe\r\nJOIN Hotel on Employe.NumHotel = hotel.NumHotel\r\nwhere  Employe.NumHotel in (\r\n	SELECT NumHotel from Chalet where NbPieces > 3)\r\n', 'Jointure et sous requête pour obtenir la liste des hôtels de plus de 3 pièces', ''),
(5, 5, '', 'Suite à un changement de législation, les hôtels quatre étoiles sont reclassés en hôtel cinq étoiles. Écrivez la requête correspondante.', 'UPDATE Hotel set NbEtoiles = 5 WHERE NbEtoiles = 4', 'Modification des données', 'Select count(*) as \'nb 5 étoiles\' from hotel where NbEtoiles = 5'),
(6, 6, '', 'Quel est le salarié (nom, prénom) qui a le salaire le plus élevé ?', 'SELECT PrenomEmp, NomEmp, max(salaire) from Employe', 'Simple requête avec calcul', ''),
(7, 7, '', 'Quel est le salarié (nom, prénom, nom de l’hôtel) qui a le salaire le plus élevé ?', 'SELECT PrenomEmp, NomEmp, max(salaire), NomHotel from Employe\r\njoin Hotel on Employe.NumHotel = Hotel.NumHotel\r\n', 'jointure', ''),
(8, 8, '', 'Liste des salariés (nom, prénom) qui ont un salaire supérieur à la moyenne des salaires', 'SELECT PrenomEmp, NomEmp from Employe GROUP by NomEmp HAVING Salaire > (SELECT avg(Salaire) from Employe)', 'Sous requête avec calcul et regroupement', ''),
(9, 9, '', 'Créez la requête qui ajoutera le nouvel employé Albus DUMBLEDORE habitant Londres, avec un salaire de 5000 (on ne dispose pas de son code postal pour l’instant). Il est rattaché à l’hôtel numéro 3', 'insert into Employe (PrenomEmp,NomEmp, VilleEmp, Salaire, NumHotel) VALUES(\"Albus\",\"Dumbledore\", \"Londres\", 5000, 3)', 'Simple ajout', 'select count(*) from Employe'),
(10, 10, '', 'Ajoutez l’employé Albus DUMBLEDORE habitant Londres, avec un salaire de 5000 (on ne dispose pas de son code postal pour l’instant). Il est rattaché à l’hôtel \"Cerisiers\".', 'insert into Employe (PrenomEmp,NomEmp, VilleEmp, Salaire, NumHotel) VALUES(\"Albus\",\"Dumbledore\", \"Londres\", 5000, \r\n	(select NumHotel from Hotel where NomHotel = \"Cerisiers\"))\r\n', 'Requête imbriquée pour avoir l\'id de l\'hotel', 'select count(*) from Employe');

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

DROP TABLE IF EXISTS `employee`;
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
(1, 1, 'sqlpratique_employee', 'Liste des employés ayant un salaire supérieur à celui de leur manager', 'SELECT E1.name, E1.salary, E1.managerId, E2.name, E2.salary FROM Employee E1\r\nJOIN Employee E2 on E1.managerId = E2.id\r\nWhere E1.salary > E2.salary', 'Il s\'agit d\'une très belle requête d\'une table sur elle-même!', '');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

DROP TABLE IF EXISTS `livres`;
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
(8, 3, 'sqlpratique_livres', 'Supprimer le ou les livres dont le titre contient \"Cyrano\"', 'Delete from livre where titre like \"%Cyrano%\"', 'Attention à l\'intégrité référentielle lors de la suppression.', 'Select count(titre)  from livre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chalets`
--
ALTER TABLE `chalets`
  ADD PRIMARY KEY (`idQuestion`);

--
-- Index pour la table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`idQuestion`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`idQuestion`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chalets`
--
ALTER TABLE `chalets`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `employee`
--
ALTER TABLE `employee`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
