float loopX, loopY, loopWidth, loopHeight;
void loopSetup() {
  loopX =displayWidth*26/30;
  loopY =displayHeight*3/4;
  loopWidth =displayWidth*1/20;
  loopHeight =displayHeight*1/10;
}

void loopdraw() {
  rect(loopX, loopY, loopWidth, loopHeight);
}

void loopMousePressed() {
  int loopIntNum = 2;
  if (mouseX>loopX && mouseX<loopX+loopWidth && mouseY>loopY && mouseY< loopY+loopHeight) song1.loop(loopIntNum);
}
