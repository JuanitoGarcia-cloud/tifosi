
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

CREATE TABLE `boisson` (
  `id_boisson` int(11) NOT NULL AUTO_INCREMENT,
  `nom_boisson` varchar(50) NOT NULL,
  `nom_marque` varchar(50) NOT NULL,
  PRIMARY KEY (`id_boisson`),
  INDEX `fk_boisson_marque_idx` (`nom_marque` ASC),
  CONSTRAINT `fk_boisson_marque`
    FOREIGN KEY (`nom_marque`)
    REFERENCES `tifosi`.`marque` (`nom_marque`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `code_postal` int(11) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `foccacia`
--

CREATE TABLE `foccacia` (
  `nom_foccacia` varchar(50) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `id_foccacia` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_foccacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `foccacia_has_ingredient`
--

CREATE TABLE `foccacia_has_ingredient` (
  `nom_foccacia` varchar(50) NOT NULL,
  `quantite` int(11) NOT NULL,
  `nom_ingredient` varchar(50) NOT NULL,
  INDEX `fk_foccacia_has_ingredient_foccacia_idx` (`nom_foccacia` ASC) VISIBLE,
  INDEX `fk_foccacia_has_ingredient_ingredient_idx` (`nom_ingredient` ASC) VISIBLE,
  CONSTRAINT `fk_foccacia_has_ingredient_foccacia`
    FOREIGN KEY (`nom_foccacia`)
    REFERENCES `tifosi`.`foccacia` (`nom_foccacia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_foccacia_has_ingredient_ingredient`
    FOREIGN KEY (`nom_ingredient`)
    REFERENCES `tifosi`.`ingredient` (`nom_ingredient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `nom_ingredient` VARCHAR(50) NOT NULL,
  `id_ingredient` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(50) NOT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nom_menu` varchar(50) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `nom_foccacia` varchar(50) NOT NULL,
  `nom_boisson` varchar(50) NOT NULL,
  PRIMARY KEY (`id_menu`),
  INDEX `fk_menu_foccacia_idx` (`nom_foccacia` ASC),
  INDEX `fk_menu_boisson_idx` (`nom_boisson` ASC),
  CONSTRAINT `fk_menu_foccacia`
    FOREIGN KEY (`nom_foccacia`)
    REFERENCES `tifosi`.`foccacia` (`nom_foccacia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_menu_boisson`
    FOREIGN KEY (`nom_boisson`)
    REFERENCES `tifosi`.`boisson` (`nom_boisson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `timestamps`
--

CREATE TABLE `timestamps` (
  `create_time` timestamp NULL DEFAULT current_timestamp(),
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
