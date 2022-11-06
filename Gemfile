# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

gem 'pg', '~> 1.1'
gem 'puma', '~> 6.0'
gem 'rails', '~> 7.0.4'
gem 'turbolinks', '~> 5'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'byebug'
  gem 'faker', '~> 3'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 3.0'
  gem 'rubocop', '~> 1.30', require: false
  gem 'rubocop-performance', '~> 1.14', require: false
  gem 'rubocop-rails', '~> 2.14', require: false
  gem 'web-console', '>= 4.1.0'
end

gem 'cssbundling-rails', '~> 1.0'
gem 'jsbundling-rails', '~> 1.0'
gem 'sprockets-rails', '~> 3.4'

gem 'resque', '~> 2.4'
gem 'resque-scheduler', '~> 4.7'
