//Global Variables
int appWidth, appHeight;
color resetWhite=#FFFFFF;
//
void setup() 
{
  fullScreen ();
  displayOrientation();
  population();
  //Note: variables similar to Face Rect() on Measles
} //End setup
//
void draw() 
{
  quitButtonDraw();
}; // End draw
//
void keyPressed() 
{
  quitButtonKeyPressed();
} // End keyPressed
//
void mousePressed() 
{
  quitButtonMousePressed();
} // End mousePressed
//
//End Main Program
