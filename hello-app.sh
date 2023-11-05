#!/bin/bash
echo "########################## Check if hello-app is running or not ##########"
ps -ef | grep hello-app.jar
echo "########################## Kill running hello-app ########################"
pkill -f hello-app.jar
echo "Killed hello-app"
sleep 5s
echo "########################## Check if hello-app is running or not ##########"
ps -ef | grep hello-app.jar
echo "########################## Take Backup of old jar ########################"
mv /app/hello-app/release/hello-app.jar /app/hello-app/backup
echo "Backup completed successfully"
echo "########################## Move to jar to Release ########################"
mv /app/hello-app/staging/hello-app.jar /app/hello-app/release
echo "JAR moved to release"
echo "########################## Deploy hello-app ##############################"
java -jar /app/hello-app/release/hello-app.jar &
echo "Successfully deployed hello-app"
echo "########################## Check if hello-app is running or not ##########"
ps -ef | grep hello-app.jar