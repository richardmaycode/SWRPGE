source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 6.0.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12.2'
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'awesome_print', require: "ap"
gem 'haml'
gem 'haml-rails'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec'
  gem 'rspec-rails', '~> 3.8'
  gem 'shoulda-matchers'
  gem 'faker'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'bullet'
  gem 'rubocop', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
