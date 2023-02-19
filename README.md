# coconut
Task manager


Flutter app to manage tasks

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
``