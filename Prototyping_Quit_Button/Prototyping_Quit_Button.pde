//Global Variables
int appWidth, appHeight;
float  quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#FFFF00, purple=#FF00FF, resetWhite=#FFFFFF, buttonColour;
//
void setup() 
{
  fullScreen ();
  //Landscape, not portrait nor square
  String landscape = "You are good to go!";
  String portrait = "Turn your phone";
  String displayOrientation = ( displayWidth >= displayHeight) ? "You are good to go!": "Turn your phone" ;
  if ( displayOrientation==portrait ) println ( displayOrientation );
  if ( displayOrientation==landscape ) appWidth = displayWidth;
  if ( displayOrientation==landscape ) appHeight = displayHeight;
  println (appWidth, appHeight);
  //
  //Note: variables similar to Face Rect() on Measles
  int smallerDisplayDimension = appHeight;
  int canvasCenter = smallerDisplayDimension*1/2;
  quitButtonX = (appWidth*1/2) - appWidth*1/4;
  quitButtonY = canvasCenter - appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}; //End setup
//
void draw() 
{
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {} else {}
  buttonColour = yellow; //Yellow
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(resetWhite);
}; // End draw
//
void keyPressed() 
{
  if ( key=='Q' || key=='q')exit(); // Keyboard is separated on key-variables: key & keyCode
}; // End keyPressed
//
void mousePressed() 
{

} // End mousePressed
//
//End Main Program
