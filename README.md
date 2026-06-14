# peachy 🍑

A small terminal text editor I'm writing in C from scratch — no ncurses, just
raw mode and vt100/ANSI escape sequences. It's a learning project on the way
toward systems/kernel work, so it grows a bit at a time.

It can now open a file, let you edit it, and save it back. Niceties like a
status bar, search and syntax highlighting are next.

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
- Open, edit and save files
- Tab-aware rendering, vertical and horizontal scrolling

Up next: a status bar, incremental search, then syntax highlighting.

## Build

Needs a C compiler and `make`.

```sh
make        # build ./peachy
make run    # build and run
make clean  # remove the binary
```

## Usage

```sh
./peachy            # start with an empty buffer
./peachy file.c     # open a file
```

## Keybindings

| Key                                | Action                       |
| ---------------------------------- | ---------------------------- |
| Arrow keys                         | move the cursor              |
| Home / End                         | jump to start / end of line  |
| PageUp / PageDown                  | move up / down a screen      |
| Backspace / Delete / Enter         | edit text                    |
| `Ctrl-S`                           | save                         |
| `Ctrl-Q`                           | quit                         |
