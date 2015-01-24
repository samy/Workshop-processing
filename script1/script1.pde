size(600,600); //Indication de la taille globale du canvas

point (50, 50); //Point
line (0,100,100,0); //Ligne (deux points)
triangle(1,5,80,2,9,20); //Triangle (trois points)
quad(25,25,75,25,75,75,25,75); //Quadrilatère (quatre points)
//La superposition des éléments dépend de l'ordre dans le script

//Pour des polygones
beginShape(); //Démarrage de la forme
vertex(400, 400); //1er point
vertex(400, 450); //2e point
vertex(200, 300); //3e point
endShape(CLOSE); //Fin de la forme, l'argument CLOSE permettant la fermeture automatique
