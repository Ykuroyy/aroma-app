#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# Skip CSS building since we're using application.css
# yarn build:css

# Setup database
echo "Setting up database..."
bundle exec rake db:create || echo "Database already exists"
bundle exec rake db:migrate
bundle exec rake db:seed || echo "Seeding completed or already done"
echo "Database setup completed" 