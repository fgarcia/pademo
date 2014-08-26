# Share common Rspec 'shared examples' between your gems
#
# The concept:
#   https://www.relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples
#
# The idea discussion:
#   https://www.ruby-forum.com/topic/3195424
#
require 'rspec/core/shared_context'

module Pademo 
  module SharedExamples
    extend RSpec::Core::SharedContext

    shared_examples "a Pademo app" do

      it "has a prefix" do 
        expect(described_class.prefix).to be_kind_of String
        expect(described_class.prefix.length).to be > 1
      end

    end

  end
end
