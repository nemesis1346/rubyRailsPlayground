#!/bin/bash
cd ..
bundle install
yarn install 
bundle exec rake db:migrate
bundle exec rails server --binding 0.0.0.0 --port 3000 -e development
