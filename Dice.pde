void setup()
{
	size(500,600);
	noLoop();}
void draw()
{
		int total=0;
	for(int y=15; y<=460; y+=60)
	{
		for(int x=15; x<=460; x+=60)
		{
			Die one = new Die(x,y);
			one.show();
			one.work();
		}
	
		fill(0);
		text(total,300,500);
	
	}
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int total=0;
	int num, dX, dY;
	int add(int rY)
	{
		return(total+rY);
	}
	//variable declarations here
	Die(int x, int y) //constructor
	{
		dX=x;
		dY=y;
		num=(int)(Math.random()*6+1);
	}
	void work()
	{	
		if (num==1)
		{
			fill(255);
			ellipse(dX+25,dY+25,10,10);
			add(1);
		}
		if (num==2)
		{
			fill(255);
			ellipse(dX+10,dY+10,10,10);
			ellipse(dX+40,dY+40,10,10);
			add(2);
		}
		if (num==3)
		{
			fill(255);
			ellipse(dX+10,dY+10,10,10);
			ellipse(dX+25,dY+25,10,10);
			ellipse(dX+40,dY+40,10,10);
			add(3);
		}
		if (num==4)
		{
			fill(255);
			ellipse(dX+10,dY+10,10,10);
			ellipse(dX+10,dY+40,10,10);
			ellipse(dX+40,dY+40,10,10);
			ellipse(dX+40,dY+10,10,10);
			add(4);
		}

		
		if (num==5)
		{
			fill(255);
			ellipse(dX+10,dY+10,10,10);
			ellipse(dX+10,dY+40,10,10);
			ellipse(dX+25,dY+25,10,10);
			ellipse(dX+40,dY+40,10,10);
			ellipse(dX+40,dY+10,10,10);
			add(5);
		}
		if (num==6)
		{
			fill(255);
			ellipse(dX+10,dY+10,10,10);
			ellipse(dX+10,dY+40,10,10);
			ellipse(dX+10,dY+25,10,10);
			ellipse(dX+40,dY+25,10,10);
			ellipse(dX+40,dY+40,10,10);
			ellipse(dX+40,dY+10,10,10);
			add(6);
		}
		
		
	}
	void show()
	{
		fill(0);
		rect(dX,dY,50,50);
	}}


