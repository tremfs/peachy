# peachy 🍑

A small terminal text editor I'm writing in C from scratch — no ncurses, just
raw mode and vt100/ANSI escape sequences. It's a learning project on the way
toward systems/kernel work, so it grows a bit at a time.

Right now it's an early skeleton: it takes over the terminal, draws an empty
buffer and lets you move the cursor around. Opening and editing files come next.

Structure follows antirez's [kilo](https://github.com/antirez/kilo).

## Contents

- [Status](#status)
- [Build](#build)
- [Usage](#usage)
- [Keybindings](#keybindings)

## Status

Work in progress. Done so far:

- Raw-mode terminal handling (termios)
- Flicker-free full-screen drawing from a single buffer
- Cursor movement, sized to the terminal window

Up next: opening and editing files, then a status bar, search and syntax
highlighting.

## Build

Needs a C compiler and `make`.

```sh
make        # build ./peachy
make run    # build and run
make clean  # remove the binary
```

## Usage

```sh
./peachy
```

## Keybindings

| Key                 | Action                       |
| ------------------- | ---------------------------- |
| Arrow keys          | move the cursor              |
| Home / End          | jump to start / end of row   |
| PageUp / PageDown   | move up / down a screen      |
| Ctrl-Q              | quit                         |
