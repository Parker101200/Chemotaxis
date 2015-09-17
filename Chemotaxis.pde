 Bacteria [] colony;
 Food cheese; //declare bacteria variables here   
 void setup()   
 {     
 	size(400,400);
 	cheese = new Food(mouseX, mouseY);	
 	colony = new Bacteria[1000];
 	for(int i = 0; i <colony.length; i++)
 	{
 		colony[i] = new Bacteria(200,200,1);
 	}
 }   
 void draw()   
 {   
 	background(255,255,255);
 	for(int i = 0; i <colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].move(); //move and show the bacteria   	
 	}
 	cheese.show();
 	cheese.move();
 }  
 class Bacteria    
 {  
 	int myX, myY, bColor;     
 	Bacteria(int x, int y, int c)
 	{
 		myX = x;
 		myY = y;
 		bColor = c;
 	}

 	void move()
 	{
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}   

 	void show()
 	{
 		stroke(0);
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		ellipse(myX, myY, 5, 5);
 	}
 }    
 class Food
 {
 	int myX, myY;
 	Food(int x, int y)
 	{
 		myX = x;
 		myY = y;
 	}

 	void move()
 	{
 		myX = mouseX;
 		myY = mouseY;
 	}

 	void show()
 	{
 		stroke(255,255);
 		fill(255,255);
 		rect(myX,myY,20,20);
 	}
 }