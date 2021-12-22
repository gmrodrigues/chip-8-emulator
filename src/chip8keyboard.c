#include "chip8keyboard.h"
#include <stdio.h>
#include <assert.h>

static void chip8_keyboard_ensure_in_bounds(int key)
{
    assert(key >= 0 && key < CHIP8_TOTAL_KEYBOARD_KEYS);
}

int chip8_keyboard_map(const char *map, char key)
{
    for (int i = 0; i < CHIP8_TOTAL_KEYBOARD_KEYS; i++)
    {
        if (map[i] == key)
        {
            printf("map %c -> %c (%i)\n", key, map[i], i);
            return i;
        }
    }

    printf("miss\n");
    return -1;
}

void chip8_keyboard_down(struct chip8_keyboard *keyboard, int key)
{
    keyboard->keyboard[key] = true;
}

void chip8_keyboard_up(struct chip8_keyboard *keyboard, int key)
{
    keyboard->keyboard[key] = true;
}

bool chip8_keyboard_is_down(struct chip8_keyboard *keyboard, int key)
{
    return keyboard->keyboard[key];
}