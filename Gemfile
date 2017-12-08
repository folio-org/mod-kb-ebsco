source 'https://rubygems.org'

ruby "2.4.2"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'dotenv-rails', groups: [:development, :test]

gem 'rails', '~> 5.1.2'
gem 'puma', '~> 3.7'
gem 'jsonapi-rails', :git => "https://github.com/jsonapi-rb/jsonapi-rails.git", :ref => "14a9421"
gem 'flexirest'
gem 'okapi', :git => 'https://github.com/thefrontside/okapi.rb/', :branch => "master"

group :development, :test do
  gem 'pry-remote'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'map', '~> 6.0'
  gem 'vcr', '~> 3.0'
  gem 'webmock', '~> 3.0'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
