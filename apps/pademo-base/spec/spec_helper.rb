ENV['RACK_ENV'] = "test"

require 'capybara'
require 'capybara/rspec'

require './config/boot'

RSpec.configure do |config|
  include Capybara::DSL

  ::Padrino.load!
  Capybara.app = Pademo::Base::App

end

