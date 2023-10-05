FROM mdsol/java17-jre:latest
COPY target/hello-app.jar hello-app.jar
EXPOSE 6701
ENTRYPOINT ["java","-jar","hello-app.jar","&"]