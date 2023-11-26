#Jadi ini adalah tahapan pertama menggunakan image go untuk melaklukan compile ke bianry file
#Jika lebih dari satu tahapan wajib menggunakan alias
FROM golang:1.18-alpine as builder
WORKDIR /app
COPY main.go .
#Perintah untuk melakukan compile kode go ke binary
RUN go build -o /app/main main.go

#Ini adalah tahapan kedua dimana menggunakan image alpine yang sangat kecil ukurannya
#Jadi nanti image terakhirnya akan dibuat dari tahap terakhir ini
FROM alpine:latest
WORKDIR /app
#Copy binary file dari hasil compile pada tahapan sebelumnya ke image yang sekarang
COPY --from=builder /app/main .
CMD /app/main