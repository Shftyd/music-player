float loopX, loopY, loopWidth, loopHeight;
void loopSetup() {
  loopX =displayWidth*28/30;
  loopY =displayHeight*8/10;
  loopWidth =displayWidth*1/20;
  loopHeight =displayHeight*1/10;
}

void loopdraw() {
  rect(loopX, loopY, loopWidth, loopHeight);
}

void loopMousePressed() {
  int loopIntNum = 2;
  if (mouseX>loopX && mouseX<loopX+loopWidth && mouseY>loopY && mouseY< loopY+loopHeight) song[currentSong].loop(loopIntNum);
}
