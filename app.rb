require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board_case'
require_relative 'view/show'

puts "-" * 30
puts "Bienvenue dans le jeu du Morpion !"
puts "-" * 30

puts "Joueur 1 - Quel pseudo veux-tu choisir?"
print ">"
player_1 = gets.chomp

my_player_1 = Player.new(player_1)
		
puts "Joueur 2 - Quel pseudo veux-tu choisir?"
print ">"
player_2 = gets.chomp

my_player_2 = Player.new(player_2)