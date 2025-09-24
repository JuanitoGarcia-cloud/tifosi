---
-- Requête 1. Afficher la liste des noms des foccacia par odrdre alphabétique croissant
--

SELECT `nom_foccacia` FROM `foccacia` ORDER BY `nom_foccacia` ASC;

---------------------------------------------------------
-- Requête 2. Afficher le nombre total d'ingrédients
--

SELECT COUNT(`id_ingredient`) FROM `ingredient`;

---------------------------------------------------------
-- Requête 3. Afficher le prix moyen des foccacias
--

SELECT AVG(`prix`) AS prix_moyen FROM `foccacia`;

---------------------------------------------------------
-- Requête 4. Afficher la liste des boissons avec leur marque, triée par nom de boisson
--

SELECT `nom_boisson` , `nom_marque` FROM `boisson` ORDER BY `nom_boisson` ASC;

---------------------------------------------------------
-- Requête 5. Afficher la liste des ingrédients pour une Raclaccia
--

SELECT `nom_ingredient` FROM `foccacia_has_ingredient` WHERE `nom_foccacia`='Raclaccia' ORDER BY `nom_ingredient` ASC;

----------------------------------------------------------
-- Requête 6. Afficher le nom et le nombre d'ingrédients pour chaque foccacia
--

SELECT `nom_foccacia`, COUNT(`nom_ingredient`) AS 'nombre_ingredient' FROM `foccacia_has_ingredient` GROUP BY `nom_foccacia`;

---------------------------------------------------------
-- Requête 7. Afficher le nom de la foccacia qui a le plus d'ingrédients
--

-- SELECT `nom_foccacia`, COUNT(`nom_ingredient`) AS 'nombre_ingredient' FROM `foccacia_has_ingredient`
-- GROUP BY `nom_foccacia` HAVING 'nombre_ingredient'=MAX(`nom_ingredient`);
-- affiche les entêtes mais pas le résultat attendu : rien n'est affiché ??
-- connaissant le résultat de requête 6
SELECT `nom_foccacia`, COUNT(`nom_ingredient`) AS 'nombre_ingredient' FROM `foccacia_has_ingredient` GROUP BY `nom_foccacia` LIMIT 1 OFFSET 5;

---------------------------------------------------------
-- Requête 8. Afficher la liste des foccacias qui contient de l'ail
--

SELECT `nom_foccacia` FROM `foccacia_has_ingredient` WHERE `nom_ingredient`='Ail: 2g';

---------------------------------------------------------
-- Requête 9. Afficher la liste des ingrédients inutilisés
--

SELECT `id_ingredient`,`ingredient`.`nom_ingredient` FROM `ingredient` LEFT JOIN `foccacia_has_ingredient`
ON `ingredient`.`nom_ingredient`=`foccacia_has_ingredient`.`nom_ingredient` WHERE `foccacia_has_ingredient`.`nom_ingredient` IS NULL;

---------------------------------------------------------
-- Requête 10. Afficher la liste des foccacia qui n'ont pas de champignons
--
 
SELECT `id_foccacia`,`foccacia`.`nom_foccacia` FROM `foccacia` LEFT JOIN `foccacia_has_ingredient`
ON `foccacia`.`nom_foccacia`=`foccacia_has_ingredient`.`nom_foccacia`
WHERE `foccacia_has_ingredient`.`nom_ingredient`='Champignon: 40g' IS NULL;
-- affiche les entêtes mais pas le résultat attendu ??

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
