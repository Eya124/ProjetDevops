#FROM eclipse-temurin:11-jdk-alpine
#VOLUME /tmp
#ARG JAR_FILE
#COPY ${JAR_FILE} /home/eya/code/ProjetDevops/target/SkiStationProject-0.0.1-SNAPSHOT.jar
#ENTRYPOINT ["java","-jar","/home/eya/code/ProjetDevops/target/SkiStationProject-0.0.1-SNAPSHOT.jar"]
FROM openjdk:11-jdk-slim
VOLUME /tmp
ARG JAR_FILE
COPY target/*.jar SkiStationProject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","SkiStationProject-0.0.1-SNAPSHOT.jar"]
