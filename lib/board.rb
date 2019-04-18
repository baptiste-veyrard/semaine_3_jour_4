class Board
	attr_accessor :array_place

	def initialize(array_place)
		@array_place = array_place
		
	end

	def print_board(array_place)

	array_board = []

	#Dessin du tableau avec les variables
	array_board << "       1           2          3     "
	array_board << "  __________________________________"
	array_board << "  |          |          |          |"
	array_board << "A |    #{@array_place[0]["A1"]}     |     #{@array_place[1]["A2"]}    |     #{@array_place[2]["A3"]}    |"
	array_board << "  |          |          |          |"
	array_board << "  __________________________________"
	array_board << "  __________________________________"
	array_board << "  |          |          |          |"
	array_board << "B |    #{@array_place[3]["B1"]}     |     #{@array_place[4]["B2"]}    |     #{@array_place[5]["B3"]}    |"
	array_board << "  |          |          |          |"
	array_board << "  __________________________________"
	array_board << "  __________________________________"
	array_board << "  |          |          |          |"
	array_board << "C |    #{@array_place[6]["C1"]}     |     #{@array_place[7]["C2"]}    |     #{@array_place[8]["C3"]}    |"
	array_board << "  |          |          |          |"
	array_board << "  __________________________________"

	puts array_board
end
end