FROM openjdk:8-alpine

EXPOSE 8083
WORKDIR /usr/src/app

ENV SERVER_PORT=8083
ENV JWT_SECRET=PRFT
ENV SPRING_ZIPKIN_BASE_URL=http://192.168.55.8:9411

COPY pom.xml mvnw ./
COPY .mvn/ ./.mvn

COPY . .


CMD ["java", "-jar", "./target/users-api-0.0.1-SNAPSHOT.jar"]

