Padrino.configure_apps do
  enable :sessions

  set :session_secret, 'ca128aeb2590999c61d3b700f4c373fc191ea1fb4c3b42c2bd268bada616eeec'
  set :protection, :except => :path_traversal
  set :protect_from_csrf, true
end

require 'pademo/sinapi'

Padrino.mount('Pademo::Grunt::App').to('/grunt')
Padrino.mount('Pademo::Hello::App').to('/hello')
Padrino.mount('Pademo::Pipeline::App').to('/pipeline')
Padrino.mount('Pademo::Sinapi::App').to('/sinapi')
Padrino.mount('Pademo::Tester::App').to('/tester')

Padrino.mount('Pademo::Core::App').to('/')
