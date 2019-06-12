# dotfiles

## Description

Use GNU Stow to farm out symlinks that configure useful tools.

The goal of this setup is to maximize utility and portability,
while minimizing configuration.

| Function                | Tool                                      |
|-------------------------|-------------------------------------------|
| Terminal emulator       | [kitty](https://sw.kovidgoyal.net/kitty/) |
| Interactive shell       | [fish](https://fishshell.com/)            |
| Text editor             | [neovim](https://neovim.io/)              |
| Programming environment | [emacs](https://gnu.org/software/emacs/)  |

## Install

### Requirements

* A UNIX-like environment
* [GNU Make](https://www.gnu.org/software/make/)
* [GNU Stow](https://www.gnu.org/software/stow/)

### Instructions

| Command                   | Action                                             |
|---------------------------|----------------------------------------------------|
| `$ make` or `$ make test` | test install (no filesystem changes)               |
| `$ make install`          | install configurations into your `$HOME` directory |
| `$ make uninstall`        | uninstall configurations (remove symlinks)         |
| `$ make reinstall`        | reinstall configurations                           |

**Note**: Install the patched fonts (ZIP archive under `~/.config/fonts`) before running kitty.
