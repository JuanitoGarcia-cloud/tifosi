--
-- Index pour les tables déchargées
--

---
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `nom_marque`) VALUES
(1, 'Coca-cola zéro', 'Coca-cola'),
(2, 'Coca-cola original', 'Coca-cola'),
(3, 'Fanta citron', 'Coca-cola'),
(4, 'Fanta orange', 'Coca-cola'),
(5, 'Capri-sun', 'Coca-cola'),
(6, 'Pepsi', 'Pepsico'),
(7, 'Pepsi Max zéro', 'Pepsico'),
(8, 'Lipton zéro citron', 'Pepsico'),
(9, 'Lipton Peach', 'Pepsico'),
(10, 'Monster energy ultra gold', 'Monster'),
(11, 'Monster energy ultra blue', 'Monster'),
(12, 'Eau de source', 'Cristalline');

--
-- Déchargement des données de la table `marque`
--


INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');


--
-- Déchargement des données de la table `foccacia`
--

INSERT INTO `foccacia` (`id_foccacia`, `nom_foccacia`, `prix`) VALUES
(1, 'Mozaccia', 9.80),
(2, 'Gorgonzollaccia', 10.80),
(3, 'Raclaccia', 8.90),
(4, 'Emmentalaccia', 9.80),
(5, 'Tradizione', 8.90),
(6, 'Hawaienne', 11.20),
(7, 'Américaine', 10.80),
(8, 'Paysanne', 12.80);


--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail: 2g'),
(2, 'Ananas: 40g'),
(3, 'Artichaut: 20g'),
(4, 'Bacon: 80g'),
(5, 'Base tomate: 200g'),
(6, 'Base crème: 200g'),
(7, 'Champignon: 40g'),
(8, 'Chevre: 50g'),
(9, 'Cresson: 20g'),
(10, 'Emmental: 50g'),
(11, 'Gorgonzola: 50g'),
(12, 'Jambon cuit: 80g'),
(13, 'Jambon fumé: 80g'),
(14, 'Oeuf: 50g'),
(15, 'Oignon: 20g'),
(16, 'Olive noire: 20g'),
(17, 'Olive verte: 20g'),
(18, 'Parmesan: 50g'),
(19, 'Piment: 2g'),
(20, 'Poivre: 1g'),
(21, 'Pomme de terre: 80g'),
(22, 'Raclette: 50g'),
(23, 'Salami: 80g'),
(24, 'Tomate cerise: 40g'),
(25, 'Mozarella: 40g');


--
-- Déchargement des données de la table `foccacia_has_ingredient`
--

INSERT INTO `foccacia_has_ingredient`(`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
('Mozaccia',1,'Base Tomate'), ('Mozaccia',1,'Mozarella'), ('Mozaccia',1,'cresson'),
('Mozaccia',1,'jambon fumé'), ('Mozaccia',1,'ail'), ('Mozaccia',1,'artichaut'),
('Mozaccia',1,'champignon'), ('Mozaccia',1,'parmesan'), ('Mozaccia',1,'poivre'), ('Mozaccia',1,'olive noire');

INSERT INTO `foccacia_has_ingredient`(`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
('Gorgonzollaccia',1,'Base Tomate'), ('Gorgonzollaccia',1,'Gorgonzola'),
('Gorgonzollaccia',1,'cresson'), ('Gorgonzollaccia',1,'ail'),
('Gorgonzollaccia',1,'champignon'), ('Gorgonzollaccia',1,'parmesan'),
('Gorgonzollaccia',1,'poivre'), ('Gorgonzollaccia',1,'olive noire');


INSERT INTO `foccacia_has_ingredient`(`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
('Raclaccia',1,'Base Tomate'), ('Raclaccia',1,'raclette'), ('Raclaccia',1,'cresson'),
('Raclaccia',1,'ail'), ('Raclaccia',1,'champignon'), ('Raclaccia',1,'parmesan'), ('Raclaccia',1,'poivre');


INSERT INTO `foccacia_has_ingredient`(`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
('Emmentalaccia',1,'Base crème'), ('Emmentalaccia',1,'Emmental'), ('Emmentalaccia',1,'cresson'),
('Emmentalaccia',1,'champignon'), ('Emmentalaccia',1,'parmesan'), ('Emmentalaccia',1,'poivre'),
('Emmentalaccia',1,'oignon');


INSERT INTO `foccacia_has_ingredient`(`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
('Tradizione',1,'Base Tomate'), ('Tradizione',1,'Mozarella'), ('Tradizione',1,'cresson'),
('Tradizione',1,'jambon cuit'), ('Tradizione',2,'champignon'), ('Tradizione',1,'parmesan'),
('Tradizione',1,'poivre'), ('Tradizione',0.5,'olive noire'), ('Tradizione',0.5,'olive verte');


INSERT INTO `foccacia_has_ingredient`(`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
('Hawaienne',1,'Base Tomate'), ('Hawaienne',1,'Mozarella'), ('Hawaienne',1,'cresson'),
('Hawaienne',1,'bacon'), ('Hawaienne',1,'ananas'), ('Hawaienne',1,'piment'),
('Hawaienne',1,'parmesan'), ('Hawaienne',1,'poivre'), ('Hawaienne',1,'olive noire');


INSERT INTO `foccacia_has_ingredient`(`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
('Américaine',1,'Base Tomate'), ('Américaine',1,'Mozarella'), ('Américaine',1,'cresson'),
('Américaine',1,'bacon'), ('Américaine',0.5,'pomme de terre'), ('Américaine',1,'parmesan'),
('Américaine',1,'poivre'), ('Américaine',1,'olive noire');


INSERT INTO `foccacia_has_ingredient`(`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
('Paysanne',1,'Base crème'), ('Paysanne',1,'Chèvre'), ('Paysanne',1,'cresson'),
('Paysanne',1,'pomme de terre'), ('Paysanne',1,'jambon fumé'), ('Paysanne',1,'ail'),
('Paysanne',1,'artichaut'), ('Paysanne',1,'champignon'), ('Paysanne',1,'parmesan'),
('Paysanne',1,'poivre'), ('Paysanne',1,'olive noire'), ('Paysanne',1,'œuf')


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
