docker network create --driver bridge mongonetwork

docker create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=mongo --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

docker create --name mongoexpress --network mongonetwork -p 8789:8081 --env ME_CONFIG_MONGODB_URL="mongodb://mongo:root@mongodb:27017/" mongo-express:latest

docker network disconnect mongonetwork mongodb #Untuk menghapus container dari network\

docker network connect mongonetwork mongodb #Menambahkan container lagi ke container