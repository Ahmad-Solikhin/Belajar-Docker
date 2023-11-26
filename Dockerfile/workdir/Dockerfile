FROM golang:1.18-alpine

#Dengan demikian semua instruksi selanjutnya setalh WORKDIR adalah dilokasi /app
WORKDIR /app
COPY main.go /app

EXPOSE 8080

#Karena workdir sudah di app, maka tidak perlu menyebutkan CMD go run app/main.go
CMD go run main.go