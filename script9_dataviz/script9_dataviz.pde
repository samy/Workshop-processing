void setup()
{

  size(800, 600);
  textAlign(CENTER, CENTER);
  background(255);

  String[] rawData = loadStrings("feelings.csv");
  int compteur = 0;
  while (compteur < rawData.length) {
    String data = rawData[compteur];
    String[] splitData = split(data, ",");
    String nom = splitData[0];
    int valeur = int(splitData[1]);
    color couleur = unhex(splitData[2]); //Conversion de la donnée en couleur
    fill(couleur);
    textSize(map(valeur, 133, 872884, 5, 180));
    text(nom, random(width), random(height));
    compteur += 1;
  }
}

