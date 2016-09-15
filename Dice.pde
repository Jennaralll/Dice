
int num;
int total;
void setup()
{
	
	background(0);
	size(500, 500);
	noLoop();
}
void draw()
{
	background(0);
	fill(255);
	textSize(20);
	text("Total: " + total, 50, 50);
	text("Number of Rolls: " + reRoll, 230, 50);
	for (int y = 100; y <= 400; y += 100)
	{
		for (int x = 50; x <= 370; x += 80)
		{
		  Die one = new Die(x, y);
          one.show();
	      one.roll();
	      total = total + num;

		}
	}
	

}

int reRoll = 1;
void mousePressed()
{
	reRoll += 1; 
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
		int diceSize = 30; 
		int spotSize = 15;
		num = (int)(Math.random()*6)+1;
		if (num  == 1)
		{
			fill(0);
			ellipse(myX + 38, myY + 35, spotSize, spotSize);
		}
		else if (num == 2)
		{
			fill(0);
			ellipse(myX + 20, myY + 20, spotSize, spotSize);
			ellipse(myX + 60, myY + 60, spotSize, spotSize);
		}
		else if (num == 3)
		{
			fill(0); 
			ellipse(myX + 20, myY + 20, spotSize, spotSize);
			ellipse(myX + 40, myY + 40, spotSize, spotSize);
			ellipse(myX + 60, myY + 60, spotSize, spotSize);
		}
		else if (num == 4)
		{
			fill(0); 
			ellipse(myX + 20, myY + 20, spotSize, spotSize);
			ellipse(myX + 60, myY + 20, spotSize, spotSize);
			ellipse(myX + 20, myY + 60, spotSize, spotSize);
			ellipse(myX + 60, myY + 60, spotSize, spotSize);
		}
		else if (num == 5)
		{
			fill(0);
			ellipse(myX + 20, myY + 20, spotSize, spotSize);
			ellipse(myX + 60, myY + 20, spotSize, spotSize);
			ellipse(myX + 40, myY + 40, spotSize, spotSize);
			ellipse(myX + 20, myY + 60, spotSize, spotSize);
			ellipse(myX + 60, myY + 60, spotSize, spotSize);
		}
		else if (num == 6)
		{
			fill(0);
			ellipse(myX + 20, myY + 20, spotSize, spotSize);
			ellipse(myX + 20, myY + 40, spotSize, spotSize);
			ellipse(myX + 20, myY + 60, spotSize, spotSize);
			ellipse(myX + 60, myY + 20, spotSize, spotSize);
			ellipse(myX + 60, myY + 40, spotSize, spotSize);
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
