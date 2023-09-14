#create build wasm

init:
	@cp "$(shell go env GOROOT)/misc/wasm/wasm_exec.js" ./dist/wasm_exec.js

build: 
	GOOS=js GOARCH=wasm go build -o ./dist/app.wasm ./wasm/main.go

run: clean  init build
	go run ./server/main.go

clean:
	rm -rf ./dist/app.wasm ./dist/wasm_exec.js
