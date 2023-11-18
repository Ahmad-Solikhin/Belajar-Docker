
C:\Users\Gayuh\Documents\Belajar Docker\backup

#buat container dengan image bebas sebagai bantuan backup
docker container create --name nginxbackup --mount "type=bind,source=C:\Users\Gayuh\Documents\Belajar Docker\backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" nginx:latest

docker exec -it nginxbackup bash

#Untuk melakukan archive bisa memakai bantuan tar.gz atau zip
tar cvf /backup/backup.tar.gz /data #Path pertama destinasi, path kedua folder mana yang mau di backup

docker rm -f nginxbackup

#cara langsung, image yang digunakan adalah image yang akan langsung berhenti ketika dijalankan seperti os linux alpine dan ubuntu
docker container run --rm --name alpine --mount "type=bind,source=C:\Users\Gayuh\Documents\Belajar Docker\backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" alpine:latest tar cvf /backup/backup2.tar.gz /data