void setup()
{
}
void draw() {
  noStroke();
  if (mouseX < width / 3) { //Si on est dans le 1er tiers de l'animation
    fill(0); //On colore en noir
  } else if (mouseX < 2*width / 3) { //Si on est dans le 2nd tiers moins le 1er tiers
    fill(255); //On colore en blanc
  } else {
    fill(#CCCCCC); //A défaut, on colore en gris
  }
  ellipse(mouseX, mouseY, 10, 10);
}

