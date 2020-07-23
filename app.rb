require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/boardcase'
require_relative 'lib/application'



#lancement partie
my_app = Application.new
while my_app.statut == true
	Game.new.perform
end
