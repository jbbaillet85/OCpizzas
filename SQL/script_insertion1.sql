
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `ocpizzas`.`commande_statut`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`commande_statut` (`commande_statut_id`, `nom`) VALUES (1, 'panier');
INSERT INTO `ocpizzas`.`commande_statut` (`commande_statut_id`, `nom`) VALUES (2, 'panier validé');
INSERT INTO `ocpizzas`.`commande_statut` (`commande_statut_id`, `nom`) VALUES (3, 'modifiée');
INSERT INTO `ocpizzas`.`commande_statut` (`commande_statut_id`, `nom`) VALUES (4, 'validée');
INSERT INTO `ocpizzas`.`commande_statut` (`commande_statut_id`, `nom`) VALUES (5, 'prête à être livrée');
INSERT INTO `ocpizzas`.`commande_statut` (`commande_statut_id`, `nom`) VALUES (6, 'livrée');
INSERT INTO `ocpizzas`.`commande_statut` (`commande_statut_id`, `nom`) VALUES (7, 'payée');
INSERT INTO `ocpizzas`.`commande_statut` (`commande_statut_id`, `nom`) VALUES (8, 'annulée');
INSERT INTO `ocpizzas`.`commande_statut` (`commande_statut_id`, `nom`) VALUES (9, 'clôturée');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`adresse`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`adresse` (`adresse_id`, `rue`, `code_postal`, `ville`) VALUES (, '5 place du marché', '35250', 'Saint Aubin Aubigné');
INSERT INTO `ocpizzas`.`adresse` (`adresse_id`, `rue`, `code_postal`, `ville`) VALUES (, '2 rue de Rennes', '35830', 'Betton');
INSERT INTO `ocpizzas`.`adresse` (`adresse_id`, `rue`, `code_postal`, `ville`) VALUES (, '47 rue de Rennes', '35340', 'Liffré');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`pizzeria`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`pizzeria` (`id`, `nom`, `adresse_pizzerias_id`) VALUES (1, 'Pizzeria OC Betton', 2);
INSERT INTO `ocpizzas`.`pizzeria` (`id`, `nom`, `adresse_pizzerias_id`) VALUES (2, 'Pizzeria OC Liffré', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`paiement`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`paiement` (`paiement_id`, `nom`) VALUES (1, 'carte bancaire');
INSERT INTO `ocpizzas`.`paiement` (`paiement_id`, `nom`) VALUES (2, 'chèque');
INSERT INTO `ocpizzas`.`paiement` (`paiement_id`, `nom`) VALUES (3, 'espèces');
INSERT INTO `ocpizzas`.`paiement` (`paiement_id`, `nom`) VALUES (4, 'ticket restaurant');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`profil`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`profil` (`id`, `nom`) VALUES (1, 'pizzaiolo');
INSERT INTO `ocpizzas`.`profil` (`id`, `nom`) VALUES (2, 'responsable');
INSERT INTO `ocpizzas`.`profil` (`id`, `nom`) VALUES (3, 'livreur');
INSERT INTO `ocpizzas`.`profil` (`id`, `nom`) VALUES (4, 'client');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`utilisateur`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`utilisateur` (`utilisateur_id`, `nom`, `prenom`, `courriel`, `password_hash`, `utilisateur_adresse`, `utilisateur_profil`) VALUES (1, 'Baillet', 'Jean-Baptiste', 'jbbaillet@gmail.com', 'baillet', 2, 4);
INSERT INTO `ocpizzas`.`utilisateur` (`utilisateur_id`, `nom`, `prenom`, `courriel`, `password_hash`, `utilisateur_adresse`, `utilisateur_profil`) VALUES (2, 'Adams', 'Lorie', 'lorielove@laposte.net', 'lorie', 2, 4);
INSERT INTO `ocpizzas`.`utilisateur` (`utilisateur_id`, `nom`, `prenom`, `courriel`, `password_hash`, `utilisateur_adresse`, `utilisateur_profil`) VALUES (3, 'Dupond', 'Luc', 'lucdupond@yahoo.fr', 'dupond', 1, 4);
INSERT INTO `ocpizzas`.`utilisateur` (`utilisateur_id`, `nom`, `prenom`, `courriel`, `password_hash`, `utilisateur_adresse`, `utilisateur_profil`) VALUES (4, 'Calzone', 'Adrien', 'a.calzone@ocpizzas.com', 'calzone', 3, 1);
INSERT INTO `ocpizzas`.`utilisateur` (`utilisateur_id`, `nom`, `prenom`, `courriel`, `password_hash`, `utilisateur_adresse`, `utilisateur_profil`) VALUES (5, 'Titouane', 'Julie', 'j.titouane@ocpizzas.com', 'titouane', 3, 2);
INSERT INTO `ocpizzas`.`utilisateur` (`utilisateur_id`, `nom`, `prenom`, `courriel`, `password_hash`, `utilisateur_adresse`, `utilisateur_profil`) VALUES (6, 'Larzac', 'Serge', 's.larzac@ocpizzas.com', 'larzac', 3, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`commande`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`commande` (`id`, `statut_id`, `client_id`, `date`, `montant`, `pizzeria_id`, `mode_paiement_id`) VALUES (1, 1, 1, '2021/04/20', DEFAULT, 1, 1);
INSERT INTO `ocpizzas`.`commande` (`id`, `statut_id`, `client_id`, `date`, `montant`, `pizzeria_id`, `mode_paiement_id`) VALUES (, , , '', DEFAULT, , );

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`produit`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`produit` (`id`, `nom`, `prix`) VALUES (1, 'Royale', 9.5);
INSERT INTO `ocpizzas`.`produit` (`id`, `nom`, `prix`) VALUES (2, 'Rambo', 10.5);
INSERT INTO `ocpizzas`.`produit` (`id`, `nom`, `prix`) VALUES (3, 'Flamingo', 14.5);
INSERT INTO `ocpizzas`.`produit` (`id`, `nom`, `prix`) VALUES (4, 'Le Domingo', 12.5);
INSERT INTO `ocpizzas`.`produit` (`id`, `nom`, `prix`) VALUES (5, '4 Fromages', 11.5);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`ingredient`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (1, 'sauce tomate', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (2, 'mozzarella', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (3, 'jambon', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (4, 'champignons', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (5, 'viande hache', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (6, 'oeuf', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (7, 'crème fraiche', 'centilitre');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (8, 'oignons', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (9, 'chevre', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (10, 'chorizo', 'tranches');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (11, 'merguez', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (12, 'poivron', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (13, 'miel', 'gramme');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (14, 'sauce barbecue', 'litre');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (15, 'lardon', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (16, 'raclette', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (17, 'pommes de terre', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (18, 'framboise', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (19, 'boeuf', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (20, 'cheddar', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (21, 'kebab', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (22, 'sauce kebab', 'litre');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (23, 'andouille', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (23, 'camembert', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (25, 'saumon', 'tranche');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (26, 'creme d\'ail', 'litre');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (27, 'fine herbe', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (28, 'noix de saint jacques', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (29, 'jambon serrano', 'tranche');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (30, 'mix pousses de salade', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (31, 'persillade', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (32, 'tranches tomates', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (33, 'coeur d\'artichauts', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (34, 'ruban courgettes', 'grammes');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (35, 'olives', 'unite');
INSERT INTO `ocpizzas`.`ingredient` (`id`, `nom`, `mesure`) VALUES (36, 'emmental', 'grammes');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`stock_ingredient`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 1, 2000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 2, 2000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 3, 1500);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 4, 1500);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 5, 2000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 6, 50);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 7, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 8, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 9, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 10, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 11, 700);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 12, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 13, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 14, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 15, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 16, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 17, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 18, 1000);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 19, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 20, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 21, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 22, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 23, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (1, 24, DEFAULT);
INSERT INTO `ocpizzas`.`stock_ingredient` (`pizzeria_id`, `ingredient_id`, `quantite`) VALUES (&, 25, DEFAULT);

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
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (3, 28, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (3, 29, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (3, 30, 50);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (4, 16, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (4, 11, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (4, 7, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (4, 2, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (4, 36, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (5, 32, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (5, 33, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (5, 12, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (5, 34, 100);
INSERT INTO `ocpizzas`.`aide_memoire` (`produit_id`, `ingredient_id`, `quantite`) VALUES (5, 35, 100);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`ligne_commande`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`ligne_commande` (`produit_id`, `commande_id`) VALUES (1, 1);
INSERT INTO `ocpizzas`.`ligne_commande` (`produit_id`, `commande_id`) VALUES (2, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`permission`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (1, 'preparer commande');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (2, 'livrer commande');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (3, 'consulter stock_ingredient');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (4, 'consulter aide_memoire');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (5, 'consulter status commandes');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (6, 'creer le compte client');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (7, 'authentifer');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (8, 'payer la commande');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (9, 'annuler la commande');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (10, 'suivre avancée de la commande');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (11, 'receptionner la commande');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (12, 'créer le compte pizzaiollo');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (13, 'créer le compte livreur');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (14, 'receptionner le paiement');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (15, 'modifier la commande');
INSERT INTO `ocpizzas`.`permission` (`id`, `nom`) VALUES (16, 'passer commande');

COMMIT;


-- -----------------------------------------------------
-- Data for table `ocpizzas`.`profil_permission`
-- -----------------------------------------------------
START TRANSACTION;
USE `ocpizzas`;
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (1, 7);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (1, 11);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (1, 3);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (2, 7);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (2, 4);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (2, 12);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (2, 13);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (3, 7);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (3, 14);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (3, 2);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (4, 7);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (4, 16);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (4, 8);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (4, 15);
INSERT INTO `ocpizzas`.`profil_permission` (`profil`, `permission`) VALUES (4, 10);

COMMIT;

