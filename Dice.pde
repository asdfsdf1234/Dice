void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	Die one = new Die(5,5);
	Die two = new Die(100,100);
	one.roll();
	one.show();

	two.show();
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
		roll=1;
		//roll=(int)(Math.random()*7+1)
	}
	void roll()
	{
		fill(255);
		if(roll == 1){ellipse(dX+25,dY-25,10,10);}
	}
	void show()
	{
		fill(0);
		rect(dX,dY,50,50);
	}
}
