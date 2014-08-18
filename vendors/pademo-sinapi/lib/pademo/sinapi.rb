require 'rubygems'
require 'bundler/setup'

Dir.glob(File.join(__dir__, 'sinapi/*.rb' )).each { |f| require f }

module Pademo
  module Sinapi
  end
end
