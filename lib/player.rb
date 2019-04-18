class Player
	attr_accessor :name
	attr_accessor :symbol
	attr_accessor :player_games_won
	attr_accessor :player_games_lose
	attr_accessor :player_games_tie

	def initialize(name, symbol)
		@name = name
		@symbol = symbol
		@player_games_won = 0
		@player_games_lose = 0
		@player_games_tie = 0
	end
end