require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module BlogApi
  class Application < Rails::Application
    config.load_defaults 7.0

    config.time_zone = "Moscow"
    # config.eager_load_paths << Rails.root.join("extras")

    config.api_only = true
  end
end
