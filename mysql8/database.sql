CREATE TABLE `coconut`.`task`(`id` binary(16) NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`checked` bit(1) NOT NULL,
	PRIMARY KEY (`id`));
GRANT ALL PRIVILEGES ON *.* TO 'coconut'@'%';
FLUSH PRIVILEGES;
