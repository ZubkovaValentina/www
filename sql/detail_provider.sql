CREATE TABLE `detail_provider` (
	`key_detail` int(10) NOT NULL,
	`key_provider` int(10) NOT NULL,
	FOREIGN KEY (`key_detail`) REFERENCES `detail`(`key_detail`),
	FOREIGN KEY (`key_provider`) REFERENCES `provider`(`key_provider`)

);
