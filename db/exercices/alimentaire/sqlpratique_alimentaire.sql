-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: dbiae
-- Generation Time: Jul 01, 2023 at 05:15 PM
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
-- Database: `sqlpratique_alimentaire`
--

-- --------------------------------------------------------

--
-- Table structure for table `Clients`
--

CREATE TABLE `Clients` (
  `IDClient` int(11) NOT NULL,
  `Adresse` text DEFAULT NULL,
  `Ville` text DEFAULT NULL,
  `Etat` text DEFAULT NULL,
  `CodePostal` decimal(10,0) DEFAULT NULL,
  `Pays` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Clients`
--

INSERT INTO `Clients` (`IDClient`, `Adresse`, `Ville`, `Etat`, `CodePostal`, `Pays`) VALUES
(3002, '700 Aliceanna Street', 'Baltimore', 'MD', '21202', 'USA'),
(3049, '1620 Rue Notre Dame', 'Trois Rivieres', 'QC', '0', 'Canada'),
(3054, 'Olaya Junction Of King Fahad And King Abdullah Road', 'Riyadh', NULL, '11623', 'Arabie Saoudite'),
(3056, '7102 Grand Horizons Boulevard', 'Orlando', 'FL', '32821', 'USA'),
(3079, 'No 108 Guangzhou Road, Anping District', 'Tainan', NULL, '708003', 'Chine'),
(3081, 'Newark International Airport', 'Newark', 'NJ', '7114', 'USA'),
(3104, 'No 138 Xiangshan Road, Jiangyin  214400 China', 'Jiangyin', 'CN-32', '214400', 'Chine'),
(3186, '209 4th Avenue Se', 'Calgary', 'AB', '0', 'Canada'),
(3199, 'No 607 Renmin Avenue, Nanyuan Street, Yuhang District', 'Hangzhou', NULL, '311100', 'Chine'),
(3207, 'No. 100 North Haitang Road', 'Sanya', NULL, '572013', 'Chine'),
(3210, '14th Street, Noordwyk Exit 20, Halfway House', 'Midrand', NULL, '1685', 'Afrique du Sud'),
(3211, 'No.169, Rajiv Gandhi Salai, Old Mahabalipuram Road, Semmencherry', 'Chennai', NULL, '600119', 'Inde'),
(3235, 'No 3-A1 Kundanahalli Main Road, Mahadevpura, Opposite Ifb Campus, Whitefield', 'Bengaluru', NULL, '560048', 'Inde'),
(3247, '270 W 43rd St', 'New York', 'NY', '10036', 'USA'),
(3285, '6593 Weighlock Drive', 'East Syracuse', 'NY', '13057', 'USA'),
(3297, '1128 West Hastings Street', 'Vancouver', 'BC', '0', 'Canada'),
(3336, 'Cortina Del Muelle, 1', 'Malaga', NULL, '29015', 'Espagne'),
(3338, 'Abu Dhabi Golf Club', 'Abu Dhabi', NULL, '126797', 'Emirats Arabe Unis'),
(3370, 'No.66 Lvshun Road Shanghai', 'Shanghai', NULL, '200080', 'Chine'),
(3457, 'Renaissance Center, 400 Renaissance Drive W', 'Detroit', 'MI', '48248', 'USA'),
(3463, 'Salwa Road', 'Doha', NULL, NULL, 'Katar'),
(3464, 'Number 1, Wenhua Third Road Section 1', 'Xinbei', NULL, '244', 'Taïwan'),
(3471, 'Baie D\'\'oro Bp175', 'Ile Des Pins', NULL, '98832', 'New Caledonia'),
(3529, '41/12 Moo 3, Khuk Khak, Takuapa', 'Phang Nga', NULL, '82220', 'Thaïlande'),
(3542, '24901 Country Club Boulevard', 'North Olmsted', 'OH', '44070', 'USA'),
(3547, '401 North Riverpoint Boulevard', 'Spokane', 'WA', '99202', 'USA'),
(3562, '1600 Holcombe Boulevard', 'Houston', 'TX', '77030', 'USA'),
(3571, 'Crta. De Cadiz, Km 193urb. Marbella Del Este', 'Marbella', NULL, '29600', 'Espagne'),
(3586, '1 Agile Road', 'Huizhou', NULL, '516021', 'Chine'),
(3590, '2 Jalan Stesen Sentral', 'Kuala Lumpur', NULL, '50470', 'Malaisie'),
(3609, '7707 Woodmont Avenue', 'Bethesda', 'MD', '20814', 'USA'),
(3623, '4901 West Plano Parkway', 'Plano', 'TX', '75093', 'USA'),
(3661, 'Inge-Beisheim-Platz 1', 'Berlin', NULL, '10785', 'Allemagne'),
(3683, '416 Garstang Road, Broughton', 'Preston', NULL, '0', 'Royaume Uni'),
(3738, 'Av. 5 De Febrero # 1351av. 5 De Febrero # 1351  Queretaro, 76120 Mexico', 'Queretaro', NULL, '76120', 'Mexique'),
(3764, '100 West Trade Street', 'Charlotte', 'NC', '28202', 'USA'),
(3770, 'Plot P-7, Midc, Chakan Industrial Area Phase-1, Talegaon Chakan Road, Khalumbre', 'Pune', NULL, '410501', 'Inde'),
(3798, '7 Plaza De Las Cortes', 'Madrid', NULL, '28014', 'Espagne'),
(3842, 'Hamdan Bin Mohammed Street (5th)', 'Abu Dhabi', NULL, NULL, 'Emirats Arabe Unis'),
(3858, '314 Haeundaehaebyeon-Ro, Haeundae-Gu', 'Busan', NULL, '48099', 'Corée du Sud'),
(3880, '10222 102nd Street', 'Edmonton', 'AB', '0', 'Canada'),
(3882, 'Galaxy Macau, Cotai Taipa', 'Macau', NULL, NULL, 'Chine'),
(3929, 'Steinplatz 4', 'Berlin', NULL, '10623', 'Allemagne'),
(3955, '8-15 Ton Duc Thang Street, District 1', 'Ho Chi Minh City', NULL, NULL, 'Vietnam'),
(3962, '20 Nathan Road, Kowloon', 'Hong Kong', NULL, NULL, 'Chine'),
(3973, '6015 Park Avenue', 'Memphis', 'TN', '38119', 'USA'),
(4026, 'Prince Muhammed Bin Fahd Rd', 'Dammam', NULL, '32415', 'Arabie Saoudite'),
(4029, 'No. 4499 Kang Xin Highway, Pudong New District', 'Shanghai', NULL, '201315', 'Chine'),
(4047, 'King Saud Road, Al Wazarat District, Riyadh, 11464, Kingdom Of Saudi Arabia', 'Riyadh', NULL, '12622', 'Arabie Saoudite'),
(4063, 'Avenida De Las Americas 1500, Country Club', 'Guadalajara', NULL, '44610', 'Mexique'),
(4088, '180 Hawley Lane', 'Trumbull', 'CT', '6611', 'USA'),
(4090, '18700 John.F. Kennedy Blvd.', 'Houston', 'TX', '77032', 'USA'),
(4104, '1500 Epcot Resorts Blvd', 'Lake Buena Vista', 'FL', '32830', 'USA'),
(4122, 'Avda. De Francia, 67', 'Valencia', NULL, '46023', 'Espagne'),
(4125, 'Apaczai Csere Janos U. 4.', 'Budapest', NULL, '1052', 'Hungary'),
(4131, 'Abu Dhabi National Exhibition Centre', 'Abu Dhabi', NULL, NULL, 'Emirats Arabe Unis'),
(4194, 'No. 8 Baoxing Road, Bao\'an District', 'Shenzhen', NULL, '518101', 'Chine'),
(4215, '1 Day Hill Road', 'Windsor', 'CT', '6095', 'USA'),
(4225, '5th Circle', 'Amman', NULL, '11184', 'Jordanie'),
(4269, '1331 Pennsylvania Avenue', 'Washington', 'DC', '20004', 'USA'),
(4272, '9751 Washingtonian Boulevard', 'Gaithersburg', 'MD', '20878', 'USA'),
(4336, '399 Nanjing West Road', 'Shanghai', NULL, '200003', 'Chine'),
(4339, 'Sinaloa 31, Penon De Los Banos', 'Mexico City', NULL, '15520', 'Mexique'),
(4362, 'Al Sufouh', 'Dubai', NULL, NULL, 'Emirats Arabe Unis'),
(4363, 'Plaza De La Paz No 102, Puerto Interior, Silao, Guanajuato, Mexico, C.P. 36275', 'Silao', NULL, NULL, 'Mexique'),
(4365, '438-7 Moto Yamaguchikata, Somanouchi Cho, Tenri', 'Nara', NULL, '6320032', 'Japon'),
(4369, 'King Faisal Road', 'Sharjah', NULL, NULL, 'Emirats Arabe Unis'),
(4376, 'Jana Pawla Ii 21', 'Warsaw', NULL, '854', 'Pologne'),
(4384, 'S. No. 19 & 20 Hinjewadi', 'Pune', NULL, '411057', 'Inde'),
(4388, '292 Chezhan Avenue', 'Wenzhou', NULL, '325000', 'Chine'),
(4390, 'Via Giulio Quinto Stefana 3 – 25126', 'Brescia', NULL, '25126', 'Italie'),
(4432, '23 Puxiazhou Road', 'Fuzhou', NULL, '350026', 'Chine'),
(4445, 'Terminal A, O.R. Tambo International Airport', 'Johannesburg', NULL, '1627', 'Afrique du Sud'),
(4459, '4331 Dominion Street', 'Burnaby', 'BC', '0', 'Canada'),
(4480, 'Dubai Airport', 'Dubai', NULL, '10001', 'Emirats Arabe Unis'),
(4481, '55/57 Avenue Raymond Poincare', 'Paris', NULL, '75116', 'France'),
(4538, '540 Washington Boulevard', 'Jersey City', 'NJ', '7310', 'USA'),
(4551, '2201 Collins Ave', 'Miami Beach', 'FL', '33139', 'USA'),
(4561, 'Boulevard Kukulcan Km. 20.5', 'Cancun', NULL, '77500', 'Mexique'),
(4562, '3929 Northwest 79th Avenue', 'Miami', 'FL', '33166', 'USA'),
(4571, '176 Sinbanpo-Ro, Seocho-Gu', 'Seoul', NULL, '6546', 'Corée du Sud'),
(4596, 'Rue De Medran 70', 'Verbier', NULL, '1936', 'Suisse'),
(4599, '149 Avenue Jean Paul Ii Et Duverger', 'Port Au Prince', NULL, '6113', 'Haiti'),
(4650, 'Db City - Arera Hills', 'Bhopal', NULL, '462011', 'Inde'),
(4662, '2912 Petit Street', 'Camarillo', 'CA', '93012', 'USA'),
(4665, '550 South Spring Street', 'Aspen', 'CO', '81611', 'USA'),
(4670, 'No 299 Binhong East Road', 'Jinhua', 'CN-33', '321015', 'Chine'),
(4708, 'Five Madison Avenue', 'New York', 'NY', '10010', 'USA'),
(4733, '98 Xu Dong Avenue', 'Wuhan', NULL, '430062', 'Chine'),
(4750, 'Boleslawa Prusa 2', 'Warsaw', NULL, '493', 'Pologne'),
(4769, 'Abide-I Hurriyet Caddesi No 142, Sisli', 'Istanbul', NULL, '34381', 'Turquie'),
(4814, 'Avenida Vitacura 130 Providencia', 'Santiago', NULL, '7510605', 'Chili'),
(4850, 'No. 15, Section 1ren Min Zhong Road', 'Chengdu', NULL, '610015', 'Chine');

-- --------------------------------------------------------

--
-- Table structure for table `Commandes`
--

CREATE TABLE `Commandes` (
  `IDCommande` int(11) NOT NULL,
  `IDDuClient` int(11) DEFAULT NULL,
  `IDDeEmployé` int(11) DEFAULT NULL,
  `DateCommande` datetime DEFAULT NULL,
  `DatePromise` datetime DEFAULT NULL,
  `DateEnvoi` datetime DEFAULT NULL,
  `Expéditeur` int(11) DEFAULT NULL,
  `FraisDePort` float(10,2) DEFAULT NULL,
  `DestNom` text DEFAULT NULL,
  `DestAdresse` text DEFAULT NULL,
  `DestCP` decimal(10,0) DEFAULT NULL,
  `DestVille` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Commandes`
--

INSERT INTO `Commandes` (`IDCommande`, `IDDuClient`, `IDDeEmployé`, `DateCommande`, `DatePromise`, `DateEnvoi`, `Expéditeur`, `FraisDePort`, `DestNom`, `DestAdresse`, `DestCP`, `DestVille`) VALUES
(5, NULL, NULL, NULL, NULL, NULL, NULL, 55.00, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, 53.15, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Dépôts`
--

CREATE TABLE `Dépôts` (
  `IDDépôt` int(11) NOT NULL,
  `Nom` text DEFAULT NULL,
  `Adresse` decimal(10,0) DEFAULT NULL,
  `Ville` text DEFAULT NULL,
  `CodePostal` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `DétailCommande`
--

CREATE TABLE `DétailCommande` (
  `IDCommande` int(11) DEFAULT NULL,
  `IDDuProduit` int(11) DEFAULT NULL,
  `Quantité` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Employé`
--

CREATE TABLE `Employé` (
  `IDEmployé` int(11) NOT NULL,
  `Prénom` text DEFAULT NULL,
  `Nom` text DEFAULT NULL,
  `Sexe` text DEFAULT NULL,
  `Naisssance` datetime DEFAULT NULL,
  `Entrée` datetime DEFAULT NULL,
  `Responsable` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Famille`
--

CREATE TABLE `Famille` (
  `Fa` int(11) NOT NULL,
  `Famille` text DEFAULT NULL,
  `FamilleEN` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Fournisseurs`
--

CREATE TABLE `Fournisseurs` (
  `IDFournisseur` varchar(50) NOT NULL,
  `NomFournisseur` text DEFAULT NULL,
  `ISIN` text DEFAULT NULL,
  `Pays` text DEFAULT NULL,
  `Région` text DEFAULT NULL,
  `NomContact` text DEFAULT NULL,
  `PrénomContact` text DEFAULT NULL,
  `Titre` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `MotifsRupture`
--

CREATE TABLE `MotifsRupture` (
  `IDMotifRupture` int(11) NOT NULL,
  `MotifRupture` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `MotifsTicket`
--

CREATE TABLE `MotifsTicket` (
  `IDMotifTicket` int(11) NOT NULL,
  `MotifTicket` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Produits`
--

CREATE TABLE `Produits` (
  `Id` int(11) NOT NULL,
  `Désignation article` text DEFAULT NULL,
  `Rayon` int(11) DEFAULT NULL,
  `Famille` int(11) DEFAULT NULL,
  `Prix` decimal(10,2) DEFAULT NULL,
  `Coût` decimal(10,2) DEFAULT NULL,
  `Selectionner` decimal(10,0) DEFAULT NULL,
  `Rupture` tinyint(1) DEFAULT NULL,
  `MotifRupture` int(11) DEFAULT NULL,
  `StockMini` int(11) DEFAULT NULL,
  `Fournisseur` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Produits`
--

INSERT INTO `Produits` (`Id`, `Désignation article`, `Rayon`, `Famille`, `Prix`, `Coût`, `Selectionner`, `Rupture`, `MotifRupture`, `StockMini`, `Fournisseur`) VALUES
(5017, 'NESTLE 4X100G P TI GOURMAN CHO', 1, 9, '1.67', '0.64', NULL, 1, 4, 8, 'US61174X1090'),
(5057, '2KG CROQUET CHATS SAUM/THON BF', 1, 27, '0.05', '0.02', NULL, 0, NULL, 3, 'US3703341046'),
(5183, 'WHISKAS IRESIS.POULET FROM.60G', 1, 27, '3.62', '1.67', NULL, 0, NULL, 9, 'INE216A01030'),
(5226, 'VITA FLOCON COMPLET 250MLTOUS', 1, 27, '3.70', '1.59', NULL, 0, NULL, 7, 'FR0000120172'),
(5335, 'LT WHISKY GOLDEN SPOT', 2, 61, '12.61', '1.02', NULL, 0, NULL, 4, 'US6092071058'),
(5360, 'MAGNUM 1,5LT RICARD 45[', 2, 61, '15.81', '0.96', NULL, 0, NULL, 14, 'US5132721045'),
(5378, 'BL BAILEY\'S', 2, 61, '12.36', '0.46', NULL, 0, NULL, 2, 'BE0974256852'),
(5391, '75CL LILLET ROSE 17[', 2, 61, '11.36', '0.79', NULL, 1, 3, 10, 'JP3802600001'),
(5422, '1/2L PASTIS LAVANDOU 45[ ECO', 2, 61, '9.69', '4.50', NULL, 0, NULL, 2, 'GB0008847096'),
(5429, 'FLK 20CL GIN GIBSON\'S S/BLISTE', 2, 61, '15.17', '6.22', NULL, 0, NULL, NULL, 'SG1T56930848'),
(5492, 'LITRE AMER BIERE 14,8[ CUSENIE', 2, 60, '5.99', '1.15', NULL, 0, NULL, 16, 'JP3422950000'),
(5498, 'BOCAL 1 LITRE GRIOTTINES PEURE', 2, 60, '11.17', '1.24', NULL, 0, NULL, 1, 'KYG9431R1039'),
(5523, 'PACK 12X25 CL 1664', 2, 50, '7.62', '1.13', NULL, 0, NULL, 13, 'US9024941034'),
(5600, 'LA GOUDALE BIERE 7,2% 50CL', 2, 50, '4.11', '0.51', NULL, 0, NULL, 19, 'GB0008847096'),
(5627, 'BTE 50CL KRO ROUSSE 7[2', 2, 50, '3.45', '2.35', NULL, 0, NULL, 9, 'JP3422950000'),
(5646, 'FUT 6LT BIERE LEFFE BLONDE', 2, 50, '10.77', '0.24', NULL, 0, NULL, 4, 'US5132721045'),
(5652, 'B.75CL LEFFE ABAYE BLOND.9[VP', 2, 50, '7.86', '0.82', NULL, 0, NULL, 4, 'JP3918000005'),
(5671, 'BT 50 BIERE BLONDE 8[ BF', 2, 50, '3.98', '2.31', NULL, 0, NULL, 14, 'KYG960071028'),
(5681, 'PK 3X33CL DESPE RED 5.9[', 2, 50, '3.57', '1.54', NULL, 0, NULL, 11, 'US5007541064'),
(5691, 'PACK 15X25 CL 1664 FORMAT SPEC', 2, 50, '3.57', '0.75', NULL, 0, NULL, 20, 'US0394831020'),
(5725, 'BT 50CL BIERE ROUG.RINCE COCHO', 2, 50, '5.72', '0.81', NULL, 0, NULL, 3, 'BRJBSSACNOR8'),
(5770, 'RLX 6 GOUTER NONNETTE/ORANGE', 1, 2, '6.51', '3.58', NULL, 0, NULL, 10, 'US5010441013'),
(5794, 'PT 8 TARTELET.FRAISE POULT', 1, 2, '1.54', '1.14', NULL, 0, NULL, 20, 'CNE100001SL2'),
(5854, 'PT150G 12GENOISE ORANG CHOC BF', 1, 2, '2.28', '1.60', NULL, 0, NULL, 1, 'US5010441013'),
(5880, 'PT 220G TRONCHE CAKE CROUSTILL', 1, 2, '0.46', '0.30', NULL, 0, NULL, 20, 'INE216A01030'),
(5910, 'PT 165G.PTI BEUR.TAB/LAITEVERY', 1, 2, '0.90', '0.59', NULL, 0, NULL, 1, 'GB00B10RZP78'),
(5919, 'PT 250G SPECULOOS LOTUS', 1, 2, '3.95', '3.16', NULL, 0, NULL, 2, 'AU0000030678'),
(5934, 'PT 125G TARTELETTE FRAMBOISE B', 1, 2, '2.25', '0.95', NULL, 0, NULL, 17, 'US7134481081'),
(5980, 'ST100G CURLY MAXI VICO', 1, 10, '6.00', '2.46', NULL, 0, NULL, 10, 'VN000000VNM8'),
(5990, '125G FLUTES CROUST SESAME BF', 1, 10, '1.71', '1.01', NULL, 0, NULL, 6, 'US8326964058'),
(6029, 'CACAHUETES SALEES USA PQT 1KG', 18, 10, '0.06', '0.04', NULL, 0, NULL, 7, 'US8326964058'),
(6090, 'ST 90G CROUSTILLANT BACONBF', 1, 10, '9.91', '5.35', NULL, 0, NULL, 7, 'US3703341046'),
(6125, 'ST 150G CHIPS NATURE LAY\'S', 1, 10, '2.91', '1.72', NULL, 1, 4, 13, 'KYG210961051'),
(6129, 'LT SIROP GRENADINE PET EVERYDA', 2, 56, '3.82', '2.48', NULL, 0, NULL, NULL, 'US5797802064'),
(6213, 'PET 1.25L COCA LIGHT SS CAFEIN', 2, 56, '3.20', '1.95', NULL, 0, NULL, 7, 'US5797802064'),
(6214, 'PET 1.25L COCA ZERO SS CAFEINE', 2, 56, '1.66', '0.70', NULL, 0, NULL, 8, 'VN000000VNM8'),
(6237, 'PET 1,50LT ORANGINA', 2, 56, '4.24', '2.21', NULL, 0, NULL, 14, 'INE192R01011'),
(6367, 'PET 1,5LT SCHWEPPES AGRUMZERO', 2, 56, '1.41', '0.78', NULL, 0, NULL, 9, 'US4278661081'),
(6426, 'PET 1LT COCA-COLA', 2, 56, '2.15', '1.18', NULL, 1, 6, 15, 'GB0008847096'),
(6451, 'PET 1L PUR JUS ORANG FLORID DB', 2, 56, '1.58', '0.90', NULL, 0, NULL, 12, 'MX01AC100006'),
(6479, 'PET 1L CRANBERRY BELLE FRANCE', 2, 56, '3.45', '1.90', NULL, 0, NULL, 15, 'CH0010570759'),
(6494, 'PET 1L JUS GRENADE BF', 2, 56, '3.68', '2.21', NULL, 0, NULL, 8, 'US5797802064'),
(6533, 'BUCHE 2CHOC/CARAME.610G', 99, 69, '1.51', '0.50', NULL, 0, NULL, 2, 'JP3931600005'),
(6555, 'BX100G CAFE LYOPHIL. DECA BF', 1, 21, '0.15', '0.07', NULL, 0, NULL, 4, 'FR0000120172'),
(6570, 'PT 0250 MOULU INFINI DK C/NOIR', 1, 21, '2.84', '1.76', NULL, 0, NULL, 19, 'HK0000083920'),
(6598, 'BX 0200 CHICOREE SOLUB-LEROUX', 1, 21, '1.45', '0.58', NULL, 0, NULL, 9, 'US61174X1090'),
(6600, 'CAFE FIN MOKA/MOU.50A/50R 1KG', 18, 21, '3.65', '1.53', NULL, 0, NULL, 13, 'HK0000083920'),
(6606, 'BX 100G CAFE SOLUBLE EVERYDAY', 1, 21, '0.57', '0.33', NULL, 0, NULL, 16, 'NO0003054108'),
(6645, 'PT250 TRADITION 50/50 CAFE DE', 1, 21, '10.72', '4.72', NULL, 1, 4, 8, 'NL0011794037'),
(6672, 'X10CAPS DECAFEINE BF', 1, 21, '1.96', '0.98', NULL, 0, NULL, 20, 'US2058871029'),
(6685, 'BL CREMANT BOURGOGNE BRUT BARO', 2, 59, '1.61', '1.00', NULL, 1, 5, 7, 'KYG210961051'),
(6718, 'MOUSSX CAFE PARIS BRUT', 2, 59, '2.79', '1.56', NULL, 0, NULL, 20, 'CH0038863350'),
(6730, 'BL 75 CL POL REMY FRAMBOISE', 2, 59, '4.47', '3.35', NULL, 1, 3, 1, 'MXP320321310'),
(6747, 'TERRINE BOURGOGNE vendang', 99, 44, '0.71', '0.23', NULL, 0, NULL, 12, 'AU0000030678'),
(6781, 'TB 100G EXCELLENCE NOIR 70%LIN', 1, 4, '3.42', '2.26', NULL, 0, NULL, 7, 'US4404521001'),
(6783, '3X100G CHOC NOIR SUPER BF', 1, 4, '3.89', '1.67', NULL, 0, NULL, 1, 'KYG960071028'),
(6839, 'ST200G GUIMAUVE KOALA LAI/LUTI', 1, 3, '15.59', '7.64', NULL, 0, NULL, 11, 'US9024941034'),
(6840, 'LUTTI BUBLIZ BOMB 145G', 1, 3, '2.63', '0.79', NULL, 0, NULL, 9, 'BE0974256852'),
(6844, 'TETES B. KYSMAC COL 90G', 1, 3, '4.31', '2.16', NULL, 0, NULL, 5, 'US0394831020'),
(6857, 'KINDER SURPRISE T4 80G', 1, 3, '3.78', '2.27', NULL, 0, NULL, 4, 'KYG9431R1039'),
(6875, 'TIRELIRE MINIONS 60G GARNI GUI', 1, 3, '2.54', '1.88', NULL, 0, NULL, 7, 'KYG9431R1039'),
(6882, 'VERY BAD KIDS SODA 125G', 1, 3, '0.01', '0.01', NULL, 0, NULL, 16, 'US4878361082'),
(6933, 'TUBO 300 ACIDOFILO COLA HARIBO', 1, 3, '8.34', '3.25', NULL, 1, 1, 18, 'US7134481081'),
(6958, '3ET. HLWD MAX FRAMB.PECHE', 1, 3, '0.37', '0.18', NULL, 0, NULL, 9, 'US5132721045'),
(6967, 'ST 0300 TAGADA FRAISE HARIBO', 1, 3, '1.65', '1.29', NULL, 0, NULL, 17, 'US4404521001'),
(6996, '260G MAX 2 FIZZ LUTTI', 1, 3, '3.31', '2.48', NULL, 0, NULL, 6, 'BRJBSSACNOR8'),
(7038, 'PK3ET DR.2FRESH MENT.FRAIC/FOR', 1, 3, '3.85', '3.08', NULL, 0, NULL, 1, 'JP3918000005'),
(7103, 'ST 145G BILLE MILKA SNACKDAIM', 1, 3, '2.31', '1.78', NULL, 1, 1, 7, 'US4278661081'),
(7114, 'BTE10DRAG.S/S MENTH.POLAIHOLLY', 1, 3, '1.14', '0.74', NULL, 0, NULL, 13, 'US0394831020'),
(7142, 'BALISTO LT/MIEL/AMANDE 37G', 1, 3, '1.81', '0.91', NULL, 0, NULL, 17, 'US5132721045'),
(7301, 'MIEL DE CITRONNIER 250G', 1, 33, '9.48', '4.36', NULL, 0, NULL, 8, 'CNE100001SL2'),
(7306, 'COMPOTE POMME 5/1 ALLEGEE', 18, 33, '3.85', '2.97', NULL, 0, NULL, 10, 'US22160K1051'),
(7362, 'COCKTAIL FRUITS SIROP 5/1', 18, 32, '1.59', '0.65', NULL, 0, NULL, 11, 'MX01AC100006'),
(7365, 'BT 4/4 COCKT.FR.SIRO.LEG DELMO', 1, 32, '10.57', '8.35', NULL, 0, NULL, 7, 'CNE000000JP5'),
(7370, 'BX 1KG MACEDOINE DE FRUITS', 1, 32, '2.01', '1.57', NULL, 0, NULL, 16, 'PHY7510J1668'),
(7375, '4/4 AIRELLES AU NAT BONTO', 99, 32, '0.26', '0.18', NULL, 0, NULL, 3, 'US4278661081'),
(7440, 'BX72CL ASPERGES BLANCHES JUANI', 1, 31, '0.67', '0.31', NULL, 1, 3, 20, 'US4878361082'),
(7463, 'TOMATE PELEE AU JUS 3/1', 18, 31, '1.73', '0.90', NULL, 0, NULL, 20, 'CNE000000JP5'),
(7509, '5/1 POIS T.FINS MAINGOURD', 18, 31, '2.64', '1.40', NULL, 0, NULL, 13, 'INE216A01030'),
(7510, '5/1 HARICOT VERT EXT.FIN MAING', 18, 31, '0.91', '0.43', NULL, 0, NULL, 9, 'SG1T56930848'),
(7511, '5/1 FLAGEOLET FIN MAINGOURD', 18, 31, '0.82', '0.53', NULL, 0, NULL, 14, 'CNE000000JP5'),
(7512, '5/1 HARICOT BLANC NATUREL MAIN', 18, 31, '9.91', '7.33', NULL, 0, NULL, NULL, 'US49271V1008'),
(7513, '5/1 POIS TF CAROTTE MAINGOURD', 18, 31, '1.29', '0.46', NULL, 0, NULL, 7, 'CH0038863350'),
(7514, '5/1 MACEDOINE LEGUME MAINGOURD', 18, 31, '0.03', '0.01', NULL, 0, NULL, 12, 'JP3918000005'),
(7527, 'BX 37CL POIS GOURMAND', 1, 31, '1.15', '0.44', NULL, 0, NULL, 6, 'FR0000120644'),
(7528, '3/1 MAIS EN GRAIN MAINGOURD', 18, 31, '0.36', '0.23', NULL, 0, NULL, 17, 'US5007541064'),
(7535, '420G MARRON POT S/V FAU', 1, 31, '1.31', '0.72', NULL, 0, NULL, 7, 'KYG960071028'),
(7545, 'TAPENADE OLIVE VERTE 90G', 1, 31, '13.58', '4.48', NULL, 0, NULL, 20, 'JP3931600005'),
(7550, 'BT 3/1 POIREAUX EN D\'AUCY', 99, 31, '1.33', '0.69', NULL, 0, NULL, 14, 'PHY7510J1668'),
(7569, 'THON ENT NAT ALBACORE 4/4', 18, 28, '5.36', '2.84', NULL, 0, NULL, 7, 'US8326964058'),
(7577, 'CONNETABLE PT. SARDINES HUI3X5', 1, 28, '0.48', '0.31', NULL, 0, NULL, 9, 'IE0004906560'),
(7682, 'BT200G SAUCISSE COCKTAIL TULIP', 1, 29, '2.28', '1.39', NULL, 1, 1, 9, 'IE0004906560'),
(7691, 'TERRINE FOIE VOLAIL.200G LALIE', 1, 29, '0.44', '0.29', NULL, 0, NULL, 1, 'CNE000000JP5'),
(7831, 'PET 1.5LT CITRONNADE PULCO', 2, 55, '3.58', '2.79', NULL, 0, NULL, 6, 'US7134481081'),
(7895, 'GILET SOFT S/M COCCINELLE NEW', 1, 98, '1.35', '0.91', NULL, 0, NULL, 5, 'GB0008847096'),
(7929, 'HUILE TOURNESOL BIDON 5LT', 18, 18, '1.43', '0.76', NULL, 0, NULL, 20, 'US61174X1090'),
(7951, '250ML HUILE OLIVE CARAPELLI', 1, 18, '4.14', '3.23', NULL, 0, NULL, 9, 'US4404521001'),
(8025, 'PT 0500 RIZ BASMATI TAUR/AILE', 1, 24, '0.20', '0.06', NULL, 0, NULL, 3, 'CH0198251305'),
(8037, 'RIZ TYPE USA SAC 5 KG', 18, 24, '3.37', '1.65', NULL, 0, NULL, 3, 'FR0000120172'),
(8116, '75CL CHABLIS DOM. DIBLAS', 2, 58, '8.74', '0.96', NULL, 0, NULL, 19, 'CH0038863350'),
(8134, 'BL MINERVOIS ROUGE', 2, 58, '6.00', '0.40', NULL, 0, NULL, 9, 'JP3802600001'),
(8155, '37.5CL PROVENCE ROSE BILLETTE', 2, 58, '8.36', '0.23', NULL, 0, NULL, 10, 'NL0011794037'),
(8192, 'BL MUSCADET M/S LIE DOM.BOIS P', 2, 58, '5.00', '3.56', NULL, 0, NULL, 19, 'US6092071058'),
(8299, 'BL 75CL VENTOUX DOM.STE CATHER', 2, 58, '5.19', '0.43', NULL, 0, NULL, 17, 'BE0974256852'),
(8308, 'BIB 3LT AOC C.PROVENCE ROSE BF', 2, 58, '4.81', '2.17', NULL, 0, NULL, 6, 'KYG210961051'),
(8310, 'BL ST NIC.BOURGUEIL RGE DOM.GR', 2, 58, '10.13', '0.06', NULL, 0, NULL, 15, 'JP3336560002'),
(8320, 'AOP C.PROVENCE AMPHORE ROSE', 2, 58, '7.84', '1.31', NULL, 0, NULL, 17, 'KYG960071028'),
(8321, 'BL ROSE LOIRE VILLA LORANE', 2, 58, '4.14', '2.98', NULL, 1, 1, 11, 'GB00BDCPN049'),
(8430, '22L SAC ISOTHERME B.F', 8, 72, '3.41', '1.54', NULL, 0, NULL, 14, 'KYG960071028'),
(8431, 'BAC SURGELE 464L.1590x820x680', 8, 72, '9.60', '7.68', NULL, 0, NULL, 14, 'CNE100001SL2'),
(8432, 'PRESENTOIR MET BAC P/SAC ISOT.', 8, 72, '1.19', '0.39', NULL, 0, NULL, 1, 'US61174X1090'),
(8435, 'MOUTARDE FORTE AU VINAIGRE 5KG', 18, 13, '1.26', '0.52', NULL, 0, NULL, 5, 'FR0000120172'),
(8470, 'CORNICHON 120/149 5/1 JA', 18, 13, '1.50', '0.48', NULL, 0, NULL, 20, 'US5797802064'),
(8473, 'BT170G OLIVE NOIRE DENOYAU.CRE', 1, 13, '3.48', '2.58', NULL, 0, NULL, 9, 'INE216A01030'),
(8479, 'BX 21CL MOUTARDE PROVENCALE', 1, 13, '2.08', '1.60', NULL, 0, NULL, 1, 'IE0004906560'),
(8585, 'PT 250G SPAGHETTI DBF', 1, 23, '3.31', '2.58', NULL, 0, NULL, 2, 'CH0198251305'),
(8586, 'CROZETS SARRASIN FRAIS. 400G', 1, 23, '3.36', '2.49', NULL, 0, NULL, 16, 'PHY7510J1668'),
(8595, 'COQUILLET.QS PANZANI SAC 5KG', 18, 23, '0.96', '0.35', NULL, 0, NULL, 3, 'US5010441013'),
(8626, 'PT 500G SPAGHETTI CUIS.3\' BF', 1, 23, '4.79', '3.21', NULL, 0, NULL, 13, 'MX01AC100006'),
(8659, '300G MADELEINES COQ.INDIV.BF', 1, 1, '0.60', '0.33', NULL, 0, NULL, 13, 'KYG960071028'),
(8679, 'BQ. 250G MINIS ROCHERS COCO BF', 1, 1, '0.96', '0.57', NULL, 0, NULL, 13, 'US5797802064'),
(8681, '8X30G MINI BROWNIE PEP.CHOC BF', 1, 1, '9.67', '3.09', NULL, 0, NULL, 14, 'FR0000120644'),
(8690, 'CT MINI BCHEE PBX240 DUCO', 99, 1, '2.87', '1.84', NULL, 0, NULL, 9, 'NL0011794037'),
(8733, 'ET 0430 CHOCAPIC NESTLE', 1, 5, '4.78', '3.06', NULL, 0, NULL, 10, 'JP3918000005'),
(8763, 'ET0375 FUNTUBIZ CHOCOLAT KELLO', 1, 5, '1.88', '1.02', NULL, 0, NULL, NULL, 'US1344291091'),
(8806, '800G 4/4 CHOUCROU ROYAL RIE BF', 1, 30, '3.96', '3.13', NULL, 0, NULL, 18, 'US4404521001'),
(8812, 'RAVIOLI SCE ITAL.PANZANI 5/1', 18, 30, '1.07', '0.55', NULL, 0, NULL, 17, 'US9024941034'),
(8818, '4/4 CHOUCROUTE CUI.RIESLING.WS', 1, 30, '1.53', '0.31', NULL, 0, NULL, NULL, 'GB00BDCPN049'),
(8837, 'BQ BLANQUETTE VEAU C.BRAS.WS', 1, 30, '4.49', '2.87', NULL, 0, NULL, 7, 'US5010441013'),
(8871, '800G 4/4 RAVIOL.BOLOG.VBF BF', 1, 30, '2.16', '1.47', NULL, 0, NULL, 19, 'CA5394811015'),
(8892, 'BX 72CL MOGETTES DE VENDEE', 1, 30, '3.94', '2.68', NULL, 0, NULL, 13, 'NO0003054108'),
(8922, 'BT4/4 CANNELLON.BOEUF VBF BF', 1, 30, '1.27', '0.69', NULL, 0, NULL, 19, 'AU000000WOW2'),
(8925, 'BQ 285G LANGUE BOEUF PDT MO WS', 1, 30, '1.00', '0.44', NULL, 0, NULL, 6, 'JP3422950000'),
(8992, 'FL 37G 4 EPICES MOULUES DUCROS', 1, 15, '3.56', '1.18', NULL, 0, NULL, 5, 'BRJBSSACNOR8'),
(9000, 'POIVRE NOIR GRAINS KG', 18, 15, '2.59', '1.35', NULL, 0, NULL, 15, 'US49271V1008'),
(9032, 'ST GASTRO.CREME ASPERGE KNORR', 1, 12, '2.88', '1.24', NULL, 0, NULL, 14, 'US8326964058'),
(9086, 'ST JARDINIERE LEGUME MAGGI', 1, 12, '3.47', '1.42', NULL, 0, NULL, 1, 'JP3422950000'),
(9088, 'BK 50CL LANGOUST.MUSCADET', 1, 12, '0.76', '0.24', NULL, 0, NULL, 6, 'US4278661081'),
(9089, 'BK 1L SOUPE DE POISSON', 1, 12, '0.26', '0.13', NULL, 0, NULL, 5, 'US6092071058'),
(9118, 'BK2X30CL VELOUTE LEGUME BF', 1, 12, '0.62', '0.29', NULL, 0, NULL, 14, 'US9024941034'),
(9150, 'PT 500G PRUN/AGEN DEN/44/55', 1, 8, '1.76', '1.21', NULL, 0, NULL, 12, 'US5132721045'),
(9216, '250G SIROP AGAVE SUNNY BIO', 1, 25, '0.78', '0.55', NULL, 0, NULL, 1, 'US0394831020'),
(9219, 'GAUFRES AU MIEL 175G BJORG', 1, 25, '0.30', '0.22', NULL, 1, 4, 7, 'US6092071058'),
(9231, 'BOISSON NATURE RIZ 1L BJORG', 1, 25, '2.45', '1.52', NULL, 0, NULL, 17, 'FR0000120644'),
(9241, 'POCO LOCO SALSA MEX HOT SCE 31', 1, 62, '0.80', '0.44', NULL, 1, 1, 7, 'INE192R01011'),
(9255, 'BX330G SCE FROIDE AIGRE DCE SU', 1, 62, '4.34', '2.82', NULL, 0, NULL, NULL, 'SA000A0ETHT1'),
(9326, 'SAUCE PIZZA PANZANI 5/1', 18, 14, '0.34', '0.24', NULL, 0, NULL, 18, 'CH0198251305'),
(9339, 'BX260G SCE TARTARE BENEDICTA', 1, 14, '2.14', '1.48', NULL, 1, 3, 15, 'US5010441013'),
(9354, 'LT6 SAUCE PARTY 500G BENEDICTA', 1, 14, '0.34', '0.23', NULL, 0, NULL, NULL, 'INE216A01030'),
(9366, 'BX 210G SPAGHETO BOLOGNAISE PZ', 1, 14, '2.25', '1.19', NULL, 1, 2, NULL, 'FR0000120644'),
(9404, 'MAYONNAISE COLLECTIVITE 4,7KG', 18, 14, '0.03', '0.02', NULL, 0, NULL, 11, 'MXP320321310'),
(9417, '350G SCE POMMES FRITES BF SQUE', 1, 14, '2.27', '0.77', NULL, 0, NULL, 20, 'US4878361082'),
(9476, 'BT 120 STICKS CANDEREL', 1, 19, '2.43', '1.02', NULL, 0, NULL, 2, 'INE216A01030'),
(9511, 'BT 25ST TCHAE THE VERT ORIENT', 1, 20, '2.21', '1.06', NULL, 0, NULL, 9, 'JP3802600001'),
(9518, 'BT.110 SACHETS THE LIPTON YELL', 18, 20, '1.09', '0.37', NULL, 0, NULL, 11, 'SA000A0ETHT1'),
(9524, 'X25ST FLEUR CAMOMILLE TISANIER', 1, 20, '4.12', '1.90', NULL, 0, NULL, 10, 'VN000000VNM8'),
(9543, 'PAUPIETTE PORC', 99, 34, '2.93', '2.23', NULL, 0, NULL, 16, 'US22160K1051'),
(9544, 'PAUPIETTE VEAU', 99, 34, '0.40', '0.30', NULL, 0, NULL, 11, 'US6092071058'),
(9571, 'BL IGP OC LES ORMES SAUVIGNON', 2, 57, '5.33', '1.77', NULL, 0, NULL, 15, 'JP3918000005'),
(9609, 'B.I.B. 3 LT VIN DE PAYS MERLOT', 2, 57, '6.56', '0.19', NULL, 0, NULL, 14, 'FR0000120644');

-- --------------------------------------------------------

--
-- Table structure for table `Rayon`
--

CREATE TABLE `Rayon` (
  `IDRayon` int(11) NOT NULL,
  `Intitulé` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Rayon`
--

INSERT INTO `Rayon` (`IDRayon`, `Intitulé`) VALUES
(1, 'EPICERIE'),
(2, 'LIQUIDES'),
(8, 'SURGELES'),
(18, 'COLLECTIVITE (secs)'),
(99, 'Tous rayons');

-- --------------------------------------------------------

--
-- Table structure for table `RégionsFrance`
--

CREATE TABLE `RégionsFrance` (
  `Département` text DEFAULT NULL,
  `Région` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RégionsFrance`
--

INSERT INTO `RégionsFrance` (`Département`, `Région`) VALUES
('(89) Yonne', 'Bourgogne-Franche-Comté'),
('(95) Val-d\'Oise', 'Ile-De-France'),
('(01) Ain', 'Auvergne-Rhône-Alpes'),
('(27) Eure', 'Normandie'),
('(51) Marne', 'Alsace-Champagne-Ardenne-Lorraine'),
('(77) Seine-et-Marne', 'Ile-De-France'),
('(59) Nord', 'Nord-Pas-de-Calais-Picardie'),
('(80) Somme', 'Nord-Pas-de-Calais-Picardie'),
('(72) Sarthe', 'Pays de la Loire'),
('(85) Vendée', 'Pays de la Loire'),
('(69) Rhône', 'Auvergne-Rhône-Alpes'),
('(91) Essonne', 'Ile-De-France'),
('(33) Gironde', 'Aquitaine-Limousin-Poitou-Charentes'),
('(35) Ille-et-Vilaine', 'Bretagne'),
('(26) Drôme', 'Auvergne-Rhône-Alpes'),
('(39) Jura', 'Bourgogne-Franche-Comté'),
('(92) Hauts-De-Seine', 'Ile-De-France'),
('(82) Tarn-et-Garonne', 'Languedoc-Roussillon-Midi-Pyrénées'),
('(04) Alpes-de-Haute-Provence', 'Provence-Alpes-Côte-d\'Azur'),
('(36) Indre', 'Centre-Val de Loire'),
('(60) Oise', 'Nord-Pas-de-Calais-Picardie'),
('(93) Seine-Saint-Denis', 'Ile-De-France'),
('(16) Charente', 'Aquitaine-Limousin-Poitou-Charentes'),
('(68) Haut-Rhin', 'Alsace-Champagne-Ardenne-Lorraine'),
('(34) Hérault', 'Languedoc-Roussillon-Midi-Pyrénées'),
('(78) Yvelines', 'Ile-De-France'),
('(57) Moselle', 'Alsace-Champagne-Ardenne-Lorraine'),
('(64) Pyrénées-Atlantiques', 'Aquitaine-Limousin-Poitou-Charentes'),
('(37) Indre-et-Loire', 'Centre-Val de Loire'),
('(67) Bas-Rhin', 'Alsace-Champagne-Ardenne-Lorraine'),
('(28) Eure-et-Loir', 'Centre-Val de Loire'),
('(84) Vaucluse', 'Provence-Alpes-Côte-d\'Azur'),
('(47) Lot-et-Garonne', 'Aquitaine-Limousin-Poitou-Charentes'),
('(94) Val-de-Marne', 'Ile-De-France'),
('(07) Ardèche', 'Auvergne-Rhône-Alpes'),
('(31) Haute-Garonne', 'Languedoc-Roussillon-Midi-Pyrénées'),
('(49) Maine-et-Loire', 'Pays de la Loire'),
('(18) Cher', 'Centre-Val de Loire'),
('(13) Bouches-du-Rhône', 'Provence-Alpes-Côte-d\'Azur'),
('(62) Pas-de-Calais', 'Nord-Pas-de-Calais-Picardie'),
('(38) Isère', 'Auvergne-Rhône-Alpes'),
('(54) Meurthe-et-Moselle', 'Alsace-Champagne-Ardenne-Lorraine'),
('(56) Morbihan', 'Bretagne'),
('(75) Paris', 'Ile-De-France'),
('(45) Loiret', 'Centre-Val de Loire'),
('(87) Haute-Vienne', 'Aquitaine-Limousin-Poitou-Charentes'),
('(40) Landes', 'Aquitaine-Limousin-Poitou-Charentes');

-- --------------------------------------------------------

--
-- Table structure for table `Stock`
--

CREATE TABLE `Stock` (
  `IDDUProduit` int(11) DEFAULT NULL,
  `IDDuDépôt` int(11) DEFAULT NULL,
  `Quantité` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Stock`
--

INSERT INTO `Stock` (`IDDUProduit`, `IDDuDépôt`, `Quantité`) VALUES
(5057, 2, 'Null'),
(5360, 1, 'Null'),
(5422, 4, 'Null'),
(5429, 1, 'Null'),
(5498, 3, 'Null'),
(5627, 4, 'Null'),
(5646, 2, 'Null'),
(5691, 4, 'Null'),
(5725, 3, 'Null'),
(5725, 4, 'Null'),
(5919, 1, 'Null'),
(5934, 1, 'Null'),
(6029, 3, 'Null'),
(6237, 3, 'Null'),
(6367, 2, 'Null'),
(6426, 3, 'Null'),
(6451, 4, 'Null'),
(6479, 1, 'Null'),
(6600, 2, 'Null'),
(6600, 4, 'Null'),
(6645, 2, 'Null'),
(6645, 3, 'Null'),
(6645, 4, 'Null'),
(6685, 3, 'Null'),
(6685, 4, 'Null'),
(6781, 1, 'Null'),
(6933, 4, 'Null'),
(6996, 3, 'Null'),
(7038, 3, 'Null'),
(7114, 1, 'Null'),
(7114, 4, 'Null'),
(7306, 4, 'Null'),
(7370, 3, 'Null'),
(7370, 4, 'Null'),
(7440, 1, 'Null'),
(7509, 1, 'Null'),
(7511, 4, 'Null'),
(7513, 2, 'Null'),
(7514, 3, 'Null'),
(7528, 1, 'Null'),
(7545, 1, 'Null'),
(7545, 3, 'Null'),
(7545, 4, 'Null'),
(7550, 1, 'Null'),
(7895, 1, 'Null'),
(7895, 3, 'Null'),
(7895, 4, 'Null'),
(7929, 4, 'Null'),
(8025, 4, 'Null'),
(8116, 1, 'Null'),
(8134, 3, 'Null'),
(8155, 3, 'Null'),
(8430, 4, 'Null'),
(8435, 3, 'Null'),
(8473, 4, 'Null'),
(8595, 4, 'Null'),
(8659, 4, 'Null'),
(8679, 3, 'Null'),
(8681, 2, 'Null'),
(8681, 4, 'Null'),
(8763, 1, 'Null'),
(8818, 2, 'Null'),
(8871, 2, 'Null'),
(8871, 4, 'Null'),
(8922, 1, 'Null'),
(8922, 3, 'Null'),
(8925, 3, 'Null'),
(9000, 4, 'Null'),
(9088, 2, 'Null'),
(9088, 3, 'Null'),
(9089, 2, 'Null'),
(9231, 3, 'Null'),
(9241, 4, 'Null'),
(9326, 2, 'Null'),
(9417, 1, 'Null'),
(9417, 2, 'Null'),
(9524, 4, 'Null'),
(9543, 1, 'Null'),
(9543, 4, 'Null'),
(9544, 3, 'Null'),
(9571, 4, 'Null'),
(9609, 2, 'Null'),
(5017, 4, '12'),
(5057, 4, '10'),
(5183, 4, '13'),
(5226, 4, '50'),
(5335, 4, '24'),
(5360, 4, '22'),
(5378, 4, '2'),
(5391, 4, '33'),
(5429, 4, '15'),
(5492, 4, '38'),
(5498, 4, '18'),
(5523, 4, '4'),
(5600, 4, '46'),
(5646, 4, '16'),
(5652, 4, '16'),
(5671, 4, '39'),
(5681, 4, '29'),
(5770, 4, '50'),
(5794, 4, '13'),
(5854, 4, '7'),
(5880, 4, '10'),
(5910, 4, '20'),
(5919, 4, '3'),
(5934, 4, '25'),
(5980, 4, '12'),
(5990, 4, '6'),
(6029, 4, '44'),
(6090, 4, '2'),
(6125, 4, '12'),
(6129, 4, '6'),
(6213, 4, '3'),
(6214, 4, '12'),
(6237, 4, '41'),
(6367, 4, '46'),
(6426, 4, '3'),
(6479, 4, '45'),
(6494, 4, '11'),
(6533, 4, '31'),
(6555, 4, '24'),
(6570, 4, '47'),
(6598, 4, '13'),
(6606, 4, '27'),
(6672, 4, '24'),
(6718, 4, '36'),
(6730, 4, '32'),
(6747, 4, '46'),
(6781, 4, '40'),
(6783, 4, '42'),
(6839, 4, '24'),
(6840, 4, '42'),
(6844, 4, '31'),
(6857, 4, '35'),
(6875, 4, '36'),
(6882, 4, '23'),
(6958, 4, '30'),
(6967, 4, '31'),
(6996, 4, '43'),
(7038, 4, '8'),
(7103, 4, '37'),
(7142, 4, '21'),
(7301, 4, '7'),
(7362, 4, '28'),
(7365, 4, '19'),
(7375, 4, '35'),
(7440, 4, '11'),
(7463, 4, '39'),
(7509, 4, '18'),
(7510, 4, '9'),
(7512, 4, '14'),
(7513, 4, '16'),
(7514, 4, '46'),
(7527, 4, '14'),
(7528, 4, '39'),
(7535, 4, '27'),
(7550, 4, '35'),
(7569, 4, '23'),
(7577, 4, '40'),
(7682, 4, '35'),
(7691, 4, '2'),
(7831, 4, '23'),
(7951, 4, '49'),
(8037, 4, '32'),
(8116, 4, '26'),
(8134, 4, '32'),
(8155, 4, '14'),
(8192, 4, '36'),
(8299, 4, '29'),
(8308, 4, '43'),
(8310, 4, '29'),
(8320, 4, '12'),
(8321, 4, '20'),
(8431, 4, '33'),
(8432, 4, '2'),
(8435, 4, '24'),
(8470, 4, '31'),
(8479, 4, '2'),
(8585, 4, '32'),
(8586, 4, '43'),
(8626, 4, '10'),
(8679, 4, '15'),
(8690, 4, '22'),
(8733, 4, '40'),
(8763, 4, '37'),
(8806, 4, '29'),
(8812, 4, '28'),
(8818, 4, '37'),
(8837, 4, '15'),
(8892, 4, '27'),
(8922, 4, '6'),
(8925, 4, '7'),
(8992, 4, '42'),
(9032, 4, '1'),
(9086, 4, '32'),
(9088, 4, '46'),
(9089, 4, '28'),
(9118, 4, '18'),
(9150, 4, '5'),
(9216, 4, '32'),
(9219, 4, '42'),
(9231, 4, '23'),
(9255, 4, '49'),
(9326, 4, '8'),
(9339, 4, '33'),
(9354, 4, '41'),
(9366, 4, '27'),
(9404, 4, '19'),
(9417, 4, '28'),
(9476, 4, '19'),
(9511, 4, '40'),
(9518, 4, '14'),
(9544, 4, '10'),
(9609, 4, '21'),
(5017, 3, '46'),
(5057, 3, '25'),
(5183, 3, '27'),
(5226, 3, '9'),
(5335, 3, '4'),
(5360, 3, '19'),
(5378, 3, '8'),
(5391, 3, '15'),
(5422, 3, '4'),
(5429, 3, '8'),
(5492, 3, '50'),
(5523, 3, '35'),
(5600, 3, '47'),
(5627, 3, '24'),
(5646, 3, '23'),
(5652, 3, '38'),
(5671, 3, '22'),
(5681, 3, '35'),
(5691, 3, '38'),
(5770, 3, '19'),
(5794, 3, '17'),
(5854, 3, '31'),
(5880, 3, '10'),
(5910, 3, '17'),
(5919, 3, '28'),
(5934, 3, '35'),
(5980, 3, '41'),
(5990, 3, '41'),
(6090, 3, '4'),
(6125, 3, '15'),
(6129, 3, '27'),
(6213, 3, '36'),
(6214, 3, '32'),
(6367, 3, '18'),
(6451, 3, '13'),
(6479, 3, '17'),
(6494, 3, '5'),
(6533, 3, '38'),
(6555, 3, '20'),
(6570, 3, '10'),
(6598, 3, '31'),
(6600, 3, '33'),
(6606, 3, '29'),
(6672, 3, '6'),
(6718, 3, '8'),
(6730, 3, '31'),
(6747, 3, '8'),
(6781, 3, '13'),
(6783, 3, '17'),
(6839, 3, '16'),
(6840, 3, '34'),
(6844, 3, '29'),
(6857, 3, '43'),
(6875, 3, '11'),
(6882, 3, '43'),
(6933, 3, '36'),
(6958, 3, '6'),
(6967, 3, '15'),
(7103, 3, '38'),
(7114, 3, '13'),
(7142, 3, '34'),
(7301, 3, '8'),
(7306, 3, '7'),
(7362, 3, '32'),
(7365, 3, '49'),
(7375, 3, '8'),
(7440, 3, '10'),
(7463, 3, '4'),
(7509, 3, '44'),
(7510, 3, '31'),
(7511, 3, '40'),
(7512, 3, '40'),
(7513, 3, '16'),
(7527, 3, '42'),
(7528, 3, '31'),
(7535, 3, '49'),
(7550, 3, '42'),
(7569, 3, '44'),
(7577, 3, '25'),
(7682, 3, '39'),
(7691, 3, '18'),
(7831, 3, '20'),
(7929, 3, '32'),
(7951, 3, '9'),
(8025, 3, '31'),
(8037, 3, '37'),
(8116, 3, '28'),
(8192, 3, '24'),
(8299, 3, '26'),
(8308, 3, '31'),
(8310, 3, '27'),
(8320, 3, '21'),
(8321, 3, '42'),
(8430, 3, '26'),
(8431, 3, '36'),
(8432, 3, '49'),
(8470, 3, '6'),
(8473, 3, '11'),
(8479, 3, '17'),
(8585, 3, '8'),
(8586, 3, '29'),
(8595, 3, '37'),
(8626, 3, '22'),
(8659, 3, '37'),
(8681, 3, '39'),
(8690, 3, '48'),
(8733, 3, '17'),
(8763, 3, '49'),
(8806, 3, '15'),
(8812, 3, '8'),
(8818, 3, '45'),
(8837, 3, '6'),
(8871, 3, '4'),
(8892, 3, '19'),
(8992, 3, '46'),
(9000, 3, '22'),
(9032, 3, '38'),
(9086, 3, '24'),
(9089, 3, '29'),
(9118, 3, '6'),
(9150, 3, '2'),
(9216, 3, '16'),
(9219, 3, '30'),
(9241, 3, '39'),
(9255, 3, '9'),
(9326, 3, '48'),
(9339, 3, '28'),
(9354, 3, '23'),
(9366, 3, '3'),
(9404, 3, '16'),
(9417, 3, '18'),
(9476, 3, '10'),
(9511, 3, '40'),
(9518, 3, '38'),
(9524, 3, '31'),
(9543, 3, '29'),
(9571, 3, '50'),
(9609, 3, '35'),
(5017, 1, '48'),
(5057, 1, '8'),
(5183, 1, '41'),
(5226, 1, '19'),
(5335, 1, '27'),
(5378, 1, '17'),
(5391, 1, '36'),
(5422, 1, '46'),
(5492, 1, '47'),
(5498, 1, '17'),
(5523, 1, '37'),
(5600, 1, '43'),
(5627, 1, '42'),
(5646, 1, '29'),
(5652, 1, '17'),
(5671, 1, '4'),
(5681, 1, '22'),
(5691, 1, '8'),
(5725, 1, '6'),
(5770, 1, '12'),
(5794, 1, '45'),
(5854, 1, '37'),
(5880, 1, '17'),
(5910, 1, '38'),
(5980, 1, '26'),
(5990, 1, '19'),
(6029, 1, '37'),
(6090, 1, '38'),
(6125, 1, '34'),
(6129, 1, '18'),
(6213, 1, '12'),
(6214, 1, '7'),
(6237, 1, '10'),
(6367, 1, '45'),
(6426, 1, '23'),
(6451, 1, '8'),
(6494, 1, '3'),
(6533, 1, '39'),
(6555, 1, '13'),
(6570, 1, '32'),
(6598, 1, '30'),
(6600, 1, '26'),
(6606, 1, '12'),
(6645, 1, '30'),
(6672, 1, '3'),
(6685, 1, '20'),
(6718, 1, '46'),
(6730, 1, '14'),
(6747, 1, '5'),
(6783, 1, '28'),
(6839, 1, '11'),
(6840, 1, '36'),
(6844, 1, '36'),
(6857, 1, '39'),
(6875, 1, '32'),
(6882, 1, '18'),
(6933, 1, '12'),
(6958, 1, '50'),
(6967, 1, '10'),
(6996, 1, '43'),
(7038, 1, '42'),
(7103, 1, '19'),
(7142, 1, '28'),
(7301, 1, '28'),
(7306, 1, '28'),
(7362, 1, '18'),
(7365, 1, '23'),
(7370, 1, '13'),
(7375, 1, '15'),
(7463, 1, '13'),
(7510, 1, '39'),
(7511, 1, '20'),
(7512, 1, '9'),
(7513, 1, '32'),
(7514, 1, '27'),
(7527, 1, '32'),
(7535, 1, '16'),
(7569, 1, '39'),
(7577, 1, '28'),
(7682, 1, '34'),
(7691, 1, '8'),
(7831, 1, '28'),
(7929, 1, '14'),
(7951, 1, '42'),
(8025, 1, '27'),
(8037, 1, '31'),
(8134, 1, '13'),
(8155, 1, '49'),
(8192, 1, '17'),
(8299, 1, '6'),
(8308, 1, '38'),
(8310, 1, '32'),
(8320, 1, '1'),
(8321, 1, '5'),
(8430, 1, '47'),
(8431, 1, '39'),
(8432, 1, '26'),
(8435, 1, '3'),
(8470, 1, '36'),
(8473, 1, '39'),
(8479, 1, '23'),
(8585, 1, '12'),
(8586, 1, '27'),
(8595, 1, '50'),
(8626, 1, '33'),
(8659, 1, '40'),
(8679, 1, '43'),
(8681, 1, '19'),
(8690, 1, '27'),
(8733, 1, '35'),
(8806, 1, '38'),
(8812, 1, '48'),
(8818, 1, '40'),
(8837, 1, '37'),
(8871, 1, '34'),
(8892, 1, '40'),
(8925, 1, '48'),
(8992, 1, '23'),
(9000, 1, '26'),
(9032, 1, '10'),
(9086, 1, '12'),
(9088, 1, '6'),
(9089, 1, '45'),
(9118, 1, '31'),
(9150, 1, '4'),
(9216, 1, '21'),
(9219, 1, '48'),
(9231, 1, '30'),
(9241, 1, '24'),
(9255, 1, '11'),
(9326, 1, '44'),
(9339, 1, '4'),
(9354, 1, '29'),
(9366, 1, '22'),
(9404, 1, '22'),
(9476, 1, '27'),
(9511, 1, '12'),
(9518, 1, '22'),
(9524, 1, '24'),
(9544, 1, '9'),
(9571, 1, '14'),
(9609, 1, '47'),
(5017, 2, '33'),
(5183, 2, '8'),
(5226, 2, '2'),
(5335, 2, '44'),
(5360, 2, '9'),
(5378, 2, '12'),
(5391, 2, '19'),
(5422, 2, '10'),
(5429, 2, '40'),
(5492, 2, '29'),
(5498, 2, '27'),
(5523, 2, '20'),
(5600, 2, '4'),
(5627, 2, '24'),
(5652, 2, '9'),
(5671, 2, '48'),
(5681, 2, '19'),
(5691, 2, '38'),
(5725, 2, '2'),
(5770, 2, '8'),
(5794, 2, '44'),
(5854, 2, '13'),
(5880, 2, '35'),
(5910, 2, '1'),
(5919, 2, '31'),
(5934, 2, '31'),
(5980, 2, '9'),
(5990, 2, '5'),
(6029, 2, '23'),
(6090, 2, '24'),
(6125, 2, '6'),
(6129, 2, '41'),
(6213, 2, '25'),
(6214, 2, '31'),
(6237, 2, '50'),
(6426, 2, '27'),
(6451, 2, '22'),
(6479, 2, '20'),
(6494, 2, '15'),
(6533, 2, '6'),
(6555, 2, '1'),
(6570, 2, '6'),
(6598, 2, '39'),
(6606, 2, '4'),
(6672, 2, '3'),
(6685, 2, '13'),
(6718, 2, '38'),
(6730, 2, '10'),
(6747, 2, '43'),
(6781, 2, '8'),
(6783, 2, '21'),
(6839, 2, '30'),
(6840, 2, '2'),
(6844, 2, '8'),
(6857, 2, '33'),
(6875, 2, '31'),
(6882, 2, '6'),
(6933, 2, '43'),
(6958, 2, '16'),
(6967, 2, '37'),
(6996, 2, '37'),
(7038, 2, '2'),
(7103, 2, '30'),
(7114, 2, '40'),
(7142, 2, '41'),
(7301, 2, '20'),
(7306, 2, '21'),
(7362, 2, '20'),
(7365, 2, '34'),
(7370, 2, '47'),
(7375, 2, '15'),
(7440, 2, '23'),
(7463, 2, '28'),
(7509, 2, '4'),
(7510, 2, '9'),
(7511, 2, '29'),
(7512, 2, '32'),
(7514, 2, '25'),
(7527, 2, '40'),
(7528, 2, '29'),
(7535, 2, '22'),
(7545, 2, '48'),
(7550, 2, '20'),
(7569, 2, '46'),
(7577, 2, '25'),
(7682, 2, '49'),
(7691, 2, '32'),
(7831, 2, '41'),
(7895, 2, '6'),
(7929, 2, '49'),
(7951, 2, '17'),
(8025, 2, '9'),
(8037, 2, '45'),
(8116, 2, '17'),
(8134, 2, '17'),
(8155, 2, '31'),
(8192, 2, '50'),
(8299, 2, '6'),
(8308, 2, '36'),
(8310, 2, '24'),
(8320, 2, '33'),
(8321, 2, '6'),
(8430, 2, '15'),
(8431, 2, '8'),
(8432, 2, '33'),
(8435, 2, '14'),
(8470, 2, '34'),
(8473, 2, '48'),
(8479, 2, '32'),
(8585, 2, '44'),
(8586, 2, '5'),
(8595, 2, '18'),
(8626, 2, '10'),
(8659, 2, '49'),
(8679, 2, '4'),
(8690, 2, '20'),
(8733, 2, '19'),
(8763, 2, '19'),
(8806, 2, '4'),
(8812, 2, '41'),
(8837, 2, '8'),
(8892, 2, '2'),
(8922, 2, '44'),
(8925, 2, '40'),
(8992, 2, '27'),
(9000, 2, '20'),
(9032, 2, '37'),
(9086, 2, '2'),
(9118, 2, '26'),
(9150, 2, '25'),
(9216, 2, '16'),
(9219, 2, '9'),
(9231, 2, '49'),
(9241, 2, '36'),
(9255, 2, '15'),
(9339, 2, '44'),
(9354, 2, '7'),
(9366, 2, '38'),
(9404, 2, '49'),
(9476, 2, '43'),
(9511, 2, '41'),
(9518, 2, '48'),
(9524, 2, '19'),
(9543, 2, '24'),
(9544, 2, '19'),
(9571, 2, '50');

-- --------------------------------------------------------

--
-- Table structure for table `Ticket`
--

CREATE TABLE `Ticket` (
  `IDTicket` int(11) NOT NULL,
  `IDDeLaCommande` decimal(10,0) DEFAULT NULL,
  `Produit` decimal(10,0) DEFAULT NULL,
  `DateTicket` datetime DEFAULT NULL,
  `DateClôture` decimal(10,0) DEFAULT NULL,
  `MotifDeTicket` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Ticket`
--

INSERT INTO `Ticket` (`IDTicket`, `IDDeLaCommande`, `Produit`, `DateTicket`, `DateClôture`, `MotifDeTicket`) VALUES
(1, '60088', '5378', '2019-01-11 00:00:00', NULL, '4'),
(2, '60158', '7463', '2019-01-21 00:00:00', '2019', '2'),
(3, '60421', '5990', '2019-01-22 00:00:00', '2019', '1'),
(4, '60377', '7691', '2019-02-17 00:00:00', '2019', '4'),
(5, '60629', '8763', '2019-03-08 00:00:00', NULL, '6'),
(6, '60590', '5990', '2019-03-10 00:00:00', '2019', '4'),
(7, '60321', '9216', '2019-03-11 00:00:00', '2019', '4'),
(8, '60377', '7691', '2019-03-23 00:00:00', '2019', '6'),
(9, '60822', '8659', '2019-03-30 00:00:00', '2019', '5'),
(10, '60441', '6451', '2019-04-06 00:00:00', '2019', '2'),
(11, '60959', '8299', '2019-05-11 00:00:00', '2019', '6'),
(12, '61058', '7510', '2019-06-18 00:00:00', '2019', '6'),
(13, '60923', '7895', '2019-07-03 00:00:00', '2019', '6'),
(14, '60282', '9417', '2019-08-04 00:00:00', '2019', '3'),
(15, '60840', '6129', '2019-08-05 00:00:00', '2019', '4'),
(16, '60095', '9219', '2019-08-12 00:00:00', '2019', '1'),
(17, '60261', '8473', '2019-08-15 00:00:00', '2019', '3'),
(18, '60848', '8763', '2019-08-18 00:00:00', '2019', '3'),
(19, '60927', '5854', '2019-08-24 00:00:00', '2019', '3'),
(20, '60113', '7831', '2019-09-11 00:00:00', '2019', '4'),
(21, '60109', '6367', '2019-09-18 00:00:00', '2019', '3'),
(22, '60198', '7895', '2019-09-26 00:00:00', '2019', '6'),
(23, '60365', '8320', '2019-10-12 00:00:00', '2019', '2'),
(24, '60420', '8155', '2019-11-07 00:00:00', '2019', '3'),
(25, '60023', '8763', '2019-11-12 00:00:00', '2019', '1'),
(26, '60031', '6129', '2019-11-29 00:00:00', '2020', '6'),
(27, '60040', '9518', '2019-12-29 00:00:00', '2020', '2'),
(28, '60888', '8192', '2020-01-25 00:00:00', '2020', '2'),
(29, '61041', '6875', '2020-03-26 00:00:00', '2020', '5'),
(30, '60037', '6967', '2020-03-29 00:00:00', '2020', '2'),
(31, '60859', '9511', '2020-04-03 00:00:00', '2020', '2'),
(32, '60442', '7365', '2020-04-07 00:00:00', '2020', '5'),
(33, '60774', '8431', '2020-04-27 00:00:00', '2020', '6'),
(34, '60211', '8763', '2020-05-21 00:00:00', '2020', '4'),
(35, '60211', '8763', '2020-06-16 00:00:00', '2020', '3'),
(36, '60449', '5183', '2020-06-20 00:00:00', '2020', '6'),
(37, '60756', '5980', '2020-07-16 00:00:00', '2020', '1'),
(38, '60704', '8134', '2020-07-16 00:00:00', '2020', '3'),
(39, '61024', '6479', '2020-07-24 00:00:00', '2020', '1'),
(40, '60297', '9088', '2020-08-04 00:00:00', '2020', '5'),
(41, '60509', '9000', '2020-08-23 00:00:00', '2020', '3'),
(42, '60824', '5646', '2020-08-24 00:00:00', NULL, '6'),
(43, '60869', '5183', '2020-10-04 00:00:00', '2020', '2'),
(44, '60483', '7527', '2020-10-15 00:00:00', NULL, '3'),
(45, '60315', '8320', '2020-10-16 00:00:00', '2020', '3'),
(46, '60589', '6533', '2020-10-27 00:00:00', '2020', '6'),
(47, '60483', '7527', '2020-11-01 00:00:00', '2020', '4'),
(48, '60540', '6645', '2020-11-05 00:00:00', '2020', '6'),
(49, '60631', '7895', '2020-11-10 00:00:00', '2020', '2'),
(50, '60070', '8585', '2020-12-10 00:00:00', '2020', '1'),
(51, '60744', '6672', '2021-01-21 00:00:00', '2021', '6'),
(52, '60275', '6213', '2021-02-01 00:00:00', '2021', '1'),
(53, '60743', '7362', '2021-02-12 00:00:00', NULL, '5'),
(54, '60221', '7142', '2021-02-12 00:00:00', '2021', '2'),
(55, '60535', '9417', '2021-03-12 00:00:00', '2021', '5'),
(56, '60860', '8585', '2021-04-06 00:00:00', '2021', '2'),
(57, '60118', '7550', '2021-04-12 00:00:00', '2021', '5'),
(58, '60563', '5652', '2021-04-24 00:00:00', '2021', '6'),
(59, '60844', '7831', '2021-04-25 00:00:00', '2021', '1'),
(60, '60384', '5378', '2021-04-28 00:00:00', '2021', '2'),
(61, '60921', '5919', '2021-05-12 00:00:00', NULL, '6'),
(62, '60395', '9524', '2021-05-22 00:00:00', '2021', '6'),
(63, '60362', '7528', '2021-06-13 00:00:00', '2021', '3'),
(64, '60661', '5017', '2021-06-30 00:00:00', '2021', '3'),
(65, '60997', '5057', '2021-07-24 00:00:00', '2021', '5'),
(66, '60557', '8431', '2021-07-24 00:00:00', '2021', '3'),
(67, '60382', '6685', '2021-08-02 00:00:00', '2021', '4'),
(68, '60382', '6685', '2021-08-30 00:00:00', '2021', '3'),
(69, '60579', '6555', '2021-09-19 00:00:00', '2021', '5'),
(70, '60195', '9000', '2021-09-23 00:00:00', '2021', '2'),
(71, '60253', '5681', '2021-09-24 00:00:00', '2021', '1'),
(72, '60961', '9543', '2021-09-29 00:00:00', NULL, '3'),
(73, '60579', '6555', '2021-10-01 00:00:00', '2021', '5'),
(74, '60708', '5017', '2021-11-01 00:00:00', '2021', '4'),
(75, '60247', '5652', '2021-11-11 00:00:00', '2021', '5'),
(76, '60439', '7514', '2021-11-14 00:00:00', '2021', '1'),
(77, '60439', '7514', '2021-11-22 00:00:00', NULL, '2'),
(78, '60034', '7463', '2021-12-01 00:00:00', '2022', '2'),
(79, '60677', '5854', '2022-01-13 00:00:00', NULL, '5'),
(80, '60753', '5523', '2022-02-17 00:00:00', '2022', '6'),
(81, '60085', '7103', '2022-02-27 00:00:00', '2022', '4'),
(82, '60904', '8310', '2022-03-03 00:00:00', '2022', '1'),
(83, '60020', '5854', '2022-03-21 00:00:00', '2022', '1'),
(84, '60150', '9544', '2022-03-23 00:00:00', '2022', '6'),
(85, '61026', '5057', '2022-03-28 00:00:00', NULL, '5'),
(86, '60142', '5627', '2022-05-05 00:00:00', '2022', '6'),
(87, '60851', '7569', '2022-05-14 00:00:00', '2022', '1'),
(88, '60341', '7535', '2022-05-14 00:00:00', '2022', '2'),
(89, '60977', '9219', '2022-06-14 00:00:00', '2022', '1'),
(90, '60785', '7577', '2022-06-15 00:00:00', '2022', '1'),
(91, '60313', '5671', '2022-06-17 00:00:00', '2022', '1'),
(92, '60258', '9326', '2022-07-23 00:00:00', '2022', '3'),
(93, '60596', '6494', '2022-08-03 00:00:00', '2022', '2'),
(94, '60608', '9216', '2022-08-05 00:00:00', '2022', '1'),
(95, '60345', '6129', '2022-08-17 00:00:00', '2022', '4'),
(96, '60213', '6840', '2022-08-20 00:00:00', '2022', '1'),
(97, '60041', '8659', '2022-08-23 00:00:00', '2022', '2'),
(98, '60555', '6839', '2022-09-24 00:00:00', '2022', '2'),
(99, '60104', '9241', '2022-10-04 00:00:00', '2022', '5'),
(100, '60227', '8626', '2022-10-31 00:00:00', '2022', '4'),
(101, '60388', '5681', '2022-11-19 00:00:00', '2022', '1'),
(102, '60100', '7370', '2022-12-05 00:00:00', '2022', '5'),
(103, '60444', '8922', '2023-02-01 00:00:00', '2023', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`IDClient`);

--
-- Indexes for table `Commandes`
--
ALTER TABLE `Commandes`
  ADD PRIMARY KEY (`IDCommande`);

--
-- Indexes for table `Dépôts`
--
ALTER TABLE `Dépôts`
  ADD PRIMARY KEY (`IDDépôt`);

--
-- Indexes for table `Employé`
--
ALTER TABLE `Employé`
  ADD PRIMARY KEY (`IDEmployé`);

--
-- Indexes for table `Famille`
--
ALTER TABLE `Famille`
  ADD PRIMARY KEY (`Fa`);

--
-- Indexes for table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  ADD PRIMARY KEY (`IDFournisseur`);

--
-- Indexes for table `MotifsRupture`
--
ALTER TABLE `MotifsRupture`
  ADD PRIMARY KEY (`IDMotifRupture`);

--
-- Indexes for table `MotifsTicket`
--
ALTER TABLE `MotifsTicket`
  ADD PRIMARY KEY (`IDMotifTicket`);

--
-- Indexes for table `Produits`
--
ALTER TABLE `Produits`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `Rayon`
--
ALTER TABLE `Rayon`
  ADD PRIMARY KEY (`IDRayon`);

--
-- Indexes for table `Ticket`
--
ALTER TABLE `Ticket`
  ADD PRIMARY KEY (`IDTicket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Clients`
--
ALTER TABLE `Clients`
  MODIFY `IDClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4851;

--
-- AUTO_INCREMENT for table `Commandes`
--
ALTER TABLE `Commandes`
  MODIFY `IDCommande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61067;

--
-- AUTO_INCREMENT for table `Dépôts`
--
ALTER TABLE `Dépôts`
  MODIFY `IDDépôt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Employé`
--
ALTER TABLE `Employé`
  MODIFY `IDEmployé` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `Famille`
--
ALTER TABLE `Famille`
  MODIFY `Fa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `MotifsRupture`
--
ALTER TABLE `MotifsRupture`
  MODIFY `IDMotifRupture` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `MotifsTicket`
--
ALTER TABLE `MotifsTicket`
  MODIFY `IDMotifTicket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Produits`
--
ALTER TABLE `Produits`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9610;

--
-- AUTO_INCREMENT for table `Rayon`
--
ALTER TABLE `Rayon`
  MODIFY `IDRayon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `Ticket`
--
ALTER TABLE `Ticket`
  MODIFY `IDTicket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
