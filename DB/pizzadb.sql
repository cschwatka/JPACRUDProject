-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pizzadb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pizzadb` ;

-- -----------------------------------------------------
-- Schema pizzadb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pizzadb` DEFAULT CHARACTER SET utf8 ;
USE `pizzadb` ;

-- -----------------------------------------------------
-- Table `pizza`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pizza` ;

CREATE TABLE IF NOT EXISTS `pizza` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` VARCHAR(500) NULL,
  `size` VARCHAR(20) NULL,
  `crust` VARCHAR(20) NULL,
  `cheese` VARCHAR(20) NULL,
  `meat` VARCHAR(45) NULL,
  `vegetable` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS pizza@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'pizza'@'localhost' IDENTIFIED BY 'pizza';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'pizza'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `pizza`
-- -----------------------------------------------------
START TRANSACTION;
USE `pizzadb`;
INSERT INTO `pizza` (`id`, `name`, `description`, `size`, `crust`, `cheese`, `meat`, `vegetable`) VALUES (1, 'Pepperoni Pizza', 'Your choice of crust covered with our signature pizza sauce, real cheese made from mozzarella, and pepperoni. ', 'Large', 'Original Crust', 'Normal Cheese', 'Pepperoni', NULL);
INSERT INTO `pizza` (`id`, `name`, `description`, `size`, `crust`, `cheese`, `meat`, `vegetable`) VALUES (2, 'Sausage Pizza', 'Our signature pizza sauce layered with sausage and real cheese made from mozzarella for a taste you’ll crave. Your choice of crust.', 'Medium', 'Thin Crust', 'Extra Cheese', 'Sausage', NULL);
INSERT INTO `pizza` (`id`, `name`, `description`, `size`, `crust`, `cheese`, `meat`, `vegetable`) VALUES (3, 'Cheese Pizza', 'Simple, yet simply delicious. Real cheese made from mozzarella on top of our signature pizza sauce with your choice of crust, then baked to a golden brown.', 'Small', 'Original Crust', 'Normal Cheese', NULL, NULL);
INSERT INTO `pizza` (`id`, `name`, `description`, `size`, `crust`, `cheese`, `meat`, `vegetable`) VALUES (4, 'The Works Pizza', 'It’s everything you want on a pizza – and then some. A heaping helping of pepperoni, julienne-cut Canadian bacon, spicy Italian sausage, fresh-cut onions, crisp green peppers, mushrooms, ripe black olives, and real cheese made from mozzarella.', 'Large', 'Original Crust', 'Normal Cheese', NULL, NULL);

COMMIT;

