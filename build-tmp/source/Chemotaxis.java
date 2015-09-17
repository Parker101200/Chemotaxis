import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 Bacteria [] colony;
 Food cheese; //declare bacteria variables here   
 public void setup()   
 {     
 	size(400,400);
 	colony = new Bacteria[1000];
 	for(int i = 0; i <colony.length; i++)
 	{
 		colony[i] = new Bacteria(200,200,1);
 	}
 }   
 public void draw()   
 {   
 	background(255,255,255);
 	cheese = new Food(mouseX, mouseY);	
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

 	public void move()
 	{
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;
 	}   

 	public void show()
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

 	public void move()
 	{
 		myX = mouseX;
 		myY = mouseY;
 	}

 	public void show()
 	{
 		stroke(255,255);
 		fill(255,255);
 		rect(myX,myY,20,20);
 	}
 }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
