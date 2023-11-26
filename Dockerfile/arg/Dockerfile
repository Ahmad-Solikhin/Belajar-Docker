FROM golang:1.18-alpine

#Ini default valuenya main, kalo mau gadikasih juga bisa ges
ARG app=main

RUN mkdir app
COPY main.go app
RUN mv app/main.go app/${app}.go

#Ini sebagai dokumentasi jika port di dalam container yang digunakan adalah 8080 untuk menjalankan web go nya
EXPOSE 8080
#Ini sama aja kayak EXPOSE 8080/tcp

#CMD go run /app/${app}.go : ini salah karena app itu argument dan hanya bisa digunakan ketika build
#karena CMD itu jalan ketika container distart maka akan error, solusinya ARG nya dioper ke ENV, sehingga bisa tetap digunakan setelah build
ENV app=${app}
CMD go run app/${app}.go