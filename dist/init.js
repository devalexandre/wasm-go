(async () => {
	const go = new Go();

	WebAssembly.instantiateStreaming(fetch('app.wasm'),
		go.importObject).then(async (result) => {

			const wasmInstance = result.instance;

			go.run(wasmInstance);

		});
})();
