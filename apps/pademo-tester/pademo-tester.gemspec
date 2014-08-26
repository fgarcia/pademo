# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pademo/tester/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["fgarcia"]
  gem.summary       = %q{Pademo Tester gemmified app}
  gem.homepage      = ""

  gem.files         = Dir['**/*']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pademo-tester"
  gem.require_paths = ["lib", "app"]
  gem.version       = Pademo::Tester::VERSION

  gem.add_dependency "padrino"
end
