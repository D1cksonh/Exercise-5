Circle c1, c2, c3;

import processing.sound.*;
SoundFile boom;
SoundFile teleport;
SoundFile sus;

void setup() {
  size(800,600);
  c1 = new Circle(800);
  c2 = new Circle(width/2);
  c3 = new Circle(300);
  
  boom = new SoundFile(this,"boom.mp3");// Source: https://www.youtube.com/watch?v=_vBVGjFdwk4
  teleport = new SoundFile(this,"Teleport.mp3");// Source: https://www.youtube.com/watch?v=Ni26LQOUc3Q
  sus = new SoundFile(this,"Sus.mp3");// Source: https://www.youtube.com/watch?v=sbHvogpfwro
  
}

void draw() {
  background(255);
  fill(0);
  textSize(50);
  text("Press the Circles to Play Sound",30,100);
  
  c1.display();
  c1.edge();
  c1.interaction();
  
  c2.display();
  c2.edge();
  c2.interaction();
  
  c3.display();
  c3.edge();
  c3.interaction();
}
