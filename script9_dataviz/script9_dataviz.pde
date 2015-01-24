String[] noms;
int[] valeurs;
color[] couleurs;

void setup()
{

  size(800, 600);
  textAlign(CENTER, CENTER);
  background(255);

  String[] rawData = loadStrings("feelings.csv");
  noms = new String[rawData.length];
  valeurs = new int[rawData.length];
  couleurs = new color[rawData.length];
  
  int compteur = 0;
  while (compteur < rawData.length) {
    String data = rawData[compteur];
    String[] splitData = split(data, ",");
    String nom = splitData[0];
    int valeur = int(splitData[1]);
    color couleur = unhex(splitData[2]); //Conversion de la donnée en couleur
    
    noms[compteur] = nom;
    valeurs[compteur] = valeur;
    couleurs[compteur] = couleur;
    
   
    compteur += 1;
  }
  frameRate(5);
}

void draw() {
    background(255);
    fill(couleurs[frameCount]); //frameCount est le n° de frame
    textSize(map(valeurs[frameCount], 133, 872884, 5, 180));
    text(noms[frameCount], width/2, height/2); 
}

