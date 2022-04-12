//Global Variables
float  quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color yellow=#FFFF00, purple=#FF00FF, buttonColour;
//
void quitButtonSetupPopulation(int centerX, int centerY) { //ignore Parameter concept
  quitButtonX = centerX - appWidth*1/4;
  quitButtonY = centerY - appHeight*1/4;
  quitButtonWidth = appWidth*1/2;
  quitButtonHeight = appHeight*1/2;
}//
  void quitButtonDraw() 
  {
    if ( displayOrientation==portrait ) println ( displayOrientation ); 
    //Hover-Over effect
    if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
      buttonColour = yellow;
    } else {
      buttonColour = purple;
    }//End Hover-Over Effect
    //
    //Alternate verification that mouseX&Y is on the button
    println("X-value", quitButtonX, mouseX, quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
    println("Y-value", quitButtonY, mouseY, quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
    //
    fill(buttonColour);
    rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
    fill(resetWhite);
  }//End quitButtonDraw
  //
  void quitButtonKeyPressed() 
  {
    if ( key=='Q' || key=='q')exit(); // Keyboard is separated on key-variables: key & keyCode
  } //End quitButtonKeyPressed
  //
  void quitButtonMousePressed() 
  {
    if (  mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  } //End quitButtonMousePressed
  //
  //End Quit Button
