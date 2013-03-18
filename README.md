# A Simple Perl Script for Generating Strong Passwords

## What's this

This script generates strong password that are easy to distinguish. Characters such as `i` `1` `0` `o` `|` `!` `_` `-` are not used. This is helpful in case of lack of ability of "copy/parse".

## Installation

``` sh
$ curl -s https://raw.github.com/zhf/pass-gen/master/pass-gen.pl > pass && \
  chmod 755 pass && \
  mv pass /usr/local/bin
```

## Usage

In terminal:

- Type `pass` in Terminal to generate 10-char passwords, from simple to strong ones
- Type `pass-gen 15` to generate 15-char passwords

