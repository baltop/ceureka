# docker build -t apim_eureka .
# docker run --rm -p 8761:8761 apim_eureka
FROM adoptopenjdk/openjdk11:alpine-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
