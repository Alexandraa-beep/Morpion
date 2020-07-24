# Morpion
Bienvenue dans le programme Morpion! 

Ce programme nous permet de jouer au Morpion avec 2 joueurs. 

Dans ce programme nous disposons : 

de 4 classes qui correspondent à des objets qu'on va manipuler pour faire tourner le jeu :

Game : c'est le jeu. Elle initialise tout, lance une partie (qui se termine avec une victoire ou un nul), permet de jouer un tour, de chercher si la partie est finie, etc.

Player : ce sont les joueurs. Il doit y avoir 2 instances de cette classe lors d'une partie.

Board : c'est le plateau. Il doit y avoir une instance de cette classe lors d'une partie.

BoardCase : c'est une case. Il devrait y avoir 9 instances de cette classe lors d'une partie.

1 classes va nous permettre d'organiser le programme :

Application : cette classe va nous permettre de lancer le jeu. Elle va faire une boucle infinie de parties (on joue tant que les joueurs veulent continuer) et lancer l'instanciation d'un Game.

