module Pademo 
  module Tester

    class App < Padrino::Application
      register Pademo::Base::AppCore

      set :prefix, "tester"

      get :index do 
        render :index
      end

      get "/test1" do 
        render :test1
      end

    end
  end
end
