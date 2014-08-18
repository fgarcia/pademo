# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pademo/pipeline/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["fgarcia"]
  gem.summary       = %q{Pademo Pipeline gemified app}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pademo-pipeline"
  gem.require_paths = ["lib", "app"]
  gem.version       = Pademo::Pipeline::VERSION

  gem.add_dependency "padrino"
end
