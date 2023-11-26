FROM golang:1.18-alpine

RUN mkdir app

COPY main.go app

#Ini sebagai dokumentasi jika port di dalam container yang digunakan adalah 8080 untuk menjalankan web go nya
EXPOSE 8080
#Ini sama aja kayak EXPOSE 8080/tcp

ENTRYPOINT ["go", "run"]

#karen diatas ada entrypoint, jatohnya nanti go run app/main.go
CMD ["app/main.go"]