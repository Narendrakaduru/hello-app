FROM mdsol/java17-jre:latest
ADD target/hello-app-0.0.1-SNAPSHOT.jar hello-app.jar
EXPOSE 6701
ENTRYPOINT ["java","-jar","hello-app.jar","&"]