require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module BaseProject2023
  class Application < Rails::Application

    I18n.load_path += Dir[Rails.root.join("config","locales", "*.{yml}")]
    I18n.default_locale = :es
    
  end
end
