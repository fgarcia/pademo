module Pademo 
  module Core
    class User
      attr_reader :name

      def initialize(name)
        @name=name
      end

      def self.known_user 
        @known_user ||= User.new('demo')
      end

      def self.authenticate(a, b)
        return known_user if a == 'demo' and b =='demo'
        nil
      end

      def self.get(name)
        return known_user if name == 'demo'
        nil
      end

    end

  end 
end
