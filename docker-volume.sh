docker volume ls #Melihat list volume
docker volume prune #Hapus semua volume yang tidak digunakan
docker volume create mongovolume #membuat volume
docker volume rm mongovolume #hapus docker volume sesuai dengan nama volume

docker container create --name mongovolume --publish 27017:27017 --mount "type=volume,source=mongovolume,destination=/data/db" --env MONO_INIT_ROOT_USERNAME=mongo --env MONGO_INIT_ROOT_PASSWORD=root mongo:latest