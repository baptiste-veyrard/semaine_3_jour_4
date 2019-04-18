class BoardCase
	attr_accessor :A1
	attr_accessor :A2
	attr_accessor :A3
	attr_accessor :B1
	attr_accessor :B2
	attr_accessor :B3
	attr_accessor :C1
	attr_accessor :C2
	attr_accessor :C3
	attr_accessor :game_board
	attr_accessor :array_place

	def initialize
		@A1 = "A1"
		@A2 = "A2"
		@A3 = "A3"
		@B1 = "B1"
		@B2 = "B2"
		@B3 = "B3"
		@C1 = "C1"
		@C2 = "C2"
		@C3 = "C3"
		@array_place = []
		@array_place << {@A1 => " "} << {@A2 => " "} << {@A3 => " "} << {@B1 => " "} << {@B2 => " "} << {@B3 => " "} << {@C1 => " "} << {@C2 => " "} << {@C3 => " "}
		@game_board = Board.new(@array_place)
	end

	def add_symbol(symbol, place_choice)
		@array_place.each do |hash_from_array|
			hash_from_array.each do |key, value|
				if key == place_choice
					value.replace "#{symbol}"
				end
			end
		end
		return @array_place
	end

	def show_board
		@game_board.print_board(@array_place)
	end

	def win(tour)

		#Le jeux fonctionne tant qu'il n'y a pas de vainqueur ou bien que toutes les cases ne sont pas remplis
		#Horizontale
		if @array_place[0]["A1"] == @array_place[1]["A2"] && @array_place[0]["A1"] == @array_place[2]["A3"] && @array_place[0]["A1"] != " "
			true
		elsif @array_place[3]["B1"] == @array_place[4]["B2"] && @array_place[3]["B1"] == @array_place[5]["B3"] && @array_place[3]["B1"] != " "
			true
			
		elsif @array_place[6]["C1"] == @array_place[7]["C2"] && @array_place[6]["C1"] == @array_place[8]["C3"] && @array_place[6]["C1"] != " "
			true

		#Verticale
		elsif @array_place[0]["A1"] == @array_place[3]["B1"] && @array_place[0]["A1"] == @array_place[6]["C1"] && @array_place[0]["A1"] != " "
			true
		elsif @array_place[1]["A2"] == @array_place[4]["B2"] && @array_place[1]["A2"] == @array_place[7]["C2"] && @array_place[1]["A2"] != " "
			true
		elsif @array_place[2]["A3"] == @array_place[5]["B3"] && @array_place[2]["A3"] == @array_place[8]["C3"] && @array_place[2]["A3"] != " "
			true

		#Diagonale
		elsif @array_place[0]["A1"] == @array_place[4]["B2"] && @array_place[0]["A1"] == @array_place[8]["C3"] && @array_place[0]["A1"] != " "
			true
		elsif @array_place[2]["A3"] == @array_place[4]["B2"] && @array_place[2]["A3"] == @array_place[6]["C1"] && @array_place[2]["A3"] != " "
			true
		#Tous les tours sont déjà passés
		elsif tour == 10
			true
		else
			false
		end
	end


end