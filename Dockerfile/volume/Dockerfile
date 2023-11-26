FROM golang:1.18-alpine

ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app
COPY main.go app

#Ini sebagai dokumentasi jika port di dalam container yang digunakan adalah 8080 untuk menjalankan web go nya
EXPOSE ${APP_PORT}
#Ini sama aja kayak EXPOSE 8080/tcp

VOLUME ${APP_DATA}

CMD go run app/main.go