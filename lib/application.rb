class Application # Class Application : permet de lancer l'introduction du jeu 
	def statut # Permet de lancer le jeu 
		
		puts "Tu es prêt(e) ? Y/N"
		response = gets.chomp.to_s
		if response == "Y" || response == "y"
			puts ""
			return true
		else
			false
		end
	end
end