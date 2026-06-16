# peachy 🍑

A small terminal text editor I'm writing in C from scratch — no ncurses, just
raw mode and vt100/ANSI escape sequences. It's a learning project on the way
toward systems/kernel work, so it grows a bit at a time.

It opens, edits and saves files, shows a status bar, has incremental search and
syntax highlighting for C and JavaScript.

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
- Status bar and transient message line
- Incremental search (step matches with the arrow keys)
- Syntax highlighting for C and JavaScript

Up next: line numbers, go-to-line, and some nano-style habits.

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

| Key                                | Action                              |
| ---------------------------------- | ----------------------------------- |
| Arrow keys                         | move the cursor                     |
| Home / End                         | jump to start / end of line         |
| PageUp / PageDown                  | move up / down a screen             |
| Backspace / Delete / Enter         | edit text                           |
| `Ctrl-S`                           | save                                |
| `Ctrl-F`                           | find (arrows step between matches)  |
| `Ctrl-Q`                           | quit                                |
