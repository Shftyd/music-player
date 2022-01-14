float fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight;

void fastForwardSetup() {
  fastForwardX =displayWidth*2/3;
  fastForwardY =displayHeight*2/3;
  fastForwardWidth =displayWidth*1/20;
  fastForwardHeight =displayHeight*1/10;
}

void fastForwardDraw() {
  rect(fastForwardX, fastForwardY, fastForwardWidth, fastForwardHeight);
}

void fastForwardMousePressed() {
  if (mouseX>fastForwardX && mouseX<fastForwardX+fastForwardWidth && mouseY>fastForwardY && mouseY< fastForwardY+fastForwardHeight) song1.skip(3000);
  
}
