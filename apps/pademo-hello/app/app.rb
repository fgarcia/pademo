module Pademo 
  module Hello

    class App < Padrino::Application
      register Pademo::Core::AppCore

      set :prefix, "hello"

      get :index do 
        render :index
      end

    end
  end
end
