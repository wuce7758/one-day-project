SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

ALTER TABLE `pc-event`.`events` ADD COLUMN `location` VARCHAR(100) NULL DEFAULT NULL COMMENT '活动地点'  AFTER `pic_banner` , ADD COLUMN `location_mapx` VARCHAR(100) NULL DEFAULT NULL COMMENT '活动地点，地图信息'  AFTER `location` , ADD COLUMN `location_mapy` VARCHAR(100) NULL DEFAULT NULL COMMENT '活动地点，地图信息'  AFTER `location_mapx` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
