INCLUDES= -I ./include  
LIBS:= $(shell sdl2-config  --libs) -L ./lib
FLAGS:=$(shell sdl2-config --cflags) -g -fdiagnostics-color=always

OBJECTS=

all:
	gcc $(FLAGS)  ./src/main.c   -I ./include   -o ./bin/main  $(LIBS)

run: all
	./bin/main