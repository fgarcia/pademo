module Pademo 
  module Tester

    class App < Padrino::Application
      register Pademo::Base::AppCore

      set :prefix, "tester"

      get :index do 
        render :index
      end

    end
  end
end
