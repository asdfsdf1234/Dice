void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	Die one = new Die(200,225);
	Die two = new Die(260,225);
	one.show();
	two.show();
	one.roll();
	two.roll();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int roll, dX, dY;

	//variable declarations here
	Die(int x, int y) //constructor
	{
		dX=x;
		dY=y;
		roll=4;
		//roll=(int)(Math.random()*7+1)
	}
	void roll()
	{
		if (roll==1)
		{
			fill(255);
			ellipse(dX+25,dY+25,10,10);
		}
		if (roll==2)
		{
			fill(255);
			ellipse(dX+10,dY+10,10,10);
			ellipse(dX+40,dY+40,10,10);
		}
		if (roll==3)
		{
			fill(255);
			ellipse(dX+10,dY+10,10,10);
			ellipse(dX+25,dY+25,10,10);
			ellipse(dX+40,dY+40,10,10);
		}
		if (roll==4)
		{
			fill(255);
			ellipse(dX+10,dY+10,10,10);
			ellipse(dX+10,dY+40,10,10);
			ellipse(dX+40,dY+40,10,10);
			ellipse(dX+40,dY+10,10,10);
		}
		if (roll==4)
		{
			fill(255);
			ellipse(dX+10,dY+10,10,10);
			ellipse(dX+10,dY+40,10,10);
			ellipse(dX+40,dY+40,10,10);
			ellipse(dX+40,dY+10,10,10);
		}
		
	}
	void show()
	{
		fill(0);
		rect(dX,dY,50,50);
	}
}
