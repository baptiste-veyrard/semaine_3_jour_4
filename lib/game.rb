class Game

	attr_accessor :player_1
	attr_accessor :player_2
	attr_accessor :array_players
	attr_accessor :game_board_cases

	def initialize(player_1_name, player_1_symbol, player_2_name, player_2_symbol)
		@player_1 = Player.new(player_1_name, player_1_symbol)
		@player_2 = Player.new(player_2_name, player_2_symbol)
		array_players = []
		array_players << @player_1
		array_players << @player_2
		@game_board_cases = BoardCase.new
	end

	def input_player
		a = gets.chomp.to_s
		if a == 'A1' || a == 'A2' || a == 'A3' || a == 'B1' || a == 'B2' || a == 'B3' || a == 'C1' || a == 'C2' || a == 'C3'
			return a
		else
			puts "Vous n'avez pas taper une case correspondant au tableau ! Veuillez recommencer :"
			print ">"
			input_player
		end
	end

	def is_still_ongoing?(tour)
		if @game_board_cases.win(tour) == false
			true
		else
			false
		end

	end

	def show_game_state
	!@game_board_cases.show_board
		
	end

	def current_player?(i)
		if i%2==0
			current_player = @player_1
		else
			current_player = @player_2
		end
		return current_player
	end


	def menu(current_player)
		#On affiche un menu pour proposer une action
		puts "\n\n\n#{current_player.name}, c'est à toi de jouer"
		puts "Quelle case veux-tu cocher?"
		print ">"
		#Fin du menu
	end

	def play(place_choice, current_player)
		if current_player == @player_1
			symbol = "X"
		else
			symbol = "O"
		end
		@game_board_cases.add_symbol(symbol, place_choice)
		
	end

	def end_message(current_player, tour)
		if tour == 10
			puts "Ahh, c'est une égalité !"
		elsif current_player = @player_1
			puts "BRAVO #{@player_2.name}, tu as gagné cette partie !"
		else
			puts "BRAVO #{@player_1.name}, tu as gagné cette partie !"
		end
	end

end