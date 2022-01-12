float muteX, muteY, muteWidth, muteHeight;
void muteSetup() {
  muteX =displayWidth*1/2;
  muteY =displayHeight*1/2;
  muteWidth =displayWidth*1/10;
  muteHeight =displayHeight*1/10;
}

void muteDraw() {
  rect(muteX, muteY, muteWidth, muteHeight);
}

void muteMousePressed() {
  if (mouseX>muteX && mouseX<muteX+muteWidth && mouseY>muteY && mouseY< muteY+muteHeight) {if (song1.isMuted() ) {song1.unmute();} else {song1.mute();}}
}
