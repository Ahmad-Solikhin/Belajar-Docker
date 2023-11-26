FROM golang:1.18-alpine

RUN apk --no-cache add curl

RUN mkdir app
COPY main.go app

#Ini sebagai dokumentasi jika port di dalam container yang digunakan adalah 8080 untuk menjalankan web go nya
EXPOSE 8080
#Ini sama aja kayak EXPOSE 8080/tcp

HEALTHCHECK --interval=5s --start-period=5s CMD curl -f http://localhost:8080/health
CMD go run app/main.go