require 'padrino-warden'
require 'padrino/sprockets'

module Pademo 
  module Base
    module AppCore 

      def self.registered(app)
        app.setup_render
        app.setup_assets
        app.setup_warden
      end

      # Setup HTML rendering 
      #
      # Add the default Padrino helpers and use the common layout file provided
      # by this gem
      #
      def setup_render
        register Padrino::Helpers

        # Main layout file
        def path_main_layout
          # need to calculate relative path because Padrino will not accept 
          # a full path
          require 'pathname'
          layout = Gem.loaded_specs['pademo-base'].full_gem_path
          layout = File.join layout, 'app/views/layouts/application.slim'
          layout = Pathname.new layout
          base_path = Pathname.new File.join(root, 'views/layouts')
          layout.relative_path_from base_path
        end

        layout path_main_layout
      end

      # Setup assets pipeline
      #
      # Start the asset pipeline. Each app will have its own pipeline providing
      # assets in these assets:
      #
      #   /assets           Main pipeline for common assets
      #   /my_app/assets    App specific assets
      #
      def setup_assets
        register Padrino::Sprockets
        sprockets :paths => ["stylesheets", "images", "javascripts"]
      end

      # Setup Warden based authentication
      #
      # Although we are using Padrino::Warden, most of the time you will be
      # better off dealing directly with Warden. Basically there are two things
      # you have to do to integrate plain Warden with your app:
      #
      # 1. Routes for authentication. Just run 'rake routes' and look at the
      #    routes under '/sessions'. Most likely you will want to write your
      #    own modifications in your apps
      #
      # 2. Warden configuration. This function contains the 'non route' related
      #    code. As you will see, it is tightly dependent with your app
      #    architecture, so there is no much left for abstraction.
      #
      # 3. Do some research about storing user passwords into the database.
      #    Most examples use 'bcrypt'
      #
      def setup_warden

        if defined? Pademo::Base::App
          if self == Pademo::Base::App
            # Strategy conf only needed for the app serving user logging

            register Padrino::Warden

            Warden::Strategies.add(:password) do
              def valid?
                params["username"] || params["password"]
              end

              def authenticate!
                u = Pademo::Base::User.authenticate(params["username"], params["password"])
                u.nil? ? fail!("Could not log in") : success!(u)
              end
            end
          end
        end

        # Common Warding configuration for all apps
        use ::Warden::Manager do |config|
          config.serialize_into_session { |user| user.name }
          config.serialize_from_session { |name| User.get(name) }
          config.scope_defaults :default, 
            strategies: [:password], 
            action: 'unauthenticated'
        end

        helpers do
          def logged? 
            env['warden'] && env['warden'].authenticated?
          end

          def logged_user 
            env['warden'].user.name
          end
        end

      end

    end
  end
end


