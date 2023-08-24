void setup() {
  fullScreen();
  noCursor();
}

void draw() {
  background(255, 255, 0);
  rect(0, 0, 1000, 400);
  rect(0, 400, 600, 700);
  rect(620, 425, 100, 50);
  rect(740, 425, 100, 50);
  rect(740, 500, 100, 50);
  rect(860, 500, 100, 50);
  rect(620, 575, width-620, 1000);
  rect(1000, 0, 1000, height);
  fill(255, 0, 0);
  rect(1000, 400, 50, 100);
  fill(255, 255, 255);
  circle(mouseX, mouseY, 10);
  fill(0, 0, 0);
}
