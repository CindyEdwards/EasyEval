source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'sass-rails',   '~> 3.2.3'
gem 'coffee-rails', '~> 3.2.1'
gem 'uglifier', '>= 1.0.3'
gem 'jade-js-source', git: 'https://github.com/wavii/jade', branch: 'coffeescript-support'
gem 'tilt-jade', '~> 1.1.2'
gem 'jquery-rails'
gem "thin", ">= 1.5.0"
gem "rspec-rails", ">= 2.11.4", :group => [:development, :test]
gem "database_cleaner", ">= 0.9.1", :group => :test
gem "email_spec", ">= 1.4.0", :group => :test
gem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false
gem "launchy", ">= 2.1.2", :group => :test
gem "capybara", ">= 1.1.3", :group => :test
gem "factory_girl_rails", ">= 4.1.0", :group => [:development, :test]
gem "bootstrap-sass", ">= 2.1.1.0"
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.0.4"
gem "stripe", ">= 1.7.4"
gem "stripe_event", ">= 0.4.0"
gem "quiet_assets", ">= 1.0.1", :group => :development
gem 'slim'
gem "rubyzip", ">= 0.9.9"
gem 'backbone-rails'
gem 'bigdecimal'

platforms :ruby do # linux
gem 'unicorn'
end

platforms :mswin do
  # gems specific to windows
end

group :development, :test do
  gem 'sqlite3'
end

group :production do
  gem 'pg',   '0.17.1'
  gem 'rails_12factor', '0.0.2'
end

# gem 'unicorn'  http://stackoverflow.com/questions/10764199/develop-on-windows-run-unicorn-in-production-on-heroku/10764443#10764443
