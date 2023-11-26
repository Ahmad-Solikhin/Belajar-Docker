#docker buil -t imageNam:tag file
docker build -t ahmadsgr39/from from

docker build -t ahmadsgr39/run run

#Menampilkan output dan tanpa cache
docker build --no-cache -t ahmadsgr39/run run --progress=plain

#CMD
docker build -t ahmadsgr39/command command

docker image inspect ahmadsgr39/command:latest

docker container create --name command ahmadsgr39/command:latest

docker build -t ahmadsgr39/add add

docker build -t ahmadsgr39/copy copy

docker build -t ahmadsgr39/ignore ignore

docker build -t ahmadsgr39/expose expose

docker build -t ahmadsgr39/env env

docker container create --name env --env APP_PORT=9092 -p 9919:9092 ahmadsgr39/env

docker build -t ahmadsgr39/volume volume

docker container create --name volume --env APP_PORT=9092 -p 9919:9092 ahmadsgr39/volume

docker build -t ahmadsgr39/workdir workdir

docker container create --name workdir -p 9919:8080 ahmadsgr39/workdir

docker build -t ahmadsgr39/user user

docker container create --name user -p 9919:8080 ahmadsgr39/user

docker build -t ahmadsgr39/arg arg --build-arg app=gayuh

docker build -t ahmadsgr39/health health

#Check health dari container
docker container inspect health

docker build -t ahmadsgr39/entrypoint entrypoint

docker build -t ahmadsgr39/multistage multistage

