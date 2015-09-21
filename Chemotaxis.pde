 Bacteria [] colony;
 void setup()   
 {     
 	size(400,400);
 	colony = new Bacteria[1000];
 	for(int i = 0; i < colony.length; i++)
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
 		myX = myX + (int)(Math.random()*11)-5;
 		myY = myY + (int)(Math.random()*11)-5;
 	}   

 	void show()
 	{
 		stroke(0);
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		ellipse(myX, myY, 5, 5);
 	}
 }    