# Using rubygems to set load paths
require "rubygems"

# Require dependencies
require "rails"
require "active_support/railtie"
require "action_dispatch/railtie"
require "action_controller/railtie"

class SingleFile < Rails::Application
  # Set up production configuration
  config.eaher_load = true
  config.cache_classes = true

  # A key base is requrired for our app to boot
  config.secret_key_base = "pa34u13hsleouwi1aisejkez12u3901pluaep2ejkwhkj"

  # Define a basic route
  routes.append do
    root to: lambda { |env|
      [200, { "Content-Type" => "text/plain" }, ["Greeetings, God is good"]]
    }
  end
end

SingleFile.intialize!
run Rails.application