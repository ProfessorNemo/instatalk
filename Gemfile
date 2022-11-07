# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'cssbundling-rails'
gem 'jsbundling-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 6.0'
gem 'rails', '~> 7.0.4'
gem 'rails-i18n'
gem 'redis', '~> 5.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

group :development, :test do
  gem 'byebug'
  gem 'faker', git: 'https://github.com/faker-ruby/faker.git', branch: 'master'
end

group :development do
  gem 'rubocop', '~> 1.30', require: false
  gem 'rubocop-performance', '~> 1.14', require: false
  gem 'rubocop-rails', '~> 2.14', require: false
  gem 'web-console', '>= 4.1.0'
end
