#!/usr/bin/env bash

set -e

echo when build Gem
gem build git-copy.gemspec

echo when install Gem
gem install git-copy-*.gem

echo when call git-copy
git copy
