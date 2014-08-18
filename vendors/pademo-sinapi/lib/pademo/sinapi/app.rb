require 'sinatra'
require 'json'

module Pademo
  module Sinapi
    class App < Sinatra::Base

      class << self
        # https://gist.github.com/achiu/1718723
        def dependencies; []; end
        def setup_application!; end
        def app_name; 'Sinapi'; end
        def reoad!; end
        # TODO lib
      end

      set :prefix, "api"

      before do
        content_type 'application/json'
      end

      get '/' do
        { message: "Pademo API" }.to_json
      end

      get '/note' do
        sleep(2)
        { text: "Lorem ipsum dolor sit amet" }.to_json
      end

    end
  end
end
