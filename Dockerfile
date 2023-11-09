FROM alpine:latest
RUN apk --no-cache add openjdk17-jdk
EXPOSE 6701
COPY target/hello-app-0.0.1-SNAPSHOT.jar /app/hello-app.jar
WORKDIR /app
ENTRYPOINT ["java", "-jar", "hello-app.jar"]