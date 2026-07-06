require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module JapaneseQuiz
  class Application < Rails::Application
    config.load_defaults 7.1
    config.autoload_lib(ignore: %w[assets tasks]) if config.respond_to?(:autoload_lib)

    # Keep things simple: no asset pipeline / action mailer / etc needed.
    config.api_only = false
    config.secret_key_base = "dev_only_secret_key_base_please_change_in_production_0000000000000000000000000000"
  end
end
