String data = "better,872884,FFFA401";
String[] splitData = split(data, ',');
String nom = splitData[0];
int valeur = int(splitData[1]);
color couleur = unhex(splitData[2]); //Conversion de la donnée en couleur
fill(couleur);
textSize(
text(nom,width/2, height/2);

