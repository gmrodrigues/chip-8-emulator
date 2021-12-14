#!/bin/bash
set -xe
gcc-11 $(sdl2-config --cflags)   -fdiagnostics-color=always -g ./src/main.c   -o ./bin/main $(sdl2-config  --libs) 