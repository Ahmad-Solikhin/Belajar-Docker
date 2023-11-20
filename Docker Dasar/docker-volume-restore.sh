docker volume create mongovolumerestore

docker run --rm --name alpinerestore --mount "type=bind,source=C:\Users\Gayuh\Documents\Belajar Docker\backup,destination=/backup" --mount "type=volume,source=mongovolumerestore,destination=/data" alpine:latest sh -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

docker run --name mongorestore --publish 27018:27017 --mount "type=volume,source=mongovolumerestore,destination=/data/db" --env MONO_INITDB_ROOT_USERNAME=mongo --env MONO_INITDB_ROOT_PASSWORD=root mongo:latest