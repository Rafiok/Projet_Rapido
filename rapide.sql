-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 19 mai 2024 à 20:30
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `rapide`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE IF NOT EXISTS `admin_table` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenoms` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `sexe` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `mot_de_passe` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `nom`, `prenoms`, `email`, `telephone`, `sexe`, `mot_de_passe`, `createdAt`, `updatedAt`) VALUES
(1, 'OKERE', 'Rafiatou', 'okererafiatou@gmail.com', '68701879', 'F', '29775c9e01b0206dc650e0b67aed33a8', '2024-05-18 08:27:16', '2024-05-18 08:27:16');

-- --------------------------------------------------------

--
-- Structure de la table `chauffeurs`
--

DROP TABLE IF EXISTS `chauffeurs`;
CREATE TABLE IF NOT EXISTS `chauffeurs` (
  `chauffeur_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenoms` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `sexe` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `disponible` int NOT NULL,
  `mot_de_passe` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `admin_created_id` int DEFAULT NULL,
  `admin_updated_id` int DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`chauffeur_id`),
  KEY `admin_created_id` (`admin_created_id`),
  KEY `admin_updated_id` (`admin_updated_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chauffeurs`
--

INSERT INTO `chauffeurs` (`chauffeur_id`, `nom`, `prenoms`, `telephone`, `sexe`, `disponible`, `mot_de_passe`, `email`, `admin_created_id`, `admin_updated_id`, `createdAt`, `updatedAt`) VALUES
(1, 'OKERE', 'Rafiatou', '68701879', 'M', 1, '105bfecd52d283fdd1f8857221b6eea5', 'okererafiatou@gmail.com', 1, NULL, '2024-05-18 12:29:45', '2024-05-19 02:38:23'),
(2, 'OKERE', 'Prudence', '91195931', 'F', 1, '8fb56f7c6bd56c6f692f576afcc54408', 'okererafiatou@gmail.com', 1, NULL, '2024-05-18 12:37:54', '2024-05-19 17:44:28'),
(3, 'zaza', 'zozo', '58462734', 'M', 0, 'd08e760f27b7ba821182ec96675dc00d', 'zaza@gmail.com', 1, NULL, '2024-05-18 19:34:27', '2024-05-18 19:34:27'),
(4, 'OKERE', 'Rafiatou', '78000000', 'M', 1, 'fcd1854d64d485fd7d112bc8d7221b97', 'okererafiatou@gmail.com', 1, NULL, '2024-05-19 17:04:40', '2024-05-19 19:46:01'),
(5, 'TATA', 'Toto', '40000000', 'M', 1, 'e8e3e74c7d31fe099d304b1d06a7848a', 'tata@gmail.com', 1, NULL, '2024-05-19 17:07:07', '2024-05-19 17:49:27');

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `point_depart` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `point_arrivee` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date_heure` datetime NOT NULL,
  `chauffeur_id` int DEFAULT NULL,
  `operateur_id` int DEFAULT NULL,
  `admin_created_id` int DEFAULT NULL,
  `admin_updated_id` int DEFAULT NULL,
  `statut` int NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`course_id`),
  KEY `chauffeur_id` (`chauffeur_id`),
  KEY `operateur_id` (`operateur_id`),
  KEY `admin_created_id` (`admin_created_id`),
  KEY `admin_updated_id` (`admin_updated_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`course_id`, `point_depart`, `point_arrivee`, `date_heure`, `chauffeur_id`, `operateur_id`, `admin_created_id`, `admin_updated_id`, `statut`, `createdAt`, `updatedAt`) VALUES
(1, 'savalou', 'zaza', '2024-05-18 23:06:00', NULL, NULL, 1, NULL, 0, '2024-05-18 21:06:27', '2024-05-18 21:06:27'),
(2, 'calavi', 'danbgo', '2024-05-18 01:09:00', NULL, NULL, 1, NULL, 0, '2024-05-18 21:08:00', '2024-05-18 21:08:00'),
(3, 'savalou', 'zaza', '2024-05-25 01:41:00', NULL, 4, NULL, NULL, 0, '2024-05-18 23:44:41', '2024-05-18 23:44:41'),
(4, 'cotonou', 'porto-novo', '2024-05-25 02:46:00', NULL, 4, NULL, NULL, 0, '2024-05-18 23:45:09', '2024-05-18 23:45:09'),
(5, 'tokpota', 'danbgo', '2024-05-19 04:48:00', 4, 4, NULL, NULL, 2, '2024-05-18 23:45:28', '2024-05-19 19:47:38'),
(6, 'parakou', 'Cotonou', '2024-05-19 01:54:00', 5, NULL, 1, NULL, 2, '2024-05-18 23:54:36', '2024-05-19 17:51:08'),
(7, 'akpakpa', 'AGLAN', '2024-05-19 02:56:00', 1, NULL, 1, NULL, 2, '2024-05-18 23:55:55', '2024-05-19 02:39:53'),
(9, 'Bohicon', 'porto-novo', '2024-05-19 20:01:00', NULL, 5, NULL, NULL, 0, '2024-05-19 18:01:30', '2024-05-19 18:01:30'),
(8, 'savalou', 'porto-novo', '2024-05-19 19:40:00', 2, 3, NULL, NULL, 2, '2024-05-19 17:40:38', '2024-05-19 17:46:33');

-- --------------------------------------------------------

--
-- Structure de la table `operateurs`
--

DROP TABLE IF EXISTS `operateurs`;
CREATE TABLE IF NOT EXISTS `operateurs` (
  `operateur_id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenoms` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `sexe` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `mot_de_passe` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `creator_id` int DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`operateur_id`),
  KEY `creator_id` (`creator_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `operateurs`
--

INSERT INTO `operateurs` (`operateur_id`, `nom`, `prenoms`, `telephone`, `sexe`, `mot_de_passe`, `email`, `creator_id`, `createdAt`, `updatedAt`) VALUES
(1, 'OKERE', 'Rafiatou', '68701879', 'M', '105bfecd52d283fdd1f8857221b6eea5', 'okererafiatou@gmail.com', 1, '2024-05-18 13:00:47', '2024-05-18 13:00:47'),
(2, 'ADJAKA', 'Elvie', '91195931', 'M', '6d6633882a3f71930b8113c2802c108a', 'okererafiatou@gmail.com', 1, '2024-05-18 13:09:40', '2024-05-18 13:09:40'),
(3, 'ADA', 'PRUD', '59667802', 'M', '73fbc92b745f170e1d3f7921c51a4d4e', 'prud@gmail.com', 1, '2024-05-18 20:20:22', '2024-05-18 20:20:22'),
(4, 'OKERE', 'Rafiatou', '56700000', 'M', 'fcd1854d64d485fd7d112bc8d7221b97', 'okererafiatou@gmail.com', 1, '2024-05-18 20:20:52', '2024-05-18 20:20:52'),
(5, 'Tondji', 'Vivien', '50000000', 'M', 'e8e3e74c7d31fe099d304b1d06a7848a', 'tondji@gmail.com', 1, '2024-05-19 17:55:45', '2024-05-19 17:55:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
