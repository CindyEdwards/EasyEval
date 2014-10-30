# Load the rails application
require File.expand_path('../application', __FILE__)

# http://tammersaleh.com/posts/managing-heroku-environment-variables-for-local-development/
# Load heroku vars from local file
heroku_env = File.join(Rails.root, 'config', 'heroku_env.rb')
load(heroku_env) if File.exists?(heroku_env)

# Initialize the rails application
Easyeval::Application.initialize!
