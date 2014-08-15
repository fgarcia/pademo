require 'padrino-warden'

module Pademo
  module Base
    class App < Padrino::Application
      register Pademo::Base::AppCore

      get :index do 
        render :index
      end

    end
  end
end
