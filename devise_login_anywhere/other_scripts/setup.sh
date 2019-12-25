#!/bin/bash

#this is for cleaning cache
bundle exec rake tmp:cache:clear # Clears all files and directories in tmp/cache
bundle exec rake tmp:clear # Clear session, cache, and socket files from tmp/
bundle exec rake tmp:create # Creates tmp directories for sessions, cache, and sockets
bundle exec rake tmp:sockets:clear # Clears all files in tmp/sockets
bundle exec rake db:sessions:clear

#bind/rails db:environment:set RAILS_ENV=production

bundle install

#npm install yarn -g  
rails assets:precompile
bundle exec rake db:create 
bundle exec rake db:migrate 
bundle exec rake db:seed 
#bundle exec rails server 
bundle exec rails server --binding 0.0.0.0 --port 3000
