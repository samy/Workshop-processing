float yPos = 1.0;
float xPos = 1.0;
float i = 0;
int fact = 1;
int red = 0;

void setup() //S'éxécute une seule fois, au lancement du programme
{
  size(displayWidth, displayHeight); //La largeur de l'animation fait la largeur de l'écran
}

void draw() //
{
  /* La fonction draw s'éxécute 60 fois par seconde par défaut
  A chaque fois qu'elle s'éxécute, on change la couleur de remplissage des formes qu'on affiche
  on calcule à chaque fois les 3 valeurs de couleurs en utilisant un entier (int) aléatoire entre 0 et 255 ("random(0,255)") */
  fill((int)random(0, 255), (int)random(0, 255), (int)random(0, 255));
  
  //Si on a dépassé la hauteur de l'écran ("height")
  if (yPos > height) {
    xPos = 0; //On remet la position sur l'axe X à 0
    yPos = 0;
    background(#CCCCCC);
  }
  rect(xPos, yPos, 20, 20);
  if (xPos > (width*0.9)) {

    fact = -1;
    yPos += 40;
  }
  if (xPos < 1) {

    fact = 1;
    yPos += 40;
  }
  if (i == 0)
  {
    yPos += 20;
    xPos += fact * 20;
    i = 1;
  } else {
    yPos -= 20;
    xPos += fact * 20;
    i = 0;
  }
}
void mousePressed()
{
  background(#CCCCCC);
}
void keyPressed()
{
  if (red == 0) {
    background(#FF0000);
    red = 1;
  } else {
    background(#CCCCCC);
    red = 0;
  }
}

