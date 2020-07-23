class Game #Class du jeu 

  attr_accessor :players, :board , :player

  def initialize
    @players = Array.new
    @board = Board.new
  end

  def ask_name # demande les noms des joueurs
    puts "Nom du joueur numéro 1 ?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "O")

    puts "Nom du joueur numéro 2 ?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "X")
  end

  def select_player # la selection des joueurs 
    while @board.victoire == false
    	@players.each do |z| 
    		if @board.victoire == true
				nil
			else
      			@board.play_turn(z)
    		end
 		end
 	end
  end

 def perform
    ask_name
    puts "Le prenom du joueur numéro 1 est #{@players[0].name} et son symbole est #{@players[0].symbol}"
    puts "Le prenom du joueur 2 est #{@players[1].name} et son symbole est #{@players[1].symbol}"
    @board.show
    select_player
    #redemande une autre partie de jeux 
  end
end