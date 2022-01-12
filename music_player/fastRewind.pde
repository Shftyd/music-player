float fastRewindX, fastRewindY, fastRewindWidth, fastRewindHeight;
void fastRewindSetup() {
  fastRewindX =displayWidth*0;
  fastRewindY =displayHeight*0;
  fastRewindWidth =displayWidth*1/20;
  fastRewindHeight =displayHeight*1/10;
}

void fastRewindDraw() {
  rect(fastRewindX, fastRewindY, fastRewindWidth, fastRewindHeight);
}

void fastRewindMousePressed() {
  if (mouseX>fastRewindX && mouseX<fastRewindX+fastRewindWidth && mouseY>fastRewindY && mouseY< fastRewindY+fastRewindHeight) song1.skip(-240000);
  
}
