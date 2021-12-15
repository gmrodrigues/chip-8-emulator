INCLUDES= -I ./include  
LIBS:= $(shell sdl2-config  --libs) -L ./lib
FLAGS:=$(shell sdl2-config --cflags) -g -fdiagnostics-color=always

OBJECTS=./build/chip8memory.o

all: ${OBJECTS}
	gcc ${FLAGS}  ${INCLUDES} ./src/main.c   ${OBJECTS}  -o ./bin/main  ${LIBS}

clean:
	rm build/* bin/*

run: all
	./bin/main

dirs:
	mkdir -p ./build ./bin

./build/chip8memory.o:./src/chip8memory.c dirs
	gcc ${FLAGS} ${INCLUDES} ./src/chip8memory.c -c -o ./build/chip8memory.o