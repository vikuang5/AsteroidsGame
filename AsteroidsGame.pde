Spaceship bob = new Spaceship();
Star [] nightSky = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>();

public void setup() 
{
  size(500, 500);
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
  for (int i = 0; i < shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
    float d = dist(asteroids.get(i).myCenterX, asteroids.get(i).myCenterY, shots.get(i).myCenterX, shots.get(i).myCenterY);
    if (d < 50) {
      shots.remove(i);
      asteroids.remove(i);
      break;
    }
  }


  Asteroid joe = new Asteroid();
  asteroids.add(joe);
  for (int y = 0; y < 5; y++)
  {
    asteroids.add(new Asteroid());
  }

  for (int nI = 0; nI < 6; nI++)
  {
    asteroids.get(nI).show();
    asteroids.get(nI).move();
  }

  for (int nI = 0; nI < asteroids.size(); nI++ )
  {
    if (dist(asteroids.get(nI).myCenterX, asteroids.get(nI).myCenterY, bob.myCenterX, bob.myCenterY) < 20) 
    {
      asteroids.remove(nI);
      break;
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
  if (key == ' ')
    shots.add(new Bullet(bob));
}

