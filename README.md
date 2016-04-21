# ose-nodejs-root-docker
A nodejs docker application to validate the root access for demo

docker build -t krsacme2/node-web-app .
docker login
docker push krsacme2/node-web-app

In order to validate the OSE environment for running privileged containers, a docker image with nodejs application is created. This docker application has to be run as privileged.

