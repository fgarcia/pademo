require 'padrino-core'

FileSet.glob_require('pademo-base/*.rb', __FILE__)

module Pademo 
  module Base
    extend Padrino::Module
    gem! "pademo-base"
  end
end
