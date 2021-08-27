require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

if ['development', 'test'].include? ENV['RAILS_ENV']
  Dotenv::Railtie.load
end

module VacancyJobs
  class Application < Rails::Application
    config.load_defaults 6.1
    config.i18n.default_locale = :"pt-BR"
  end
end