package main

import (
    "fmt"
    "net/http"
)

func main() {
    http.HandleFunc("/", HelloServer)
    fmt.Println("Starting docker in port 8080")
    http.ListenAndServe(":8080", nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
    fmt.Println("Accessing default path")
    fmt.Fprintf(w, "Hello, World!")
}