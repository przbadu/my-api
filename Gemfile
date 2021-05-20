source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# authentication
gem 'bcrypt', '~> 3.1.7'
gem 'jwt'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
# Rate limiting & Throttling
gem 'rack-attack'
# JSON Api
gem 'active_model_serializers', '~> 0.10.0'
# pagination
gem "kaminari", ">= 1.2.1"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Test framework
  gem 'faker'
  gem 'rspec-rails', '~> 4.0.0'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
