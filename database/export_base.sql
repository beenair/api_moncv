-- --------------------------------------------------------
-- Hôte :                        217.160.173.185
-- Version du serveur:           10.1.47-MariaDB-0+deb9u1 - Debian 9.13
-- SE du serveur:                debian-linux-gnu
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour moncv
DROP DATABASE IF EXISTS `moncv`;
CREATE DATABASE IF NOT EXISTS `moncv` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `moncv`;

-- Listage de la structure de la table moncv. experience
DROP TABLE IF EXISTS `experience`;
CREATE TABLE IF NOT EXISTS `experience` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entreprise` char(50) NOT NULL DEFAULT '0',
  `titre` char(255) NOT NULL DEFAULT '0',
  `dateDebut` date DEFAULT NULL,
  `dateFin` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Table regroupant l''ensemble des expériences professionnelles.';

-- Listage des données de la table moncv.experience : ~0 rows (environ)
DELETE FROM `experience`;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
INSERT INTO `experience` (`id`, `entreprise`, `titre`, `dateDebut`, `dateFin`) VALUES
	(1, 'JUXTA', 'Technicien Support', '2019-04-01', '2019-11-01');
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;

-- Listage de la structure de la table moncv. formation
DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ecole` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee_obtention` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `niveau` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table moncv.formation : ~4 rows (environ)
DELETE FROM `formation`;
/*!40000 ALTER TABLE `formation` DISABLE KEYS */;
INSERT INTO `formation` (`id`, `ecole`, `annee_obtention`, `titre`, `niveau`, `ville`) VALUES
	(1, 'CESI', '2020', 'Analyste Développeur', 'Bac +2', 'VILLERS LES NANCY'),
	(2, 'CESI', '2008', 'Gestionnaire en Maintenance des Systemes d\'Information', 'Bac +2', 'VILLERS LES NANCY'),
	(3, 'Lycée Jean PROUVE', '2006', 'Micro-informatique et Reseau', 'Bac Pro', 'NANCY'),
	(4, 'Lycée Jean PROUVE', '2004', 'Metiers de l\'electronique', 'BEP', 'NANCY');
/*!40000 ALTER TABLE `formation` ENABLE KEYS */;

-- Listage de la structure de la table moncv. profil
DROP TABLE IF EXISTS `profil`;
CREATE TABLE IF NOT EXISTS `profil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naissance` date NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_code_postale` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permis` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobilite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presentation` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table moncv.profil : ~1 rows (environ)
DELETE FROM `profil`;
/*!40000 ALTER TABLE `profil` DISABLE KEYS */;
INSERT INTO `profil` (`id`, `nom`, `prenom`, `date_naissance`, `telephone`, `mail`, `adresse_code_postale`, `adresse_ville`, `permis`, `mobilite`, `presentation`) VALUES
	(1, 'THOMAS', 'Benjamin', '1986-08-08', '0687847490', 'b.thomas@beenair.fr', '54110', 'Varangéville', 'Permis B, voiture personnelle', 'Région de Nancy et Lunéville', 'blabla');
/*!40000 ALTER TABLE `profil` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
