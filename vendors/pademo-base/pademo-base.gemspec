# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pademo-base/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["fgarcia"]
  gem.summary       = %q{Pademo base resources}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pademo-base"
  gem.require_paths = ["lib", "app"]
  gem.version       = Pademo::Base::VERSION

  gem.add_dependency "padrino"
  gem.add_dependency "rake"
  gem.add_dependency "slim"

  gem.add_dependency "padrino-sprockets"
  gem.add_dependency "padrino-warden"

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'capybara'
  gem.add_development_dependency 'rack-test'
end
