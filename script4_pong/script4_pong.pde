int rectWidth = 60;
int rectHeight = 10;
int ballX;
int ballY;
int modifX = 1;
int modifY = 1;
int raquetteY = 400;
int ballSize = 30;
float vitX = 4;
float vitY = 4;
int score = 0;

void setup()
{
  size(500, 500);
    textSize(32);
}

void draw()
{
  background(#FFFFFF);
  //Création de la balle
  background(150, 39, 18);
  ellipse(ballX, ballY, ballSize, ballSize);
  ballX += modifX*vitX;
  ballY += modifY*vitY;
  if (((ballX +(ballSize/2)) > width) || ((ballX - (ballSize/2) < 0)) && (modifX == -1) )
    modifX *= -1;
  if ((ballY - ballSize/2 < 0) && (modifY == -1))
    modifY *= -1;
  if (((ballY + ballSize/2) >= (raquetteY - rectHeight/2))  && (modifY == 1))
  {
    if ( (ballX > (mouseX - rectWidth/2))
      && (ballX < (mouseX + rectWidth/2)))
    {
      modifY *= -1;
      score += 1;
    } else {
      modifY = 1;
      ballX = ballY = 20;
      score = 0;
    }
  }

  text("Score : " + score + " points", 200, 30);




  fill(#CCCCCC);
  rectMode(CENTER);
  rect(mouseX, raquetteY, rectWidth, rectHeight);
}

