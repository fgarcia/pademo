require './lib/pademo/sinapi'

map('/api') { run Pademo::Sinapi::App }
