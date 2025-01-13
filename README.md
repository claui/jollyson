# Jollyson

## What is this?

Jollyson is a CLI tool for Linux that converts Joker files,
[Balatro](https://en.wikipedia.org/wiki/Balatro_(video_game))’s
serialization format, to JSON.

Examples of Joker files are `settings.jkr`, `meta.jkr`, and
`profile.jkr`.

## Why do I need this?

This tool will give you meaningful diff output if you manage your
Balatro save files and profiles using Git.

It plugs into Git’s
[textconv](https://git-scm.com/docs/gitattributes#_performing_text_diffs_of_binary_files)
facility.

If you have no idea what this means, then this tool is possibly not
going to be useful to you.

## Installation

### Installing manually

Clone this repository to any directory you like.

Make sure the following packages are installed on your system:

- bash
- jq
- lua
- The `cson` Lua rock (or the lua-cson system package)
- xxd
- zcat (or gunzip)

### Installing from the AUR

Direct your favorite
[AUR helper](https://wiki.archlinux.org/title/AUR_helpers) to the
`jollyson` package.

## Usage

```shell
jollyson JKR_FILE
```

### Examples

```shell
jollyson ~/.local/share/love/balatro/settings.jkr
```

```shell
jollyson ~/.local/share/love/balatro/1/meta.jkr
```

```shell
jollyson ~/.local/share/love/balatro/1/profile.jkr
```

## Contributing to Jollyson

See [`CONTRIBUTING.md`](https://github.com/claui/jollyson/blob/main/CONTRIBUTING.md).

## See also

- [Balatro Save Editor by Nan Huang](https://github.com/TeddyHuang-00/BalatroSaveEditor),
  a Python script that can read and modify Joker files

- [Balatro Save Editor by WilsontheWolf](https://balatro.shorty.systems/)
  ([GitHub project](https://github.com/WilsontheWolf/balatro-save-loader)),
  an online tool that can read and modify Joker files

- [textconv](https://git-scm.com/docs/gitattributes#_performing_text_diffs_of_binary_files)
  section in the
  [gitattributes](https://git-scm.com/docs/gitattributes)
  documentation

## License

Copyright (c) 2025 Claudia Pellegrino

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
For a copy of the License, see [LICENSE](LICENSE).
