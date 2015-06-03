## git-copy

> Git plugin for copy remote/local git repo to another remote/local destination

[![Gem](https://img.shields.io/gem/v/git-copy.svg)](https://rubygems.org/gems/git-copy)
[![Build Status](https://travis-ci.org/cybertk/git-copy.svg?branch=master)](https://travis-ci.org/cybertk/git-copy)
[![Dependency Status](https://gemnasium.com/cybertk/git-copy.svg)](https://gemnasium.com/cybertk/git-copy)

## Getting Started

    sudo gem install git-copy
    git copy https://github.com/cybertk/git-copy.git https://github.com/cybertk/git-copy.git

### Examples

Copy this repo to a local hosted git server

    git init --bare git-copy.git
    git copy https://github.com/cybertk/git-copy.git $PWD/git-copy.git

## Contribution

Any contribution is more then welcome!
