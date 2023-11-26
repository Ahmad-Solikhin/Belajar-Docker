FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S asgrgroup
RUN adduser -S -D -h /app asgr asgrgroup
RUN chown -R asgr:asgrgroup /app

USER asgr

COPY main.go /app

#Ini sebagai dokumentasi jika port di dalam container yang digunakan adalah 8080 untuk menjalankan web go nya
EXPOSE 8080
#Ini sama aja kayak EXPOSE 8080/tcp

CMD go run /app/main.go