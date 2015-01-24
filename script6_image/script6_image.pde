PImage monImage; //Variable de type image
color maCouleur;

void setup()
{
  size(400, 600);
  monImage = loadImage("photo.jpg");
  imageMode(CENTER);
  monImage.resize(width, height);
  noStroke();
}
void draw() {
  //background(#CCCCCC);
  
  //image(monImage, width/2, height/2); // Méthode pour afficher l'image (mais elle est de toute façon chargée en mémoire)
  int posX = (int)random(0, width); //On stocke une valeur aléatoire de X
  int posY = (int)random(0, height); //On stocke une valeur aléatoire de Y
  maCouleur = monImage.get(posX, posY ); //On récupère la couleur du point correspondant
  
  fill(maCouleur); //On prépare cette valeur d ecouleur
  ellipse(posX, posY, 5, 5); //On crée un rond portant cette couleur
}

