class Board #Class pour le Tableau 
	attr_accessor :victoire, :les_cases #attr_accessor: c'est une fonctionnalité qui permet de caractériser plusieurs variables d'instance à la fois (par écris et par lecture)/ victoire; les_cases: variables d'instances 
	@@position = ["a1","a2","a3","b1","b2","b3","c1","c2","c3"] ## 1ère variable de classe @@position qui permet d'indiquer les cases pour se repérer dans le jeu

	def initialize # initialize: est une méthode de classe (qui se declenche avec .new dans le terminal) qui se declenche automatiquement lorsque que quelque chose d'autre se produit 
		@victoire = false # variable de class : @victoire pour le moment il y en a pas
		@round = 0 # variable de class : @round pour le moment il y 0 tours dans une parite
		@A1 = BoardCase.new("a1", " ") # variable de class : à propos des positions des repères dans le tableau quand on choisis une cible dans une case
		@A2 = BoardCase.new("a2", " ")
		@A3 = BoardCase.new("a3", " ")
		@B1 = BoardCase.new("b1", " ")
		@B2 = BoardCase.new("b2", " ")
		@B3 = BoardCase.new("b3", " ")
		@C1 = BoardCase.new("c1", " ")
		@C2 = BoardCase.new("c2", " ")
		@C3 = BoardCase.new("c3", " ")
		@les_cases =[@A1,@A2,@A3,@B1,@B2,@B3,@C1,@C2,@C3] #variable de class: le nom des cases
	end

	def show # def show: methode de class qui nous permet de présenter le tableau qui represente le jeu du morpion par des puts
		puts""
		puts "Je vous présente le jeu du Morpion ! A vous de jouer : " 
		puts "   1   2  3"
	    puts " a #{@A1.content} | #{@A2.content} | #{@A3.content}"
	    puts "   ---------------"
	    puts " b #{@B1.content} | #{@B2.content} | #{@B3.content}"
	    puts "   ----------------"
	    puts " c #{@C1.content} | #{@C2.content} | #{@C3.content}"
		puts""
	
	end

	def play_turn (player) # def play_turn : demande au bon joueur ce qu'il souhaite faire/ player: une variable d'instance
		
		puts "Ecris moi ton choix de case  #{player.name}: "
		@symbol = player.symbol # la variable du symbole
		position = gets.chomp.to_s #gets.chomp est utilisé pour prendre les entrées de chaîne des utilisateurs et les stocks dans une variable/to_s: convertie en string: renvoie une représentation sous forme de chaîne d'un objet

		while @@position.include?(position) == false #Tant que la position des symboles n'amène pas à une victoire on doit choisir la position de la prochaine case possible / include? : Renvoie true si l'objet donné est présent dans self (c'est-à-dire si un élément == object), sinon renvoie false.
			puts "Dis moi la position que tu as choisis:"
			position = gets.chomp.to_s
		end
		@@position.delete(position) # .delete: Renvoie le dernier élément supprimé, ou nul si aucun élément correspondant n'est trouvé.
		@round += 1 # on rajoute +1 à round quand un tour est effectué
		@les_cases.map do |z| #endroit des cases avec les symboles  
			if z.position == position
				z.content = @symbol
			end
		end
		show
		victoire?
		if victoire == true && @round != 9
			puts "Bravo #{player.name}, tu as gagné."
		elsif victoire == true && @round == 9
			puts "Match nul !"
		end
	end

	def victoire? # permet de savoir toutes les positions possibles des symboles qui amènent à la victoire
		if @A1.content == "O" && @A2.content == "O" && @A3.content == "O" 
			@victoire = true
		elsif @A1.content == "X" && @A2.content == "X" && @A3.content == "X"
			@victoire = true
		elsif @B1.content == "O" && @B2.content == "O" && @B3.content == "O"
			@victoire = true
		elsif @B1.content == "X" && @B2.content == "X" && @B3.content == "X"
			@victoire = true	
		elsif @C1.content == "O" && @C2.content == "O" && @C3.content == "O"
			@victoire = true
		elsif @C1.content == "X" && @C2.content == "X" && @C3.content == "X"
			@victoire = true
		elsif @A1.content == "O" && @B1.content == "O" && @C1.content == "O" 
			@victoire = true
		elsif @A1.content == "X" && @B1.content == "X" && @C1.content == "X"
			@victoire = true
		elsif @A2.content == "O" && @B2.content == "O" && @C2.content == "O"
			@victoire = true
		elsif @A2.content == "X" && @B2.content == "X" && @C2.content == "X"
			@victoire = true	
		elsif @A3.content == "O" && @B3.content == "O" && @C3.content == "O"
			@victoire = true
		elsif @A3.content == "X" && @B3.content == "X" && @C3.content == "X"
			@victoire = true		
		elsif @A1.content == "O" && @B2.content == "O" && @C3.content == "O" 
			@victoire = true
		elsif @A1.content == "X" && @B2.content == "X" && @C3.content == "X"
			@victoire = true
		elsif @A3.content == "O" && @B2.content == "O" && @C1.content == "O"
			@victoire = true
		elsif @A3.content == "X" && @B2.content == "X" && @C1.content == "X"
			@victoire = true	
		elsif @round == 9
			@victoire = true		
		end
	end 

end
