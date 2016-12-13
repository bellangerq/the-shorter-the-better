require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Shrtbtr
  class Application < Rails::Application

    # https://gist.github.com/anotheruiguy/7379570
    # config.assets.paths << Rails.root.join("app", "assets", "fonts")

    # Tell Rails to now use Public pages for error pages
    config.exceptions_app = self.routes

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
