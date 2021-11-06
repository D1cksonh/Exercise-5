import processing.sound.*;

SoundFile sound;

void setup() {
  size(800,600);
  
  sound = new SoundFile(this, "boom.mp3");
}

void draw() {
  background(255);
  soundPlay();
}

void soundPlay() {
 if(mousePressed) {
   sound.play(); 
  } 
}
