ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require File.join(__dir__, '../config/boot')

# Adjust logger to help debug tests
#
# TODO This is not working, expected to see logs during test run
Padrino::Logger::Config[:test][:log_level] = :devel

class TestHome < MiniTest::Unit::TestCase

  def setup 
    require 'rack/test'
    browser = Rack::Test::Session.new(Rack::MockSession.new(Pademo::Core::App))
    @home = browser.get('/').body
  end

  def test_home_page_contains_hello_message
    assert_includes @home, "Hello from pademo-core"
  end

end

