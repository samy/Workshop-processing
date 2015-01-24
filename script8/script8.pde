size(800, 600);
textAlign(CENTER, CENTER);
background(255);
String data = "better,872884,FFFA401";
String[] splitData = split(data, ',');
String nom = splitData[0];
int valeur = int(splitData[1]);
color couleur = unhex(splitData[2]); //Conversion de la donnée en couleur
fill(couleur);
textSize(map(valeur, 133, 872884, 5, 180));
text(nom, width/2, height/2);

