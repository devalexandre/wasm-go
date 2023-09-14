package main

import (
	"fmt"
	"log"
	"net/http"
)

func main(){
	port :=3000
	directory:= "./dist"

	http.Handle("/",http.StripPrefix("/",http.FileServer(http.Dir(directory))))

	fmt.Println("Server listen http://localhost:3000")

	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%v",port),nil))
}
