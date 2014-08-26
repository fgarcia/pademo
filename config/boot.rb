RACK_ENV = ENV['RACK_ENV'] ||= 'development'  unless defined?(RACK_ENV)
PADRINO_ROOT = File.expand_path('../..', __FILE__) unless defined?(PADRINO_ROOT)

require 'rubygems' unless defined?(Gem)
require 'bundler/setup'
require 'padrino'

Bundler.require(:default, RACK_ENV)

Padrino.load!
