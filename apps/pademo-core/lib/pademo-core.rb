require 'padrino-core'

FileSet.glob_require('pademo-core/*.rb', __FILE__)

module Pademo 
  module Core
    extend Padrino::Module
    gem! "pademo-core"
  end
end
