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
  if (mousePressed) //Seulement si le bouton de la souris est pressé
  {
    float distanceSouris = dist(mouseX, mouseY, pmouseX, pmouseY); //On calcule la distance entre les coordonnées actuelles de la souris et les précédentes
    int compteur = 0;
    float nbreRepet = random(5,30);
    
    while (compteur < nbreRepet)
    {
      //image(monImage, width/2, height/2); // Méthode pour afficher l'image (mais elle est de toute façon chargée en mémoire)
      int posX = (int)(mouseX + random(-distanceSouris, distanceSouris)); //On stocke une valeur aléatoire de X
      int posY = (int)(mouseY + random(-distanceSouris, distanceSouris)); //On stocke une valeur aléatoire de Y
      maCouleur = monImage.get(posX, posY ); //On récupère la couleur du point correspondant
      
      fill(maCouleur); //On prépare cette valeur d ecouleur
      ellipse(posX, posY, distanceSouris, distanceSouris); //On crée un rond portant cette couleur
      
      compteur += 1;
    }
  }
}

void keyPressed() //Dans le cas d'une pression de touche
{
   if (key =='b') { //Si on a appuyé sur b
     background(255); //On change le fond
   } else if (key == 's') { //Si on a appuyé sur S
      saveFrame("export###.png"); //On exporte le canvas vers un PNG, avec le # comme caractère générique remplacé par le n° de frame
   } 
}

