//libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//global variables
Minim minim; //creates objectto access all functions
int numberOfSongs = 6;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates "Play List" variab les holding extensions WAV, AIFF, AU, 
int currentSong = numberOfSongs - numberOfSongs; //current song is 0

void setup() {
  fullScreen();
  population();
  textSetup();
  playPauseSetup();
  fastForwardSetup();
  fastRewindSetup();
  muteSetup();
  loopSetup();
  nextSongSetup();
  previousSongSetup();
  //
  minim = new Minim(this);
 song[currentSong] = minim.loadFile("music/Minecraft Music 1_12 - Minecraft (calm1.ogg) _MUSIC SELECTION.mp3");
 song[currentSong+1] = minim.loadFile("music/Dead Forest - Brian Bolger.mp3");
 song[currentSong+2] = minim.loadFile("music/Floating Home - Brian Bolger.mp3");
 song[currentSong+3] = minim.loadFile("music/Black Mass - Brian Bolger.mp3");
 song[currentSong+4] = minim.loadFile("music/Polymetric Juggling - DivKid.mp3");
 song[currentSong+5] = minim.loadFile("music/Somewhere Fuse - French Fuse.mp3");
 // song1.play();
}//End setup()

void draw() {
  powerButtonDraw();
  playPauseDraw();
  fastForwardDraw();
  fastRewindDraw();
  muteDraw();
  loopdraw();
  nextSongDraw();
  previousSongDraw();
}//End draw()

void keyPressed() {
}//End keypressed()

void mousePressed() {
  powerButtonMousePressed();
  playPauseMousePressed();
  fastForwardMousePressed();
  fastRewindMousePressed();
  muteMousePressed();
  loopMousePressed();
  nextSongMousePressed();
  previousSongMousePressed();
 }//End mousepressed()
