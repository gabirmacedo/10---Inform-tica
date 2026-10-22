-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Site_de_Mangás
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Site_de_Mangás
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Site_de_Mangás` DEFAULT CHARACTER SET utf8 ;
USE `Site_de_Mangás` ;

-- -----------------------------------------------------
-- Table `Site_de_Mangás`.`vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Site_de_Mangás`.`vendedor` (
  `nif_vendedor` VARCHAR(9) NOT NULL,
  `nome_vendedor` VARCHAR(75) NOT NULL,
  `email_vendedor` VARCHAR(55) NOT NULL,
  PRIMARY KEY (`nif_vendedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Site_de_Mangás`.`manga`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Site_de_Mangás`.`manga` (
  `idmanga` INT NOT NULL AUTO_INCREMENT,
  `nome_manga` VARCHAR(45) NOT NULL,
  `autor` VARCHAR(65) NOT NULL,
  `tipo_manga` VARCHAR(20) NOT NULL,
  `faixa_etaria` VARCHAR(2) NOT NULL,
  `preco` DOUBLE NOT NULL,
  `nif_vendedor` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`idmanga`),
  INDEX `nifvendedor_idx` (`nif_vendedor` ASC) VISIBLE,
  CONSTRAINT `fk_nifvendedor`
    FOREIGN KEY (`nif_vendedor`)
    REFERENCES `Site_de_Mangás`.`vendedor` (`nif_vendedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Site_de_Mangás`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Site_de_Mangás`.`cliente` (
  `nif_cliente` VARCHAR(9) NOT NULL,
  `nome_cliente` VARCHAR(75) NOT NULL,
  `Dat_de_Nasc` DATE NULL,
  `email_cliente` VARCHAR(55) NOT NULL,
  `login` VARCHAR(30) NOT NULL,
  `password` VARCHAR(30) NOT NULL,
  `morada` VARCHAR(70) NULL,
  PRIMARY KEY (`nif_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Site_de_Mangás`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Site_de_Mangás`.`compra` (
  `idcompra` INT NOT NULL AUTO_INCREMENT,
  `nif_cliente` VARCHAR(9) NOT NULL,
  `data` DATE NOT NULL,
  `modo_de_entrega` VARCHAR(15) NOT NULL,
  `forma_de_pagamento` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`idcompra`),
  INDEX `nifcliente_idx` (`nif_cliente` ASC) VISIBLE,
  CONSTRAINT `fk_nifcliente`
    FOREIGN KEY (`nif_cliente`)
    REFERENCES `Site_de_Mangás`.`cliente` (`nif_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Site_de_Mangás`.`manga_compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Site_de_Mangás`.`manga_compra` (
  `idcompra` INT NOT NULL,
  `idmanga` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  PRIMARY KEY (`idcompra`, `idmanga`),
  INDEX `fk_idmanga_idx` (`idmanga` ASC) VISIBLE,
  CONSTRAINT `fk_idcompra`
    FOREIGN KEY (`idcompra`)
    REFERENCES `Site_de_Mangás`.`compra` (`idcompra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idmanga`
    FOREIGN KEY (`idmanga`)
    REFERENCES `Site_de_Mangás`.`manga` (`idmanga`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
