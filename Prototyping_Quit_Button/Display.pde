String landscape, portrait, displayOrientation;

void displayOrientation() {
  landscape = "You are good to go!";
  portrait = "Turn your phone";
  displayOrientation = ( displayWidth >= displayHeight) ? landscape : portrait ;
  if ( displayOrientation==portrait ) println ( displayOrientation );
  if ( displayOrientation==landscape ) appWidth = displayWidth;
  if ( displayOrientation==landscape ) appHeight = displayHeight;
  //
}//End displayOrientation
