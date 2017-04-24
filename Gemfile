source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# core
gem 'rails', '~> 5.0.2'

# datebase
gem 'mysql2', '>= 0.3.18', '< 0.5'

# view
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'slim-rails'


group :development, :test do

  # debug
  gem 'byebug', platform: :mri
  gem 'pry-rails'

  # test
  gem 'rspec-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
