float nextSongX, nextSongY, nextSongWidth, nextSongHeight;
void nextSongSetup() {
  nextSongX =displayWidth*8/10;
  nextSongY =displayHeight*2/3;
  nextSongWidth =displayWidth*1/20;
  nextSongHeight =displayHeight*1/10;
}

void nextSongDraw() {
  rect(nextSongX, nextSongY, nextSongWidth, nextSongHeight);
}

void nextSongMousePressed() {
  if (mouseX>nextSongX && mouseX<nextSongX+nextSongWidth && mouseY>nextSongY && mouseY<nextSongY+nextSongHeight) {
   if ( song[currentSong].isPlaying() ) {
   song[currentSong].pause();
   song[currentSong].rewind();
    //
   arrayFixError();
   ///
   song[currentSong].play();
   } else {
   song[currentSong].rewind();
    //
   arrayFixError();
   }
  }
}
