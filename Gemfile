source 'http://rubygems.org'

gem 'rails', '~> 3.2.1'
gem 'haml-rails'
gem 'rdiscount'
gem 'kaminari'

gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-twitter'
gem 'omniauth-google-oauth2'

gem 'mongoid', '~> 2.0'
gem 'mongoid_rails_migrations'
gem 'bson_ext'

# Search
gem 'sunspot_rails'
gem 'sunspot_solr'
gem 'sunspot_with_kaminari'
gem 'sunspot_mongo', git: 'https://github.com/derekharmel/sunspot_mongo.git'
gem 'progress_bar'


# Gems used only for assets and not required
# in productionvironments by default.
# http://stackoverflow.com/questions/7756293/undefined-method-sass-for-railsapplicationconfiguration-on-heroku
gem 'sass-rails',    '~> 3.2.3'
gem 'jquery-rails'
gem 'backbone-rails'
gem 'coffee-rails',  '~> 3.2.1'
gem 'compass-rails', '>= 1.0.0.rc.1'
gem 'compass_twitter_bootstrap', '>= 2.0.1'
gem 'uglifier', '>= 1.0.3'

group :assets do
end

group :linux do
  gem 'libnotify'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'guard-spork'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-ctags-bundler', git: 'git://github.com/antono/guard-ctags-bundler.git'

  gem 'rake'
  gem 'pry'
  gem 'pry-nav'
  gem 'turnip', git: "git://github.com/jnicklas/turnip.git"
  gem 'capybara'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'sunspot_matchers'
end
