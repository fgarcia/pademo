ENV['RACK_ENV'] = "test"

require 'capybara'
require 'capybara/rspec'

require './config/boot'

RSpec.configure do |config|
  ::Padrino.load!

  include Capybara::DSL
  Capybara.app = Pademo::Base::App
end

