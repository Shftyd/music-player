float previousSongX, previousSongY, previousSongWidth, previousSongHeight;
void previousSongSetup() {
  previousSongX =displayWidth*3/20;
  previousSongY =displayHeight*2/3;
  previousSongWidth =displayWidth*1/20;
  previousSongHeight =displayHeight*1/10;
}

void previousSongDraw() {
  rect(previousSongX, previousSongY, previousSongWidth, previousSongHeight);
}

void previousSongMousePressed() {
  if (mouseX>previousSongX && mouseX<previousSongX+previousSongWidth && mouseY>previousSongY && mouseY<previousSongY+previousSongHeight) {
   if (song[currentSong].isPlaying() ) {
   song[currentSong].pause();
   song[currentSong].rewind();
   
    //
   arrayFixError();
   //

   song[currentSong].play(); 
   } else {
  song[currentSong].  rewind();
  arrayFixError();

    //
   arrayFixError();
   //
   
   
   }
  }
}
