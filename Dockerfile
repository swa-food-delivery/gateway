FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} gateway.jar
ENTRYPOINT ["java", "-jar", "/gateway.jar"]

LABEL org.label-schema.name="gateway"
LABEL org.label-schema.description="Docker image for gateway"
LABEL org.label-schema.docker.cmd="docker run --network='host' gateway"