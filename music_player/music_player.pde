//libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//global variables
Minim minim; //creates objectto access all functions
AudioPlayer song1; //creates "Play List" variab les holding extensions WAV, AIFF, AU, 

void setup() {
  fullScreen();
  population();
  textSetup();
  //
  minim = new Minim(this);
  song1 = minim.loadFile("Minecraft Music 1_12 - Minecraft (calm1.ogg) _MUSIC SELECTION.mp3");
  song1.play();
}//End setup()

void draw() {
    powerButtonDraw();
}//End draw()

void keyPressed() {

}//End keypressed()

void mousePressed() {
  powerButtonMousePressed();
}//End mousepressed()
