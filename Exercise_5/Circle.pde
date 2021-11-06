class Circle {
  float circleX;
  float circleY = random(height);
  float red = 255;
  float green = 0;
  float blue = 0;
  
  Circle(float tempC) {
   circleX =  tempC;
  }
  
  void display() {
   fill(red,green,blue);
   ellipse(circleX,circleY,50,50);
   
   circleX -= 7;
  }
  
  void edge() {
    if(circleX < 0) {
     circleX = 800;
     circleY = random(height);
    }
  }
  
  void interaction() {
    if(mousePressed && mouseY < circleY+50 && mouseY > circleY-50 && mouseX < circleX+50 && mouseX > circleX-50 && red == 255) {
      reset();
      red = 0;
      green = 255;
      boom.play();
    }
    if ( mousePressed && mouseY < circleY+50 && mouseY > circleY-50 && mouseX < circleX+50 && mouseX > circleX-50 && green == 255) {
      reset();
      blue = 255;
      green = 0;
      teleport.play();
    } 
    if ( mousePressed && mouseY < circleY+50 && mouseY > circleY-50 && mouseX < circleX+50 && mouseX > circleX-50 && blue == 255) {
      reset();
      red = 255;
      blue = 0;
      sus.play();
    }
  }
  
  void reset() {
    circleX = 800;
    circleY = random(height);
  }
}
