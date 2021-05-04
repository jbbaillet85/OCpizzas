-- -----------------------------------------------------
-- Schema ocpizzas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ocpizzas` DEFAULT CHARACTER SET utf8 ;
USE `ocpizzas` ;

-- -----------------------------------------------------
-- Table `ocpizzas`.`adresse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`adresse` (
  `adresse_id` INT NOT NULL AUTO_INCREMENT,
  `rue` VARCHAR(45) NOT NULL,
  `code_postal` VARCHAR(5) NOT NULL,
  `ville` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`adresse_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`utilisateur`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`utilisateur` (
  `utilisateur_id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `courriel` VARCHAR(45) NOT NULL,
  `password_hash` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`utilisateur_id`))
ENGINE = InnoDB;

-- --------------------------------------------------
-- Table `ocpizzas`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`client` (
  `client_id` INT NOT NULL,
  `adresse_client_id` INT NOT NULL,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `adresse`
    FOREIGN KEY (`adresse_client_id`)
    REFERENCES `ocpizzas`.`adresse` (`adresse_id`),
  CONSTRAINT `client_utilisateur_id`
    FOREIGN KEY (`client_id`)
    REFERENCES `ocpizzas`.`utilisateur` (`utilisateur_id`))
ENGINE = InnoDB;


-- --------------------------------------------------
-- Table `ocpizzas`.`commande_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`commande_status` (
  `commande_status_id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`commande_status_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`pizzeria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`pizzeria` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `adresse_pizzerias_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `adresse_id`
    FOREIGN KEY (`adresse_pizzerias_id`)
    REFERENCES `ocpizzas`.`adresse` (`adresse_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`paiement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`paiement` (
  `paiement_id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`paiement_id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ocpizzas`.`commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`commande` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `status_id` INT NOT NULL,
  `client_id` INT NOT NULL,
  `date` DATE NOT NULL,
  `montant` DECIMAL(5,2) NOT NULL,
  `pizzeria_id` INT NOT NULL,
  `mode_paiement_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `client`
    FOREIGN KEY (`client_id`)
    REFERENCES `ocpizzas`.`client` (`client_id`),
  CONSTRAINT `commande_status_id`
    FOREIGN KEY (`status_id`)
    REFERENCES `ocpizzas`.`commande_status` (`commande_status_id`),
  CONSTRAINT `pizzeria`
    FOREIGN KEY (`pizzeria_id`)
    REFERENCES `ocpizzas`.`pizzeria` (`id`),
  CONSTRAINT `mode_paiement`
    FOREIGN KEY (`mode_paiement_id`)
    REFERENCES `ocpizzas`.`paiement` (`paiement_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`produit` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prix` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`ingredient` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `mesure` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`stock_ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`stock_ingredient` (
  `pizzeria_id` INT NOT NULL,
  `ingredient_id` INT NOT NULL,
  `quantite` INT NOT NULL,
  PRIMARY KEY (`pizzeria_id`, `ingredient_id`),
  CONSTRAINT `stock_pizzeria`
    FOREIGN KEY (`pizzeria_id`)
    REFERENCES `ocpizzas`.`pizzeria` (`id`),
  CONSTRAINT `stock_ingredient`
    FOREIGN KEY (`ingredient_id`)
    REFERENCES `ocpizzas`.`ingredient` (`id`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `ocpizzas`.`aide_memoire`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`aide_memoire` (
  `produit_id` INT NOT NULL,
  `ingredient_id` INT NOT NULL,
  `quantite` INT NOT NULL,
  CONSTRAINT `produit_id`
    FOREIGN KEY (`produit_id`)
    REFERENCES `ocpizzas`.`produit` (`id`),
  CONSTRAINT `ingredient_id`
    FOREIGN KEY (`ingredient_id`)
    REFERENCES `ocpizzas`.`ingredient` (`id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ocpizzas`.`ligne_commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`ligne_commande` (
  `produit_id` INT NOT NULL,
  `commande_id` INT NOT NULL,
  CONSTRAINT `pizzas`
    FOREIGN KEY (`produit_id`)
    REFERENCES `ocpizzas`.`produit` (`id`),
  CONSTRAINT `idCommande`
    FOREIGN KEY (`commande_id`)
    REFERENCES `ocpizzas`.`commande` (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`profile` (
  `profil_id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`profil_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`employe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`employe` (
  `utilisateur_id` INT NOT NULL AUTO_INCREMENT,
  `profile_employe_id` INT NOT NULL,
  PRIMARY KEY (`utilisateur_id`),
  CONSTRAINT `utilisateur_id`
    FOREIGN KEY (`utilisateur_id`)
    REFERENCES `ocpizzas`.`utilisateur` (`utilisateur_id`),
  CONSTRAINT `profile_employe_id`
    FOREIGN KEY (`profile_employe_id`)
    REFERENCES `ocpizzas`.`profile` (`profil_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`permission` (
  `permission_id` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`permission_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`profile_permission`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`profile_permission` (
  `profile_id` INT NOT NULL,
  `permission_id` INT NOT NULL,
  CONSTRAINT `profile_id`
    FOREIGN KEY (`profile_id`)
    REFERENCES `ocpizzas`.`profile` (`profil_id`),
  CONSTRAINT `permission_id`
    FOREIGN KEY (`permission_id`)
    REFERENCES `ocpizzas`.`permission` (`permission_id`))
ENGINE = InnoDB;
