# Materials for WebAssembly: Accessing C and C++ in Web Applications course

## Using Docker Compose

```sh
docker-compose up
emcc <input-filename.cpp> -o <output-filename.js>
docker-compose down
docker-compose rm
```

## Using Docker Imgage

```sh
# Linux
docker run --rm -v $(pwd)/src:/src -u $(id -u):$(id -g) emscripten/emsdk:2.0.14 emcc <input-filename.cpp> -o <output-filename.js>
docker run --rm -it -v $(pwd)/src:/src -u $(id -u):$(id -g) emscripten/emsdk:2.0.14 bash
emcc <input-filename.cpp> -o <output-filename.js>

# Windows
docker run --rm -v "$(pwd)/src:/src" emscripten/emsdk:2.0.14 emcc <input-filename.cpp> -o <output-filename.js>
docker run --rm -it -v "$(pwd)/src:/src" emscripten/emsdk:2.0.14 bash
emcc <input-filename.cpp> -o <output-filename.js>
```

## Build and Run code samples

```sh
emcc <input-filename.cpp> -o <output-filename.js>
```
