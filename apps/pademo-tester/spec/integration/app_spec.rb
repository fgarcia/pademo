# Take shared examples from base gem
require 'pademo-base/spec/shared_examples'

describe Pademo::Tester::App do 
  # This does not seem needed anymore ...
  # include Pademo::SharedExamples

  it_behaves_like "a Pademo app"  

end
