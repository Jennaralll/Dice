int num;
void setup()
{
	
	background(0);
	size(500, 500);
	noLoop();
}
void draw()
{
	//your code here
	Die one = new Die(250, 250);
	one.show();
	one.roll();

}
void mousePressed()
{

	background(0);
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY= y;
		//variable initializations here
	}
	void roll()
	{
		//your code here
		int diceSize = 25; 
		int spotSize = 15;
		num = (int)(Math.random()*4);
		if (num  == 1)
		{
			fill(0, 0, 255);
			ellipse(myX + 38, myY + 35, spotSize, spotSize);
		}
		else if (num == 2)
		{
			fill(0, 0, 255);
			ellipse(myX + 30, myY + 30, spotSize, spotSize);
			ellipse(myX + 50, myY + 50, spotSize, spotSize);
		}
		else if (num == 3)
		{
			fill(0, 0, 255); 
			ellipse(myX + 20, myY + 20, spotSize, spotSize);
			ellipse(myX + 40, myY + 40, spotSize, spotSize);
			ellipse(myX + 60, myY + 60, spotSize, spotSize);
		}
	}
	void show()
	{
		int diceSize = 25; 
		fill(255);
		rect(myX, myY, diceSize+50, diceSize+50);

		//your code here
	}
}
