USE `ocpizzas`;
-- -----------------------------------------------------
-- Data for table `ocpizzas`.`adresse`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`adresse` (`rue`, `code_postal`, `ville`) VALUES ('5 place du marché', '35250', 'Saint Aubin Aubigné');
INSERT INTO `ocpizzas`.`adresse` (`rue`, `code_postal`, `ville`) VALUES ('2 rue de Rennes', '35830', 'Betton');
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
INSERT INTO `ocpizzas`.`client` (`client_id`,`adresse_client_id`) VALUES (1,1);
INSERT INTO `ocpizzas`.`client` (`client_id`,`adresse_client_id`) VALUES (2,2);
INSERT INTO `ocpizzas`.`client` (`client_id`,`adresse_client_id`) VALUES (3,3);
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

- -----------------------------------------------------
--Data for table `ocpizzas`.`paiement`
-----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`paiement` (`nom`) VALUES ('carte bancaire');
INSERT INTO `ocpizzas`.`paiement` (`nom`) VALUES ('chèque');
INSERT INTO `ocpizzas`.`paiement` (`nom`) VALUES ('espèces');
INSERT INTO `ocpizzas`.`paiement` (`nom`) VALUES ('ticket restaurant');
COMMIT;
- -----------------------------------------------------
--Data for table `ocpizzas`.`commande`
-----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`commande` (`status_id`, `client_id`, `date`, `montant`, `pizzeria_id`, `mode_paiement_id`)
VALUES
(1, 1, '2021/04/20', 60, 1, 1),
(2, 2, '2021/05/23', 30, 2, 1);
COMMIT;

- -----------------------------------------------------
--Data for table `ocpizzas`.`produit`
-----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Royale', 9.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Rambo', 10.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Flamingo', 14.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('Le Domingo', 12.5);
INSERT INTO `ocpizzas`.`produit` (`nom`, `prix`) VALUES ('4 Fromages', 11.5);
COMMIT;

- -----------------------------------------------------
--Data for table `ocpizzas`.`ingredient`
-----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('sauce tomate', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('mozzarella', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('jambon', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('champignons', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('viande hache', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('oeuf',);
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('crème fraiche', 'centilitre');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('oignons', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('chevre', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('chorizo', 'tranches');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('merguez',);
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('poivron',);
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('miel', 'gramme');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('sauce barbecue', 'litre');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('lardon', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('raclette', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('pommes de terre',);
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('framboise', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('boeuf', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('cheddar', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('kebab', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('sauce kebab', 'litre');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('andouille',);
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('camembert', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('saumon', 'tranche');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('creme ail', 'litre');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('fine herbe', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('noix de saint jacques', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('jambon serrano', 'tranche');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('mix pousses de salade', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('persillade', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('tranches tomates',);
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('coeur artichauts',);
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('ruban courgettes', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('olives',);
INSERT INTO `ocpizzas`.`ingredient` (`nom`, `mesure`) VALUES ('emmental', 'grammes');
COMMIT;

- -----------------------------------------------------
--Data for table `ocpizzas`.`stock_ingredient`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,1,2000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,2,2000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,3,1500);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,4,1500);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,5,2000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,6,50);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,7,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,8,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,9,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,10,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,11,700);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,12,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,13,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,14,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,15,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,16,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,17,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,18,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,19,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,20,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,21,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,22,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,23,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,24,1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`,`ingredient_id`,`quantite`) VALUES (1,25,1000);

- -----------------------------------------------------
--Data for table `ocpizzas`.`aide_memoire`
--------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (1,3,100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (1,4,100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (2,5,50);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (2,6,1);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (2,7,30);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (2,8,1);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (3,28,100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (3,29,100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (3,30,50);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (4,16, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (4, 11,100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (4, 7, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (4, 2, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (4, 36, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (5, 32,100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (5, 33, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (5, 12,100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (5, 34,100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (5, 34,100);
COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`ligne_commande`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`ligne_commande` (`produit_id`, `commande_id`) VALUES (1,3);
INSERT INTO `ocpizzas`.`ligne_commande` (`produit_id`, `commande_id`) VALUES (2,3);
COMMIT;

- -----------------------------------------------------
--Data for table `ocpizzas`.`profile`
-----------------------------------------------------
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
INSERT INTO `ocpizzas`.`employe` (`utilisateur_id`,`profile_employe_id`) VALUES (4, 1);
INSERT INTO `ocpizzas`.`employe` (`utilisateur_id`,`profile_employe_id`) VALUES (5, 2);
INSERT INTO `ocpizzas`.`employe` (`utilisateur_id`,`profile_employe_id`) VALUES (6, 3);
COMMIT;


-----------------------------------------------------
-- Data for table `ocpizzas`.`permission`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`permission` (`nom`) VALUES ('preparer_commande');
INSERT INTO `ocpizzas`.`permission` (`nom`) VALUES ('livrer_commande');
INSERT INTO `ocpizzas`.`permission` (`nom`) VALUES ('consulter_stock_ingredient');
INSERT INTO `ocpizzas`.`permission` (`nom`) VALUES ('consulter_aide_memoire');
INSERT INTO `ocpizzas`.`permission` (`nom`) VALUES ('consulter_status_commandes');
COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`profile_permission`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`profile_permission` (`profile_id`, `permission_id`) VALUES (1,1);
INSERT INTO `ocpizzas`.`profile_permission` (`profile_id`, `permission_id`) VALUES (2, 2);
INSERT INTO `ocpizzas`.`profile_permission` (`profile_id`, `permission_id`) VALUES (3, 3);
INSERT INTO `ocpizzas`.`profile_permission` (`profile_id`, `permission_id`) VALUES (1, 4);
INSERT INTO `ocpizzas`.`profile_permission` (`profile_id`, `permission_id`) VALUES (3, 5);
COMMIT;
