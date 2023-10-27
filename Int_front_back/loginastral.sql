-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 27 oct. 2023 à 15:06
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `loginastral`
--
CREATE DATABASE IF NOT EXISTS `loginastral` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `loginastral`;

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

CREATE TABLE `carte` (
  `id` int(11) NOT NULL,
  `id_carte` int(100) NOT NULL,
  `nom_carte` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `carte`
--

INSERT INTO `carte` (`id`, `id_carte`, `nom_carte`) VALUES
(1, 1, 'The Fool'),
(2, 2, 'The Magician'),
(3, 3, 'The High Priestess'),
(4, 4, 'The Empress'),
(5, 5, 'The Emperor'),
(6, 6, 'The Hierophant'),
(7, 7, 'The Lovers'),
(8, 8, 'The Chariot'),
(9, 9, 'Strength'),
(10, 10, 'The Hermit'),
(11, 11, 'The Wheel of Fortune'),
(12, 12, 'The Justice'),
(13, 13, 'The Hanged Man'),
(14, 14, 'Death'),
(15, 15, 'Temperance'),
(16, 16, 'The Devil'),
(17, 17, 'The Tower'),
(18, 18, 'The Star'),
(19, 19, 'The Moon'),
(20, 20, 'The Sun'),
(21, 21, 'Judgement'),
(22, 22, 'The World');

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_carte` int(11) NOT NULL,
  `dateTir` date NOT NULL,
  `heure` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `historique`
--

INSERT INTO `historique` (`id`, `id_utilisateur`, `id_carte`, `dateTir`, `heure`) VALUES
(1, 1, 1, '2023-10-26', '00:00:00'),
(2, 1, 1, '2023-10-26', '00:00:00'),
(3, 1, 1, '2023-10-26', '00:00:00'),
(4, 1, 1, '2023-10-26', '00:00:00'),
(5, 1, 1, '2023-10-26', '00:00:00'),
(6, 1, 1, '2023-10-26', '00:00:00'),
(7, 1, 1, '2023-10-26', '00:00:00'),
(8, 1, 1, '2023-10-26', '00:00:00'),
(9, 1, 1, '2023-10-26', '00:00:00'),
(10, 11, 1, '2023-10-27', '11:16:26'),
(11, 11, 1, '2023-10-27', '11:16:29'),
(12, 11, 1, '2023-10-27', '11:17:06'),
(13, 11, 1, '2023-10-27', '11:17:09'),
(14, 11, 1, '2023-10-27', '11:18:28'),
(15, 11, 1, '2023-10-27', '11:21:34'),
(16, 11, 1, '2023-10-27', '11:21:36'),
(17, 11, 1, '2023-10-27', '11:32:45'),
(18, 11, 1, '2023-10-27', '11:33:16'),
(19, 11, 1, '2023-10-27', '11:33:23'),
(20, 11, 1, '2023-10-27', '11:58:06'),
(21, 11, 1, '2023-10-27', '12:04:15'),
(22, 11, 1, '2023-10-27', '12:05:25'),
(23, 11, 1, '2023-10-27', '12:05:26'),
(24, 11, 1, '2023-10-27', '12:13:22'),
(25, 11, 1, '2023-10-27', '12:19:45'),
(26, 11, 1, '2023-10-27', '12:19:47'),
(27, 11, 1, '2023-10-27', '12:19:50'),
(28, 11, 1, '2023-10-27', '12:22:33'),
(29, 11, 1, '2023-10-27', '12:23:11'),
(30, 11, 1, '2023-10-27', '12:23:12'),
(31, 11, 1, '2023-10-27', '12:23:13'),
(32, 11, 1, '2023-10-27', '12:26:36'),
(33, 11, 1, '2023-10-27', '12:26:40'),
(34, 11, 1, '2023-10-27', '12:26:42'),
(35, 11, 1, '2023-10-27', '12:28:07'),
(36, 11, 1, '2023-10-27', '12:28:10'),
(37, 11, 1, '2023-10-27', '12:28:13'),
(38, 11, 1, '2023-10-27', '12:30:49'),
(39, 11, 1, '2023-10-27', '12:30:50'),
(40, 11, 1, '2023-10-27', '12:30:52');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `login`, `password`) VALUES
(1, 'Emanuela', 'emanuelacardu@gmail.com', '$2y$10$jOPJnKFyM9JAAB3b8waIVeBH0w/mZ2SHlCoI/7jfNQNyXyXPMoDVC'),
(2, 'Dorine', 'muco.dorine@gmail.com', '$2y$10$U0hjKbpmXPCKMlOWkbIkee0lCe5xRRdWZAbb8H4uZJprg5MTK18va'),
(3, 'Hanane', 'hanane@gmail.com', '$2y$10$/eOjutNw1K1.3XrMLEeqceQPUBWs7NCuLnzNTH5mL8Tat3zQfpuJ6'),
(4, 'Hanane', 'hanane@gmail.com', '$2y$10$LtS4cyGSWPH/PrJDSmPV5eMInAaJu4aX9j3yxz4iDsCa/u4//Zt.W'),
(5, 'Helene', 'helene@gmail.com', '$2y$10$Estk5.sf1.PbD36RjOjAmemJuix.VLUCriwR40XZcI/QzewhPgNaK'),
(6, 'laurence', 'laurence@gmail.com', '$2y$10$rZuSXJTZ7ZnPEHeoLQ7aJOdcKvtFboyfAnMn1bONbnOnTy5FvyIKq'),
(7, 'Margot', 'margot@gmail.com', '$2y$10$wjIXsJKWmRkiHCffWvUa8.ncbkJDGEaaAh4zySgWUOBJMUggzMXpC'),
(8, 'Vitoria', 'vitoria@gmail.com', '$2y$10$4n0WiuQofcTiKnnH.bJiA.FJ/ivrSI0TcVQfhyphxLKGvrvrOmBqG'),
(9, 'Elena', 'elena@gmail.com', '$2y$10$t/JUdPUpC76moWffWNlDQenuZIb7Jsls.Lv2N5hLjuH0t1dUY.QvK'),
(10, 'tonia', 'tonia@gmail.com', '$2y$10$cBzeeovR0SRFD5BJtcc7AeBo6XIJNexAREfnIM4QeClKrpa0/iXCq'),
(11, 'Ema', 'ema@gmail.com', '$2y$10$M3/8wRH5WHwamoxgLv9gq.tPCHoPxRtPh43Ki0.m6jHKB518d2/Um');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `carte`
--
ALTER TABLE `carte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `carte`
--
ALTER TABLE `carte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `historique_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
