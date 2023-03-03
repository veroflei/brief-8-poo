-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 01 mars 2023 à 10:26
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `musicstore`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_client`
--

CREATE TABLE `t_client` (
  `CLI_NUM` int(255) NOT NULL,
  `CLI_NOM` varchar(255) DEFAULT NULL,
  `CLI_PRENOM` varchar(255) NOT NULL,
  `CLI_MAIL` varchar(255) NOT NULL,
  `CLI_TEL` int(10) NOT NULL,
  `CLI_ADRESSE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_client`
--

INSERT INTO `t_client` (`CLI_NUM`, `CLI_NOM`, `CLI_PRENOM`, `CLI_MAIL`, `CLI_TEL`, `CLI_ADRESSE`) VALUES
(1, 'DUPONT', 'Jean', 'dupontjean@email.com', 10101010, '3, rue du pont 84000 Avignon'),
(2, 'DURAND', 'Jeanne', 'durandjeanne@email.com', 11111111, 'Impasse Jean Jaurès 75000 Paris'),
(3, 'MERCIER', 'Paul', 'mercierpaul@email.com', 22222222, '1,rue Victor Hugo 59000 Lille'),
(4, 'Marchal', 'Claude', 'marchalclaude@email.com', 33333333, '10, Boulevard E.Zola 67000 Strasbourg'),
(5, 'DUJARDIN', 'Monique', 'dujardinmonique@email.com', 102030405, 'Place du Saumon 68000 Colmar');

-- --------------------------------------------------------

--
-- Structure de la table `t_commandes`
--

CREATE TABLE `t_commandes` (
  `ID_COMM` int(6) NOT NULL,
  `COMM_DATE` datetime(6) NOT NULL,
  `COMM_PROD` varchar(255) NOT NULL,
  `QTE_COMM` int(255) NOT NULL,
  `COMM_PRIX` int(255) NOT NULL,
  `COMM_TOTAL` int(255) NOT NULL,
  `COMM_NUM_CLIENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_produit`
--

CREATE TABLE `t_produit` (
  `id_produit` int(3) NOT NULL,
  `reference` int(3) NOT NULL,
  `categorie` varchar(20) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `prix` int(5) NOT NULL,
  `stock` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `t_produit`
--

INSERT INTO `t_produit` (`id_produit`, `reference`, `categorie`, `titre`, `description`, `couleur`, `photo`, `prix`, `stock`) VALUES
(1, 1, 'guitare', 'Ibanez', 'Classique', 'Bois de tilleul', 'photo', 399, 500),
(2, 2, 'guitare', 'Epiphone', 'Folk ', 'Bleue', 'photo', 1500, 100),
(3, 3, 'guitare', 'Epiphone', 'Electro-acoustique', 'Bleue', 'photo', 1500, 100),
(4, 4, 'guitare', 'Epiphone', 'Electro-acoustique', 'Bois', 'photo', 1500, 100),
(5, 5, 'guitare', 'Takamine', 'Electro-acoustique', 'Noire', 'photo', 1800, 100),
(6, 6, 'Saxophone', 'Selmer', 'Alto', 'Cuivre', 'photo', 1500, 100),
(7, 7, 'Saxophone', 'Selmer', 'Ténor', 'Cuivre', 'photo', 1800, 100),
(8, 8, 'Cymbale', 'Hit Hat top', '12 pouces', 'Cuivre', 'photo', 399, 100),
(9, 9, 'Djembé', 'Madiba', 'Grand modèle', 'Bois de Santal', 'photo', 500, 100),
(10, 10, 'Tambour', 'Guadaloupe', 'Médium résine', 'Blanc', 'photo', 600, 100);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_client`
--
ALTER TABLE `t_client`
  ADD PRIMARY KEY (`CLI_NUM`);

--
-- Index pour la table `t_commandes`
--
ALTER TABLE `t_commandes`
  ADD PRIMARY KEY (`ID_COMM`);

--
-- Index pour la table `t_produit`
--
ALTER TABLE `t_produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_commandes`
--
ALTER TABLE `t_commandes`
  MODIFY `ID_COMM` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_produit`
--
ALTER TABLE `t_produit`
  MODIFY `id_produit` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
