CREATE DATABASE ytera_connections;

CREATE USER 'ytera'@'%' IDENTIFIED BY 'manage';
GRANT ALL ON ytera_connections.* TO 'ytera'@'%';

USE ytera_connections;

DROP TABLE IF EXISTS `ship_types`;
CREATE TABLE `ship_types`(
  `id` integer UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text,
  `commercial_name` text,
  `description` text,
  `model_release_date` datetime,
  `engine_type` text,
  `max_speed_kms` double,
  `avg_speed_kms` double,
  `power_source` text,

  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `ships`;
CREATE TABLE `ships` (
  `id` integer UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text,
  `ship_type_id` integer UNSIGNED,
  `build_date` datetime,
  `first_use_date` datetime,
  `last_maintenance` datetime,
  `scob_id` integer UNSIGNED,

  PRIMARY KEY (`id`),
  FOREIGN KEY (`ship_type_id`) REFERENCES `ship_types`(`id`)
);

DROP TABLE IF EXISTS `spaceports`;
CREATE TABLE `spaceports`(
  `id` integer UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text,
  `space_region` text,
  `unified_coordinates` text,
  `local_address` text,

  PRIMARY KEY (`id`)
);
/*
DROP TABLE IF EXISTS `routes`;
CREATE TABLE `routes`(
  `id` integer UNSIGNED NOT NULL AUTO_INCREMENT,
  `departure_spaceport_id` integer UNSIGNED,
  `destination_spaceport_id` integer UNSIGNED,
  `code` text,
  `stops` integer,
  `expected_travel_time` time,

  PRIMARY KEY (`id`),
  FOREIGN KEY (`departure_spaceport_id`) REFERENCES `spaceports`(`id`),
  FOREIGN KEY (`destination_spaceport_id`) REFERENCES `spaceports`(`id`)
);

*/

DROP TABLE IF EXISTS `connections`;
CREATE TABLE `connections` (
  `id` integer NOT NULL AUTO_INCREMENT,
  `departure_spaceport_id` integer UNSIGNED,
  `destination_spaceport_id` integer UNSIGNED,
  `checkin_time` datetime,
  `departure_time` datetime,
  `status` text,
  `ship_id` integer UNSIGNED,

  PRIMARY KEY (`id`),
  FOREIGN KEY (`departure_spaceport_id`) REFERENCES `spaceports`(`id`),
  FOREIGN KEY (`destination_spaceport_id`) REFERENCES `spaceports`(`id`),
  FOREIGN KEY (`ship_id`) REFERENCES `ships`(`id`)
);
