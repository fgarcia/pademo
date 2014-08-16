require 'sinatra'
require 'json'

module Pademo
  module Sinapi
    class App < Sinatra::Base

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
