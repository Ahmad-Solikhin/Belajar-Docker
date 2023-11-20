
C:\Users\Gayuh\Documents\Belajar Docker\backup

#buat container dengan image bebas sebagai bantuan backup
docker container create --name nginxbackup --mount "type=bind,source=C:\Users\Gayuh\Documents\Belajar Docker\backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" nginx:latest

docker exec -it nginxbackup bash

#Untuk melakukan archive bisa memakai bantuan tar.gz atau zip
tar cvf /backup/backup.tar.gz /data #Path pertama destinasi, path kedua folder mana yang mau di backup

docker rm -f nginxbackup

#cara langsung, image yang digunakan adalah image yang akan langsung berhenti ketika dijalankan seperti os linux alpine dan ubuntu
docker container run --rm --name alpine --mount "type=bind,source=C:\Users\Gayuh\Documents\Belajar Docker\backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" alpine:latest tar cvf /backup/backup2.tar.gz /data


#Backup postgres online-test to another volume
docker container run --rm --name alpine-backup --mount "type=bind,source=C:\Users\Gayuh\Documents\Belajar Docker\backup-postgres,destination=/backup" --mount "type=volume,source=17bf53b71551befdbe5fbd9d461a343743541af9f0ea560d1e0a7718bfd4c17a,destination=/data" alpine:latest tar cvf /backup/online-test.tar.gz /data