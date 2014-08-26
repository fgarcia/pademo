# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pademo/hello/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["fgarcia"]
  gem.summary       = %q{Pademo Hello gemified app}
  gem.homepage      = ""

  # WARNING: Normally you want to get your gem files like this:
  #     gem.files         = `git ls-files`.split($\)
  #
  # To simplify this demo I just include all files
  gem.files         = Dir['**/*']
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pademo-hello"
  gem.require_paths = ["lib", "app"]
  gem.version       = Pademo::Hello::VERSION

  gem.add_dependency "padrino"
end
