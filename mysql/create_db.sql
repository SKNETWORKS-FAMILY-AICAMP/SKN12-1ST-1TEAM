-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema car_project
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema car_project
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `car_project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `car_project` ;

-- -----------------------------------------------------
-- Table `car_project`.`brand`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_project`.`brand` (
  `brand_id` INT NOT NULL AUTO_INCREMENT,
  `brand_name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `car_project`.`brand_sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_project`.`brand_sales` (
  `sales_brand_id` INT NOT NULL,
  `sales_year` INT NULL DEFAULT NULL,
  PRIMARY KEY (`sales_brand_id`),
  CONSTRAINT `sales_brand_id`
    FOREIGN KEY (`sales_brand_id`)
    REFERENCES `car_project`.`brand` (`brand_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `car_project`.`faq`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_project`.`faq` (
  `faq_brand_id` INT NOT NULL,
  `question` VARCHAR(100) NULL DEFAULT NULL,
  `answer` VARCHAR(1000) NULL DEFAULT NULL,
  INDEX `faq_brand_id` (`faq_brand_id` ASC) VISIBLE,
  CONSTRAINT `faq_brand_id`
    FOREIGN KEY (`faq_brand_id`)
    REFERENCES `car_project`.`brand` (`brand_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `car_project`.`model`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_project`.`model` (
  `model_brand_id` INT NOT NULL,
  `model_id` INT NOT NULL,
  `model_name` VARCHAR(45) NULL DEFAULT NULL,
  `detail` VARCHAR(100) NULL DEFAULT NULL,
  `price` INT NULL DEFAULT NULL,
  `image` VARCHAR(200) NULL,
  PRIMARY KEY (`model_id`, `model_brand_id`),
  INDEX `model_brand_id_idx` (`model_brand_id` ASC) VISIBLE,
  CONSTRAINT `model_brand_id`
    FOREIGN KEY (`model_brand_id`)
    REFERENCES `car_project`.`brand` (`brand_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `car_project`.`model_sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `car_project`.`model_sales` (
  `sales_model_id` INT NOT NULL,
  `month` INT NULL DEFAULT NULL,
  `sales_month` INT NULL DEFAULT NULL,
  INDEX `sales_model_id` (`sales_model_id` ASC) VISIBLE,
  CONSTRAINT `sales_model_id`
    FOREIGN KEY (`sales_model_id`)
    REFERENCES `car_project`.`model` (`model_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
