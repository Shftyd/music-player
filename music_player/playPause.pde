float playPauseX, playPauseY, playPauseWidth, playPauseHeight;
void playPauseSetup() {
  
 
 playPauseX =displayWidth*9/20;
 playPauseY =displayHeight*2/3;
 playPauseWidth =displayWidth*1/10;
 playPauseHeight =displayHeight*1/10;
}

void playPauseDraw() {
  rect(playPauseX, playPauseY, playPauseWidth, playPauseHeight);
}

void playPauseMousePressed() {
  if (mouseX>playPauseX && mouseX<playPauseX+playPauseWidth && mouseY>playPauseY && mouseY< playPauseY+playPauseHeight) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-3000 ) {
      song1.pause();
      song1.rewind();
    } else {
      song1.play();
    }
  }
}
