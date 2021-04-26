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


-- -----------------------------------------------------
-- Table `ocpizzas`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`client` (
  `client_id` INT NOT NULL,
  `adresse_client_id` INT NOT NULL,
  PRIMARY KEY (`client_id`),
  CONSTRAINT `adresse`
    FOREIGN KEY (`adresse_client_id`)
    REFERENCES `ocpizzas`.`adresse` (`adresse_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `client_utilisateur_id`
    FOREIGN KEY (`client_id`)
    REFERENCES `ocpizzas`.`utilisateur` (`utilisateur_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`commande_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`commande_status` (
  NT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`pizzeria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`pizzeria` (
  NT NOT NULL AUTO_INCREM,
  `nom` VARCHAR(45) NOT NULL,
  `adresse_pizzerias_id` INT NOT NULL,
  PRIMARY KEY (
  CONSTRAINT `adresse_
    FOREIGN KEY (`adresse_pizzerias_id`)
    REFERENCES `ocpizzas`.`adresse` (`adresse_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`paiement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`paiement` (
  NT NOT NULL AUTNCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  PRIMARY KEY (
ENGINE = InnoD

-- -----------------------------------------------------
-- Table `ocpizzas`.`commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`commande` (
  NT NOT NULL AUTO_INCREM,
  `status_id` INT NOT NULL,
  `client_id` INT NOT NULL,
  `date` DATE NOT NULL,
  `montant` DECIMAL(5,2) NOT NULL,
  `pizzeria_id` INT NOT NULL,
  `mode_paiement_id` INT NOT NULL,
  PRIMARY KEY (
  CONSTRAINT `client` FOREIGN KEY (`client_id`)
    REFERENCES `ocpizzas`.`client` (`client_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT    FOREIGN KEY (`status_id`)
    REFERENCES `ocpizzas`.`commande_status` (    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `pizzeria`
    FOREIGN KEY (`pizzeria_id`)
    REFERENCES `ocpizzas`.`pizzeria` (    ON DELETE CASCADEON UPDATE CASCADE,
  CONSTRAINT `mode_paiement`
    FOREIGN KEY (`mode_paiement_id`)
    REFERENCES `ocpizzas`.`paiement` (    ON DELETE CADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`produit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`produit` (
  NT NOT NULL AUTO_INCREM,
  `nom` VARCHAR(45) NOT NULL,
  `prix` DECIMAL(4,2) NOT NULL,
  PRIMARY KEY (
ENGINE = InnoDB;


-- --------------------------------------------------
-- Table `ocpizzas`.`ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`ingredient` (
  NT NOT NULL AUTO_INCREM,
  `nom` VARCHAR(45) NOT NULL,
  `mesure` VARCHAR(45) NOT NULL,
  PRIMARY KEY (
ENGINE = InnoDB;


-- --------------------------------------------------
-- Table `ocpizzas`.`stock_ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`stock_ingredient` (
  `pizzeria_id` INT NOT NULL,
  `ingredien_id` INT NOT NULL,
  `quantite` INT NOT NULL,
  `unite` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pizzeria_id`, `ingredien_id`),
  CONSTRAINT `stock_pizzeria`
    FOREIGN KEY (`pizzeria_id`)
    REFERENCES `ocpizzas`.`pizzeria` (    ON DELETE NO ACTIO  ON UPDATE NO ACTION,
  CONSTRAINT `stock_ingredient`
    FOREIGN KEY (`ingredien_id`)
    REFERENCES `ocpizzas`.`ingredient` (    ON DELETE NO ACTIO  ON UPDATE NO ACTION)
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
    REFERENCES `ocpizzas`.`produit` (    ON DELETE CASCADEON UPDATE CASCADE,
  CONSTRAINT `ingredient_id`
    FOREIGN KEY (`ingredient_id`)
    REFERENCES `ocpizzas`.`ingredient` (    ON DELETE NO ACTIO  ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ocpizzas`.`ligne_commande`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ocpizzas`.`ligne_commande` (
  `produit_id` INT NOT NULL,
  `commande_id` INT NOT NULL,
  CONSTRAINT `pizzas`
    FOREIGN KEY (`produit_id`)
    REFERENCES `ocpizzas`.`produit` (    ON DELETE NO ACTIO  ON UPDATE NO ACTION,
  CONSTRAINT `idCommande`
    FOREIGN KEY (`commande_id`)
    REFERENCES `ocpizzas`.`commande` (    ON DELETE NO ACTIO  ON UPDATE NO ACTION)
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
    REFERENCES `ocpizzas`.`utilisateur` (`utilisateur_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `profile_employe_id`
    FOREIGN KEY (`profile_employe_id`)
    REFERENCES `ocpizzas`.`profile` (`profil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
    REFERENCES `ocpizzas`.`profile` (`profil_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `permission_id`
    FOREIGN KEY (`permission_id`)
    REFERENCES `ocpizzas`.`permission` (`permission_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `ocpizzas`.`adresse`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`adresse` ( `rue`, `code_postal`, `ville`) VALUES ('5 place du marché', '35250', 'Saint Aubin Aubigné');
INSERT INTO `ocpizzas`.`adresse` ( `rue`, `code_postal`, `ville`) VALUES ('2 rue de Rennes', '35830', 'Betton');
INSERT INTO `ocpizzas`.`adresse` (`rue`, `code_postal`, `ville`) VALUES ('47 rue de Rennes', '35340', 'Liffré');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`utilisateur`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`utilisateur` (`nom`, `prenom`, `courriel`, `password_hash`) VALUES ('Baillet', 'Jean-Baptiste', 'jbbaillet@gmail.com', 'baillet');
INSERT INTO `ocpizzas`.`utilisateur` (`nom`, `prenom`, `courriel`, `password_hash`) VALUES ('Adams', 'Lorie', 'lorielove@laposte.net', 'lorie');
INSERT INTO `ocpizzas`.`utilisateur` (`nom`, `prenom`, `courriel`, `password_hash`) VALUES ('Dupond', 'Luc', 'lucdupond@yahoo.fr', 'dupond');
INSERT INTO `ocpizzas`.`utilisateur` (`nom`, `prenom`, `courriel`, `password_hash`) VALUES ('Calzone', 'Adrien', 'a.calzone@ocpizzas.com', 'calzone');
INSERT INTO `ocpizzas`.`utilisateur` (`nom`, `prenom`, `courriel`, `password_hash`) VALUES ('Titouane', 'Julie', 'j.titouane@ocpizzas.com', 'titouane');
INSERT INTO `ocpizzas`.`utilisateur` (`nom`, `prenom`, `courriel`, `password_hash`) VALUES ('Larzac', 'Serge', 's.larzac@ocpizzas.com', 'larzac');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`client`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`client` (`client_id`, `adresse_client_id`) VALUES (1, 1);
INSERT INTO `ocpizzas`.`client` (`client_id`, `adresse_client_id`) VALUES (2, 2);
INSERT INTO `ocpizzas`.`client` (`client_id`, `adresse_client_id`) VALUES (3, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`commande_status`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`commande_status` (`nom`) VALUES ('panier');
INSERT INTO `ocpizzas`.`commande_status` (`nom`) VALUES ('panier validé');
INSERT INTO `ocpizzas`.`commande_status` (`nom`) VALUES ('modifiée');
INSERT INTO `ocpizzas`.`commande_status` (`nom`) VALUES ('validée');
INSERT INTO `ocpizzas`.`commande_status` (`nom`) VALUES ('prête à être livrée');
INSERT INTO `ocpizzas`.`commande_status` (`nom`) VALUES ('livrée');
INSERT INTO `ocpizzas`.`commande_status` (`nom`) VALUES ('payée');
INSERT INTO `ocpizzas`.`commande_status` (`nom`) VALUES ('annulée');
INSERT INTO `ocpizzas`.`commande_status` (`nom`) VALUES ('clôturée');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`pizzeria`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`pizzeria` (`nom`, `adresse_pizzerias_id`) VALUES ('Pizzeria OC Betton', 2);
INSERT INTO `ocpizzas`.`pizzeria` (`nom`, `adresse_pizzerias_id`) VALUES ('Pizzeria OC Liffré', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`paiement`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`paiement` (`nom`) VALUES ('carte bancaire');
INSERT INTO `ocpizzas`.`paiement` (`nom`) VALUES ('chèque');
INSERT INTO `ocpizzas`.`paiement` (`nom`) VALUES ('espèces');
INSERT INTO `ocpizzas`.`paiement` (`nom`) VALUES ('ticket restaurant');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`commande`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`commande` (`status_id`, `client_id`date`, `montant`, `pizzeria_id`, `mode_paiement_id`) VALUES (1, panier, 1, DEFAULT, DEFAULT, 1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`produit`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Royale', 9.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Rambo', 10.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Flamingo', 14.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Le Domingo', 12.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('4 Fromages', 11.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Titouane', 13);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Larzac', 12.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Vesuvio', 12.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Montana', 12.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Corleone Burger', 13);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Kebab', 13.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Petite Italie', 13.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Britney', 14);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Cosa Nostra', 14);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Flamingo', 14.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Soso', 15.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Penelope', 11.5);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`ingredient`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'sauce tomate', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'mozzarella', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'jambon', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'champignons', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'viande hache', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'oeuf', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'crème fraiche', 'centilitre');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'oignons', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'chevre', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'chorizo', 'tranches');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'merguez', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'poivron', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'miel', 'gramme');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'sauce barbecue', 'litre');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'lardon', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'raclette', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'pommes de terre', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'framboise', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'boeuf', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'cheddar', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'kebab', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'sauce kebab', 'litre');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'andouille', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'camembert', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'saumon', 'tranche');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'creme ail', 'litre');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'fine herbe', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'noix de saint jacques', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'jambon serrano', 'tranche');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'mix pousses de salade', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'persillade', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'tranches tomates', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'coeur artichauts', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'ruban courgettes', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES, 'olives', 'unite');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`stock_ingredient`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 1, 2000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 2, 2000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 3, 1500, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 4, 1500, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 5, 2000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 6, 50, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 7, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 8, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 9, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 10, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 11, 700, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 12, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 13, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 14, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 15, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 16, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 17, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 18, 1000, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 19, DEFAULT, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 20, DEFAULT, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 21, DEFAULT, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 22, DEFAULT, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 23, DEFAULT, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (1, 24, DEFAULT, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredien_id`, `quantite`, `unite`) VALUES (&, 25, DEFAULT, DEFAULT);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`aide_memoire`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (1, 3, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (1, 4, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (2, 5, 50);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (2, 6, 1);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (2, 7, 30);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (2, 8, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`ligne_commande`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`ligne_commande` (`produit_id`, `commande_id`) VALUES (1, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`profile`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`profile` (`nom`) VALUES ('pizzaiolo');
INSERT INTO `ocpizzas`.`profile` (`nom`) VALUES ('responsable');
INSERT INTO `ocpizzas`.`profile` (`nom`) VALUES ('livreur');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`employe`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`employe` (`utilisateur_id`, `profile_employe_id`) VALUES (4, pizzaiolo);
INSERT INTO `ocpizzas`.`employe` (`utilisateur_id`, `profile_employe_id`) VALUES (5, responsable);
INSERT INTO `ocpizzas`.`employe` (`utilisateur_id`, `profile_employe_id`) VALUES (6, livreur);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`permission`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`permission` (`permission_id`, `nom`) VALUES (DEFAULT, 'preparer commande');
INSERT INTO `ocpizzas`.`permission` (`permission_id`, `nom`) VALUES (DEFAULT, 'livrer commande');
INSERT INTO `ocpizzas`.`permission` (`permission_id`, `nom`) VALUES (DEFAULT, 'consulter stock_ingredient');
INSERT INTO `ocpizzas`.`permission` (`permission_id`, `nom`) VALUES (DEFAULT, 'consulter aide_memoire');
INSERT INTO `ocpizzas`.`permission` (`permission_id`, `nom`) VALUES (DEFAULT, 'consulter status commandes');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`profile_permission`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`profile_permission` (`profile_id`, `permission_id`) VALUES (pizzailo, preparer commande);
INSERT INTO `ocpizzas`.`profile_permission` (`profile_id`, `permission_id`) VALUES (livreur, livrer commande);
INSERT INTO `ocpizzas`.`profile_permission` (`profile_id`, `permission_id`) VALUES (responsable, consulter stock_ingredient);
INSERT INTO `ocpizzas`.`profile_permission` (`profile_id`, `permission_id`) VALUES (pizzaiolo, consulter aide_memoire);
INSERT INTO `ocpizzas`.`profile_permission` (`profile_id`, `permission_id`) VALUES (responsable, consulter statut commande);

COMMIT;

