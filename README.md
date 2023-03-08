# coconut
Task manager


Flutter app to manage tasks

# Database
For connecting to a local database

* Start the server: System Preferences -> MySQL -> Start MySQL Server
* Add to mysql to path:
```
echo $PATH
export PATH=$PATH:/usr/local/mysql/bin
mysql --version
```
* Create coconut database and a task table
```
mysql -u root -p
CREATE DATABASE coconut;
CREATE TABLE `coconut`.`task`(`id` binary(16) NOT NULL,
	`name` VARCHAR(255) NOT NULL,
	`checked` bit(1) NOT NULL,
	PRIMARY KEY (`id`));
```
Use ports: 3306:3306 to map database port to localhost
Remove database container to delete all data

# Coconut tasks api

Create new coconut-tasks service image

```
cd coconut-tasks
mvn clean package spring-boot:repackage
docker build -t yukakyushima/coconut-tasks:1.0 .
```

Run container
```
docker run -p 8080:8080 -d yukakyushima/coconut-tasks:1.0
```

Access on localhost:8080

Stop container
```
docker stop <container-id>
```

Use docker compose
```
cd ..
docker-compose up -d
```

Stop it
```
docker-compose down
```

