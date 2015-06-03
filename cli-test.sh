#!/usr/bin/env bash

set -e

# when build Gem
gem build git-copy.gemspec

# when install Gem
gem install git-copy-*.gem

# when call git-copy
git copy
