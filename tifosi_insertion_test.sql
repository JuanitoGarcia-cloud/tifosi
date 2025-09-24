---
-- Chargement des données de la table `boisson`
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
-- Chargement des données de la table `marque`
--


INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');


--
-- Chargement des données de la table `foccacia`
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
-- Chargement des données de la table `ingredient`
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
-- Chargement des données de la table `foccacia_has_ingredient`
--

INSERT INTO `foccacia_has_ingredient`(`id_foccacia_has_ingredient`,`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
    (NULL, 'Mozaccia',1,'Base Tomate: 200g'), (NULL, 'Mozaccia',1,'Mozarella: 50g'), (NULL, 'Mozaccia',1,'Cresson: 20g'),
    (NULL, 'Mozaccia',1,'Jambon fumé: 80g'), (NULL, 'Mozaccia',1,'Ail: 2g'), (NULL, 'Mozaccia',1,'Artichaut: 20g'),
    (NULL, 'Mozaccia',1,'Champignon: 40g'), (NULL, 'Mozaccia',1,'Parmesan: 50g'), (NULL, 'Mozaccia',1,'Poivre: 1g'),
    (NULL, 'Mozaccia',1,'Olive noire: 20g');

INSERT INTO `foccacia_has_ingredient`(`id_foccacia_has_ingredient`,`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
    (NULL, 'Gorgonzollaccia',1,'Base Tomate: 200g'), (NULL, 'Gorgonzollaccia',1,'Gorgonzola: 50g'),
    (NULL, 'Gorgonzollaccia',1,'Cresson: 20g'), (NULL, 'Gorgonzollaccia',1,'Ail: 2g'),
    (NULL, 'Gorgonzollaccia',1,'Champignon: 40g'), (NULL, 'Gorgonzollaccia',1,'Parmesan: 50g'),
    (NULL, 'Gorgonzollaccia',1,'Poivre: 1g'), (NULL, 'Gorgonzollaccia',1,'Olive noire: 20g');


INSERT INTO `foccacia_has_ingredient`(`id_foccacia_has_ingredient`,`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
    (NULL, 'Raclaccia',1,'Base Tomate: 200g'), (NULL, 'Raclaccia',1,'Raclette: 50g'),
    (NULL, 'Raclaccia',1,'Cresson: 20g'), (NULL, 'Raclaccia',1,'Ail: 2g'), (NULL, 'Raclaccia',1,'Champignon: 40g'),
    (NULL, 'Raclaccia',1,'Parmesan: 50g'), (NULL, 'Raclaccia',1,'Poivre: 1g');


INSERT INTO `foccacia_has_ingredient`(`id_foccacia_has_ingredient`,`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
    (NULL, 'Emmentalaccia',1,'Base crème: 200g'), (NULL, 'Emmentalaccia',1,'Emmental: 50g'),
    (NULL, 'Emmentalaccia',1,'Cresson: 20g'), (NULL, 'Emmentalaccia',1,'Champignon: 40g'),
    (NULL, 'Emmentalaccia',1,'Parmesan: 50g'), (NULL, 'Emmentalaccia',1,'Poivre: 1g'), (NULL, 'Emmentalaccia',1,'Oignon: 20g');


INSERT INTO `foccacia_has_ingredient`(`id_foccacia_has_ingredient`,`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
    (NULL, 'Tradizione',1,'Base Tomate: 200g'), (NULL, 'Tradizione',1,'Mozarella: 50g'),
    (NULL, 'Tradizione',1,'Cresson: 20g'), (NULL, 'Tradizione',1,'Jambon cuit: 80g'),
    (NULL, 'Tradizione',2,'Champignon: 40g'), (NULL, 'Tradizione',1,'Parmesan: 50g'),
    (NULL, 'Tradizione',1,'Poivre: 1g'), (NULL, 'Tradizione',0.5,'Olive noire: 20g'),
    (NULL, 'Tradizione',0.5,'Olive verte: 20g');


INSERT INTO `foccacia_has_ingredient`(`id_foccacia_has_ingredient`,`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
    (NULL, 'Hawaienne',1,'Base Tomate: 200g'), (NULL, 'Hawaienne',1,'Mozarella: 50g'),
    (NULL, 'Hawaienne',1,'Cresson: 20g'), (NULL, 'Hawaienne',1,'Bacon: 80g'),
    (NULL, 'Hawaienne',1,'Ananas: 40g'), (NULL, 'Hawaienne',1,'Piment: 2g'),
    (NULL, 'Hawaienne',1,'Parmesan: 50g'), (NULL, 'Hawaienne',1,'Poivre: 1g'),
    (NULL, 'Hawaienne',1,'Olive noire: 20g');


INSERT INTO `foccacia_has_ingredient`(`id_foccacia_has_ingredient`,`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
    (NULL, 'Américaine',1,'Base Tomate: 200g'), (NULL, 'Américaine',1,'Mozarella: 50g'),
    (NULL, 'Américaine',1,'Cresson: 20g'), (NULL, 'Américaine',1,'Bacon: 80g'),
    (NULL, 'Américaine',0.5,'Pomme de terre: 80g'), (NULL, 'Américaine',1,'Parmesan: 50g'),
    (NULL, 'Américaine',1,'Poivre: 1g'), (NULL, 'Américaine',1,'Olive noire: 20g');


INSERT INTO `foccacia_has_ingredient`(`id_foccacia_has_ingredient`,`nom_foccacia`, `quantite`, `nom_ingredient`) VALUES
    (NULL, 'Paysanne',1,'Base crème: 200g'), (NULL, 'Paysanne',1,'Chèvre: 50g'), (NULL, 'Paysanne',1,'Cresson: 20g'),
    (NULL, 'Paysanne',1,'Pomme de terre: 80g'), (NULL, 'Paysanne',1,'Jambon fumé: 80g'),
    (NULL, 'Paysanne',1,'Ail: 2g'), (NULL, 'Paysanne',1,'Artichaut: 20g'),
    (NULL, 'Paysanne',1,'Champignon: 40g'), (NULL, 'Paysanne',1,'Parmesan: 50g'),
    (NULL, 'Paysanne',1,'Poivre: 1g'), (NULL, 'Paysanne',1,'Olive noire: 20g'),
    (NULL, 'Paysanne',1,'œuf: 50g')

