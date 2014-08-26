# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pademo-foo/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["fgarcia"]
  gem.summary       = %q{Pademo sample Padrino gem project}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pademo-foo"
  gem.require_paths = ["lib", "app"]
  gem.version       = Pademo::Foo::VERSION

  gem.add_dependency "padrino-core"
  # gem.add_dependency "pademo-base"
end
