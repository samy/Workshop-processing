PFont font;
int nbreTypos;

void setup() {
  size(displayWidth, displayHeight);
  nbreTypos = PFont.list().length;
  fill(0);
  frameRate(5);
}

void draw()
{
  background(255);
  font = createFont(PFont.list()[(int)random(nbreTypos)], 200); //Chargement de la police indiquée dans cette taille;
  textFont(font); //Génération de la police
  textAlign(CENTER, LEFT);
    text("Hello Typo", width/2, height/2);
}

