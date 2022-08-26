# NestJS Digital Ocean App Platform Sample

This is a super basic sample project showing how to host a NestJS project in digital ocean app platform using docker and their container registry.

It includes a script deploy.sh which shows how to build tag and upload your docker container to the DO container registry, a sample Dockerfile which shows you how to configure your docker container for NestJS, and a NestJS main.ts showing the correct configuration in terms of ports and hostname etc. 

Main gotchas during deployment were:
 - Do not set your server to listen to HTTPS, only HTTP. This is because DO handles encryption and passes traffic internally to your web server using HTTP.
 - You do not have to modify the hostname that NestJS binds to by default

# Usage 

- Create your container registry project in DO and update the deploy.sh script to use your project name and container name 
- Run deploy.sh to build and push your docker container 
- Create a new app platform project using DO container registry and your newly uploaded container as the source 
- Leave all the default settings as they are, however you can tweak the plan to use the cheapest basic plan as this is just a proof of concept project 
- After it has successfully built and deployed, I would recommend changing the health check to http "/" instead of TCP