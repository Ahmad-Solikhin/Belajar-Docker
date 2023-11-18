#contohnya
docker container create --name mongodata --publish 27017:27017 --mount "type=bind,source=C:\Users\Gayuh\Documents\Belajar Docker\mongodata,destination=\data\db" --env MONO_INIT_ROOT_USERNAME=mongo --env MONGO_INIT_ROOT_PASSWORD=root mongo:latest
