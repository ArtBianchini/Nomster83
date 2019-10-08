require File.expand_path('../'boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Nomster
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.assets.paths <<"#{Rails.root}/app/assets/fonts"


# Precompile additional assets
config.assets.precompile += %w( .svg .eot .woff .ttf )


  end
end
