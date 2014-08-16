require 'rubygems'
require 'bundler/setup'

Dir.glob('./lib/pademo/sinapi/*.rb' ).each { |f| require f }

module Pademo
  module Sinapi
  end
end
