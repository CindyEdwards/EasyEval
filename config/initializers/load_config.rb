# http://stackoverflow.com/questions/9235292/how-can-i-run-some-initializers-when-doing-a-rails-assetsprecompile
# Rails lets you register initializers only in certain groups, but you need to use the Railtie API:

# in config/application.rb

# module AssetsInitializers
#  class Railtie < Rails::Railtie
#    initializer "assets_initializers.initialize_rails",
#                :group => :assets do |app|
#      require "#{Rails.root}/config/initializers/load_config.rb"
#    end
#  end
#end

# You don't need to check if AppConfig is defined since this will only run in the assets group.
# And you can (and should) continue to use initialize_on_precompile = false. The load_config.rb initializer will be run when # initializing the app (since it's in config/initializers) and when pre-compiling without initializing (because of the above code).



# http://stackoverflow.com/questions/12755867/rails-constant-not-initializing

if Rails.env == 'production'
  Stripe.api_key:    "productionapikeycode"
  STRIPE_PUBLIC_KEY: "productionpublickeycode"
else
  Stripe.api_key:    "tesapikeycode"
  STRIPE_PUBLIC_KEY: "testpublickeycode"     
end 


