FROM openjdk:17-jdk-alpine

EXPOSE 8080

RUN addgroup -S spring && adduser -S spring -G spring

USER spring:spring

ARG JAR_FILE=target/*jar
COPY ${JAR_FILE} api.jar

ENTRYPOINT ["java","-Xms128M","-Xmx128M","-Dspring.profiles.active=prod","-jar","/api.jar"]