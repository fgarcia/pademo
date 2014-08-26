module Pademo 
  module Grunt

    class App < Padrino::Application
      register Pademo::Base::AppCore

      set :prefix, "grunt"

      get :index do 
        render :index
      end

    end
  end
end
