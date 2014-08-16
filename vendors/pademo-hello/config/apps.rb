
Padrino.configure_apps do
  enable :sessions
  set :session_secret, '8fe9d6fca699fc9839d2ed1f0a22328b1b9b1926b82b4585af408f57747e4a78'
  set :protection, :except => :path_traversal
  set :protect_from_csrf, true
end

Padrino.mount('Pademo::Base::App').to('/')
Padrino.mount('Pademo::Hello::App').to('/' + Pademo::Hello::App.prefix)


