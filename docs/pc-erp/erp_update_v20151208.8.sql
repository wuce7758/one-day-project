-- MySQL Workbench Synchronization
-- Generated: 2015-12-08 21:43
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: mays

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE TABLE IF NOT EXISTS `pc-erp`.`everyday` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `gmt_created` DATETIME NULL DEFAULT NULL,
  `gmt_modified` DATETIME NULL DEFAULT NULL,
  `wx_openid` VARCHAR(45) NOT NULL DEFAULT '',
  `url` VARCHAR(2000) NULL DEFAULT '',
  `content` LONGTEXT NULL DEFAULT NULL,
  `tags` VARCHAR(250) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `idx_wx_openid` (`wx_openid` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
