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
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() >= song[currentSong].length()-3000 ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else {
      song[currentSong].play();
    }
  }
}
