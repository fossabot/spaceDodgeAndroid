class Troid {

  float x;
  float y;
  float yspeed = 6;

  float rightEdge;
  float leftEdge;
  float topEdge;
  float bottomEdge;

  boolean notYetTapped = true;
  boolean collided = false;

  Troid() 
  {
    x  = random(width);
    y  = random(-100000, -50);
  }

  void fall() 
  {
    y = y + yspeed;
  }

  void show() 
  {
    strokeWeight(2);
    stroke(138, 43, 226);
    rectMode(CENTER);
    rect(x, y, 60, 20);
  }

  void edgeDetect()
  {
    leftEdge = x - 30;
    rightEdge = x + 30;
    topEdge = y - 10;
    bottomEdge = y + 10;
  }

  void collide()
  {
    if (notYetTapped == true)
    {
      if (leftEdge <= player.rightEdge && rightEdge >= player.leftEdge && bottomEdge >= player.topEdge && bottomEdge <= player.bottomEdge)
      {
        //background(255);
        collided = true;
        notYetTapped = false;
      }
    }
  }


  void boop()
  {
    if (collided == true)
    {
      player.lives -= 1;
      collided = false;
    }
  }
}