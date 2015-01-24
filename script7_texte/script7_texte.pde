PFont font;
int nbreTypos;

void setup() {
  size(500, 100);
  nbreTypos = PFont.list().length;
  fill(0);
  frameRate(20);
}

void draw()
{
  background(255);
  font = createFont(PFont.list()[(int)random(nbreTypos)], 32); //Chargement de la police indiquée dans cette taille;
  textFont(font); //Génération de la police
  textAlign(CENTER, LEFT);
    text("Hello Typo", width/2, height/2);
}

