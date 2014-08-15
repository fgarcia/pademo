
module Pademo 
  module Bar

    class App < Padrino::Application
      register Pademo::Base::AppCore

      set :prefix, "bar"

      get :index do 
        render :index
      end

    end
  end
end
