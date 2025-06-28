#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# Skip CSS building since we're using application.css
# yarn build:css

# Setup database
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed 