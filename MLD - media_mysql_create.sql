CREATE TABLE `Clients` (
	`ID_client` INT NOT NULL UNIQUE,
	`Nom` TEXT NOT NULL,
	`Prenom` TEXT NOT NULL,
	`Age` INT,
	`Mail` VARCHAR(255) NOT NULL,
	`motsdepasse` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`ID_client`)
);

CREATE TABLE `Films` (
	`ID_film` INT NOT NULL,
	`Nom` VARCHAR(255) NOT NULL,
	`Synopsis` TEXT NOT NULL,
	`Duree` INT NOT NULL,
	`Genre` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`ID_film`)
);

CREATE TABLE `Réservations` (
	`ID_reservation` INT NOT NULL,
	`ID_client` INT NOT NULL,
	`Seance` INT NOT NULL,
	`Prix` INT NOT NULL,
	`Nombre achetées` INT NOT NULL,
	`catégorie des places` INT NOT NULL,
	PRIMARY KEY (`ID_reservation`)
);

CREATE TABLE `musique` (
	`ID_Cd` INT NOT NULL,
	`Nom` VARCHAR(255) NOT NULL,
	`genre` VARCHAR(255) NOT NULL
);

ALTER TABLE `Clients` ADD CONSTRAINT `Clients_fk0` FOREIGN KEY (`ID_client`) REFERENCES `Réservations`(`ID_reservation`);

ALTER TABLE `Films` ADD CONSTRAINT `Films_fk0` FOREIGN KEY (`ID_film`) REFERENCES ``(``);

ALTER TABLE `Réservations` ADD CONSTRAINT `Réservations_fk0` FOREIGN KEY (`ID_reservation`) REFERENCES `Films`(`ID_film`);

ALTER TABLE `Réservations` ADD CONSTRAINT `Réservations_fk1` FOREIGN KEY (`ID_client`) REFERENCES `musique`(`ID_Cd`);

