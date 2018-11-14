class Asteroids extends Floater  
{   	
	private int rotSpeed;
 	public void setX(int x){myCenterX = x;}  
 	public int getX(){return (int)myCenterX;}   
 	public void setY(int y){myCenterY = y;}   
 	public int getY(){return (int)myCenterY;}   
 	public void setDirectionX(double x){myDirectionX = x;}   
	public double getDirectionX(){return myDirectionX;}   
	public void setDirectionY(double y){myDirectionY = y;}   
 	public double getDirectionY(){return myDirectionY;}   
	public void setPointDirection(int degrees){myPointDirection = degrees;} 
	public double getPointDirection(){return myPointDirection;} 
	public Asteroids(){
		rotSpeed = (int)(Math.random()*21)-10;
		if (rotSpeed == 0)
		{
			rotSpeed = 5;
		}
		corners = 8;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -18;
		yCorners[0] = 12;
		xCorners[1] = -8;
		yCorners[1] = 14;
		xCorners[2] = 0;
		yCorners[2] = 16;
		xCorners[3] = 18;
		yCorners[3] = 6;
		xCorners[4] = 12;
		yCorners[4] = -6;
		xCorners[5] = 0;
		yCorners[5] = -4;
		xCorners[6] = -12;
		yCorners[6] = -6;
		xCorners[7] = -22;
		yCorners[7] = 2;
		myColor =  #868686;
		myCenterX = (int)(Math.random()*500);
		myCenterY = (int)(Math.random()*500);
		myDirectionX = (int)(Math.random()*4)-2;
		if(myDirectionX == 0)
		{
			myDirectionX = 1;
		}
		myDirectionY = (int)(Math.random()*4)-2;
		}

	public void move()
	{
		turn(rotSpeed);
		super.move();
	}


}