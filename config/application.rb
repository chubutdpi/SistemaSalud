require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Altascovid
  class Application < Rails::Application
    config.load_defaults 5.2

    config.time_zone = 'Buenos Aires'
    
    config.i18n.default_locale = :es
    I18n.available_locales = [:es]

    config.generators do |g|
        g.stylesheets false
    end
    config.action_controller.default_protect_from_forgery = false
    config.serve_static_assets = true



    

  end
end
