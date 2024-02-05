This is a Hello API controller running on port 6701
url --> http://ip:6701/hello

Assume that you are having two microservices in our case it is...
1.hello-app and 
2.listen-app in my repo.
hello-app will run on port 6701 in /hello route and
listen-app will run on port 6702 in /listen route.

we will be passing this hello-app and listen-app as a prameter from our jenkins to clone the repository such that it will be useful when we need to integrate a new microservice comesup to our project.

this repo consists of 5 jenkins files of diffrent types of deployments.
Jenkinsfile-1 consists of simple jar deployment with a shellscript.
Jenkinsfile-2 consists of service deploymet here we will be writing a service file or unit file to deploy our jar file

| JAR Deployment | Service Deployment |
| -------------- | ------------------ |
| If the server goes down or if we need to restart the server then after the server is up the jar will not be in the running state.	| If we create a servicefile or unit file to manage this jar file it will be started automatically when the server starts. |
