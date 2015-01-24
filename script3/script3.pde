float yPos = 1.0;
float xPos = 1.0;
float i = 0; //Nombre flottant
int fact = 1;
int red = 0; //Entier
boolean myBoolean = true; //Booléen
char myChar = 'G'; //Caractère
String myString = "Hello World"; //Chaîne de caractère

void setup() //S'éxécute une seule fois, au lancement du programme
{
 // frameRate(5);
  size(displayWidth,displayHeight);  
}

void draw()
{
  background(#CCCCCC);  
  ellipse(mouseX, mouseY, 40,40); 
}
