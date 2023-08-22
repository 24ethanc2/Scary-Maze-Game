void setup() {
  fullScreen();
}

void draw(){
  background(0, 0, 0);
  noCursor();
  fill(255, 255, 0);
  walls();
  fill(255,0,0);
  circle(mouseX, mouseY, 10);
  
  
}

void walls(){
  noStroke();
  
  rect(300, 80, 200, 1000);
  rect(500, 80, 1000, 150);
  rect(700, 230, 100, 500);
  rect(800, 300, 300, 50);
  rect(1100, 300, 25, 600);
  rect(1100, 900, 500, 25);
  rect(1200, 230, 100, 500);
  rect(1300, 300, 500, 50);
  
  fill(255,0,0);
  rect(1600, 900, 500, 150);
}
