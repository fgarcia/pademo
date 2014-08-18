module Pademo 
  module Pipeline

    # WAITING
    # TODO No best location for this configuration code because of dual
    #      configuration problem
    require 'sass' 
    base_style = "#{Gem.loaded_specs['pademo-base'].full_gem_path}/app/stylesheets"
    unless Sass.load_paths.include? base_style
      Sass.load_paths << base_style
    end

    class App < Padrino::Application
      register Pademo::Base::AppCore

      set :prefix, "pipeline"
      set :gem_style, "sassy-local"

      get :index do 
        render :index
      end

    end
  end
end
