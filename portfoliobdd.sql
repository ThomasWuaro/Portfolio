-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 27 mai 2021 à 10:56
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20201215133114', '2021-03-08 13:29:18', 800),
('DoctrineMigrations\\Version20201215144639', '2021-03-08 13:29:19', 189),
('DoctrineMigrations\\Version20210308135004', '2021-03-08 13:50:12', 262),
('DoctrineMigrations\\Version20210322133053', '2021-03-22 13:31:04', 1337),
('DoctrineMigrations\\Version20210322134209', '2021-03-22 13:42:19', 864),
('DoctrineMigrations\\Version20210406115545', '2021-04-06 11:56:09', 1500),
('DoctrineMigrations\\Version20210526170309', '2021-05-26 17:03:23', 339);

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` datetime NOT NULL,
  `ended_at` datetime NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experiences`
--

INSERT INTO `experiences` (`id`, `title`, `company`, `description`, `started_at`, `ended_at`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'Stade Formation', 'Stade Formation', 'Création d\'une interface sur mesure par role, candidat, stagiaire et formateur pour Stade Formation.', '2021-02-08 00:00:00', '2021-03-01 00:00:00', 'stadeformation-screenshot1-60af70f4354fb121437203.png', 411665, '2021-05-27');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `started_at` datetime NOT NULL,
  `ended_at` datetime NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `name`, `grade_level`, `description`, `started_at`, `ended_at`, `company`, `image_name`, `image_size`, `updated_at`) VALUES
(1, 'Développeur intégrateur web', 'A', 'Cette formation intensive de 400 heures avait pour but de préparer par la pratique à une fonction de \"Développeur intégrateur web\"', '2019-02-20 00:00:00', '2019-05-17 00:00:00', '3W Academy', '3wa-6058a6f49c3be318790362.png', 17627, '2021-03-22'),
(2, 'Développeur symfony', 'A', 'Cette autoformation avait pour but d\'apprendre à maitriser le framework symfony par la pratique via des projets professionnels et personnels.', '2019-09-01 00:00:00', '2020-09-01 00:00:00', 'Wuaro Studio', 'logo-symfony2-606efc0c9224f269819756.png', 14520, '2021-04-08');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE IF NOT EXISTS `skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_size` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `skill`
--

INSERT INTO `skill` (`id`, `name`, `level`, `image_name`, `image_size`, `updated_at`, `color`) VALUES
(1, 'Html', 'A', 'html-logo-60672baa8b18d139356849.png', 7526, '2021-04-02 14:35:22', 'rgba(229, 44, 71, 0.83)'),
(2, 'Css', 'A', 'logo-css3-6046295631736223993862.png', 37238, '2021-03-08 13:40:38', 'rgba(40, 169, 224, 0.83)'),
(3, 'Javascript', 'A', 'logo-js1-606efe5143b07734642306.png', 10507, '2021-04-08 13:00:01', 'rgba(252, 167, 43, 0.83)'),
(4, 'Php', 'A', 'logo-php1-60672bce26a7c914711265.png', 4381, '2021-04-02 14:35:58', 'rgba(19, 98, 183, 0.83)'),
(5, 'Symfony', 'A', 'logo-symfony-60672bdb654fb362099920.jpg', 22751, '2021-04-02 14:36:11', 'rgba(170, 34, 157, 0.83)'),
(6, 'Github', 'A', 'github-mark-64px-604629be3cfe0098326060.png', 2625, '2021-03-08 13:42:22', 'rgba(61, 190, 160, 0.83)'),
(7, 'Figma', 'B', 'figma-logo-60672beff1220718063900.png', 7467, '2021-04-02 14:36:32', 'rgba(224, 100, 16, 0.83)'),
(8, 'Materialize', 'A', 'logo-materializecss-604629ecb3f27654079192.png', 12152, '2021-03-08 13:43:08', 'rgba(254, 68, 145, 0.83)');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(4, 'admin@admin.com', '[\"ROLE_USER\",\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$UUhtNVVJVGQ4SjlLNUJlbA$WOHYElDnV3uzGjLlG2x0iQUOsDL5hwGfU3zvqPQV/UI');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
