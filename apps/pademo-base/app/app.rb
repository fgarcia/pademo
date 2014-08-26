module Pademo
  module Base
    class App < Padrino::Application
      register Pademo::Base::AppCore

      helpers do 
        def pademo_github_link(path, text)
          "<a href='https://github.com/zenbits/pademo/tree/master#{path}'>#{text}</a>".html_safe
        end

        def pademo_github_gem(name)
          pademo_github_link("/apps/#{name}",name)
        end
      end
      
      get :index do 
        render :index
      end

    end
  end
end
