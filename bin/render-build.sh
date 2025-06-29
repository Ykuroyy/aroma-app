#!/usr/bin/env bash
# exit on error
set -o errexit

echo "🚀 Starting build process..."

# Install dependencies
echo "📦 Installing dependencies..."
bundle install
echo "✅ Bundle install completed"

# Skip CSS building since we're using application.css
# yarn build:css

# Database setup with detailed logging
echo "🗄️ Setting up database..."

echo "📋 Creating database..."
bundle exec rake db:create 2>/dev/null || echo "ℹ️ Database already exists or creation failed"

echo "🔄 Running migrations..."
bundle exec rake db:migrate
echo "✅ Migrations completed"

echo "🌱 Seeding database..."
bundle exec rake db:seed
echo "✅ Seeding completed"

echo "🎉 Build process completed successfully!" 