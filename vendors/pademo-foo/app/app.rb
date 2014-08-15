
module Pademo 
  module Foo

    class App < Padrino::Application
      register Pademo::Base::AppCore

      set :prefix, "foo"
      set :gem_style, :foo_style

      get :index do 
        render :index
      end

    end
  end
end
