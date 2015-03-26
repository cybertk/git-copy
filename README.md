## git-copy

> Git plugin for copy remote git repo to another remote destination

[![Gem](https://img.shields.io/gem/v/git-copy.svg)]()
[![Build Status](https://travis-ci.org/cybertk/git-copy.svg?branch=master)](https://travis-ci.org/cybertk/git-copy)

## Getting Started

    sudo gem install git-copy
    git copy https://github.com/cybertk/git-copy.git https://github.com/cybertk/git-copy.git

### Examples

Copy this repo to a local hosted git server

    git init --bare git-copy.git
    git copy https://github.com/cybertk/git-copy.git $PWD/git-copy.git

## Contribution

Any contribution is more then welcome!
