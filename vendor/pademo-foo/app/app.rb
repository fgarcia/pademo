
module Pademo 
  module Foo

    class App < Padrino::Application
      register Pademo::Base::AppCore

      set :prefix, "foo"

      get :index do 
        render :index
      end

    end
  end
end
