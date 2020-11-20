Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
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
  for (int i = 0; i < 200; i++)
  {
    nightSky[i].show();
    bob.show();
  }
  bob.show();
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
