Spaceship bob;
ArrayList <Asteroids> list = new ArrayList <Asteroids>();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  bob = new Spaceship();
  for(int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i] = new Star();
  	}
  	for(int i = 0; i < 10; i++){
  		list.add(new Asteroids());
  	}
}
public void draw() 
{
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i].show();
  	}
  	for (int i = 0; i < list.size(); i++)
  	{
  		list.get(i).move();
  		list.get(i).show();
  		float d = dist(bob.getX(), bob.getY(), list.get(i).getX(), list.get(i).getY());
  		if (d < 20)
  			list.remove(i);
  	}
  bob.move();		
  bob.show();	

}

public void keyPressed()
{
	if(key == 'h')
	{
		bob.setDirectionX(0);
		bob.setDirectionY(0);
		bob.setPointDirection((int)(Math.random()*360));
		bob.setX((int)(Math.random()*500));
		bob.setY((int)(Math.random()*500));
	}
	if(key == 'j')
	{
		bob.turn(30);
	}
	if(key == 'g')
	{
		bob.turn(-30);
	}
	if(key == 'y')
	{
		bob.accelerate(1);
	}
  }

