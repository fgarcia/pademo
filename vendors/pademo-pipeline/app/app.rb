module Pademo 
  module Pipeline

    class App < Padrino::Application
      register Pademo::Base::AppCore

      set :prefix, "pipeline"

      get :index do 
        render :index
      end

    end
  end
end
