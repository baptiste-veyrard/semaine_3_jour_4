require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/board_case'
require_relative 'view/show'


#On affiche le message de bienvenue
puts "-" * 30
puts "Bienvenue dans le jeu du Morpion !"
puts "-" * 30

#On demande le nom des joueurs pour les créer, et on leur attribut un symbol (il n'y a que 2 joueurs)
puts "Joueur 1, quel pseudo veux-tu choisir?"
player_1_name = gets.chomp
player_1_symbol = "X"

puts "Joueur 2, quel pseudo veux-tu choisir?"
player_2_name = gets.chomp
player_2_symbol = "O"

#On lance la class Game en créant les joueurs
my_game = Game.new(player_1_name, player_1_symbol, player_2_name, player_2_symbol)

#On indique au joueur leur symbol
puts "\n"
puts "#{player_1_name}, tu auras le symbol #{player_1_symbol}"
puts "#{player_2_name}, tu auras le symbol #{player_2_symbol}"
puts "\n"

#On affiche l'état de la table
puts "Voilà le jeux :\n"
my_game.show_game_state

#On démarre le jeux
tour = 0
while my_game.is_still_ongoing?(tour) == true
	#On incrémente le tour pour changer de joueur et vérifier si la partie n'est pas terminé
	tour += 1

	#On change de joueur
	current_player = my_game.current_player?(tour)
	#On affiche le menu pour le current user
	my_game.menu(current_player)

	#On demande le choix de l'utilisateur
	place_choice = my_game.input_player

	#On applique son choix
	my_game.play(place_choice, current_player)

	system "clear"
	#On affiche le jeux après l'action
	my_game.show_game_state
end

my_game.end_message(current_player, tour)