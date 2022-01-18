float muteX, muteY, muteWidth, muteHeight;
void muteSetup() {
  muteX =displayWidth*24/30;
  muteY =displayHeight*3/4;
  muteWidth =displayWidth*1/20;
  muteHeight =displayHeight*1/10;
}

void muteDraw() {
  rect(muteX, muteY, muteWidth, muteHeight);
}

void muteMousePressed() {
  if (mouseX>muteX && mouseX<muteX+muteWidth && mouseY>muteY && mouseY< muteY+muteHeight) {if (song[currentSong].isMuted() ) {song[currentSong].unmute();} else {song[currentSong].mute();}}
}
