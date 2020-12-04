Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
ArrayList <Asteroid> theList = new ArrayList <Asteroid>();

public void setup() 
{
  size(500, 500);
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  bob.accelerate(0);
  bob.turn(90);
}
public void draw() 
{
  background(0);
  Asteroid joe = new Asteroid();
  theList.add(joe);
  for (int y = 0; y < 5; y++)
  {
    theList.add(new Asteroid());
  }

  for (int nI = 0; nI < 6; nI++)
  {
    theList.get(nI).show();
    theList.get(nI).move();
  }

  for (int nI = 0; nI < theList.size(); nI++)
  {
    if (dist(theList.get(nI).myCenterX, theList.get(nI).myCenterY, bob.myCenterX, bob.myCenterY) < 20) 
    {
      theList.remove(nI);
    }
  }

  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
    bob.show();
  }
  bob.move();
}

public void keyPressed()
{
  if (key == 'w') {
    bob.accelerate(1);
  }
  if (key == 'a') {
    bob.turn(-15);
  }
  if (key == 'd') {
    bob.turn(15);
  }
  if (key == 's') {
    bob.hyperspace();
  }
}

