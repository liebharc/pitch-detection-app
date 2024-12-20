# Makefile to build wasm, build the visualization, and start the app

.PHONY: all build-wasm build-visualization start-app clean

# Default target
all: build-wasm build-visualization start-app

# Step 1: Build wasm
build-wasm:
	cd wasm && wasm-pack build --target web

# Step 2: Build the visualization
build-visualization:
	cd display && npm install && npm run build

# Step 3: Start the app
start-app:
	cd client && npm install && npm run start

# Clean up (optional)
clean:
	rm -rf node_modules
	rm -rf client/node_modules
	rm -rf display/node_modules
