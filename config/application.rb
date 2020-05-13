# frozen_string_literal: true

require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)

module Doswitch
  class Application < Rails::Application
    config.load_defaults 6.0
    config.generators do |g|
      g.test_framework = 'rspec'
    end
  end
end
