#!/usr/bin/env bash
# Don't exit on error - we want to see what happens
# set -o errexit

echo "🚀 Starting build process..."

# Install dependencies
echo "📦 Installing dependencies..."
bundle install
echo "✅ Bundle install completed"

# Skip CSS building since we're using application.css
# yarn build:css

# Database setup with detailed logging and error handling
echo "🗄️ Setting up database..."

echo "📋 Creating database..."
bundle exec rake db:create || echo "ℹ️ Database creation failed or already exists"

echo "🔄 Running migrations..."
bundle exec rake db:migrate || echo "❌ Migration failed"
echo "✅ Migrations step completed"

echo "🌱 Seeding database..."
bundle exec rake db:seed || echo "❌ Seeding failed"
echo "✅ Seeding step completed"

echo "🎉 Build process completed!" 