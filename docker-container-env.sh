#Example
docker container create --name contohmongo --publish 27017:27017 --env MONO_INIT_ROOT_USERNAME=mongo --env MONGO_INIT_ROOT_PASSWORD=root mongo:latest
#Pada contoh diatas dapat dilihat kalo command tersebut mengirim 2 env yaitu root username dan root password, di mongo kedua env ini wajib digunakan