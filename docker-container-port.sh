docker image pull nginx:latest

docker container create --name contohnginx --publish 80:80 nginx:latest #--publish bisa diganti jadi -p