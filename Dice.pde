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
	Die first = new Die(250, 250);
	first.show();

}
void mousePressed()
{

	background(0);
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX;
	int myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY= y;
		//variable initializations here
	}
	void roll()
	{
		//your code here
		num = (int)(Math.random()*2);
		if (num  == 1)
		{
			fill(255, 0, 255);
			ellipse(270, 250, 30, 30);
		}
	}
	void show()
	{
		
		fill(255);
		rect(250, 250, 50, 50);

		//your code here
	}
}
