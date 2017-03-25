CREATE TABLE `employee`(
	`key_employee` INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT UNIQUE,
	`full_name` VARCHAR(255) NOT NULL,
	`INN` INT(15) NOT NULL,
	`position` VARCHAR(255) NOT NULL,
	`birthday` DATE NOT NULL,
	`children` TINYINT UNSIGNED NOT NULL,
	`education` VARCHAR(255) NOT NULL,
	`sex` BOOL NOT NULL				# 0 — male, 1 — female
);
