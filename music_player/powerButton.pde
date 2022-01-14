//Global variables
String string = "press me daddy";
color red=#FF0000, resetWhite=#FFFFFF, buttonColor;
float powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight;
//
void powerButton() {
  powerButtonX=displayWidth*0; 
  powerButtonY=displayHeight*0;
  powerButtonWidth=displayHeight*10;
  powerButtonHeight=displayHeight*1/15;
  rect(powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
}// Emd powerbutton
//
void powerButtonDraw() {

  //Hoverover
  if (mouseX>powerButtonX && mouseX<powerButtonX+powerButtonWidth && mouseY> powerButtonY && mouseY< powerButtonY+powerButtonHeight) {
    buttonColor=resetWhite;
    fill(red);
    rect(powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
    fill(resetWhite);
    holverOverButtonFill();
  } else {
    buttonColor=red;
    holverOverButtonFill();
  }
  textCode(string,55, powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
  //text
}//End powerButtonDraw()

void powerButtonMousePressed() {
  if (mouseX>powerButtonX && mouseX<powerButtonX+powerButtonWidth && mouseY> powerButtonY && mouseY< powerButtonY+powerButtonHeight) exit();
}//End powerButtonMousePressed()

void holverOverButtonFill() {
  fill(buttonColor);
    noStroke();
    rect(powerButtonX, powerButtonY, powerButtonWidth, powerButtonHeight);
    stroke(1);
    fill(resetWhite);
}
