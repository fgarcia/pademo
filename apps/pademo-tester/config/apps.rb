Padrino.configure_apps do
  enable :sessions
  set :session_secret, 'cdde1cae0d6cdd7e7f7e6308bdd30971e1bb1dac4234a5b619e2cf824add93dd'
  set :protection, :except => :path_traversal
  set :protect_from_csrf, true
end

Padrino.mount('Pademo::Tester::App').to('/tester')
Padrino.mount('Pademo::Core::App').to('/')
