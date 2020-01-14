#!/bin/bash

rm -rf ~/.gems
sudo rm -rf /Library/Ruby/Gems/*

sudo gem update --system
sudo gem update bundler

gem install rubygems-update
update_rubygems
gem update --system
gem update bundler