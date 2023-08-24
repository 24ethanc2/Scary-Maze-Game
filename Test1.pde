ArrayList<PVector> rects = new ArrayList<PVector>(); // Store circle positions

void setup() {
  size(800, 600);
  noCursor(); // Hide the default cursor

  // Create initial circle positions
  for (int i = 0; i < 10; i++) {
    rects.add(new PVector(random(width), random(height)));
    rects.add(new PVector(200,300));
    rect(500, 80, 1000, 150);
    rect(700, 230, 100, 500);
    rect(800, 300, 300, 50);
    rect(1100, 300, 25, 600);
    rect(1100, 900, 500, 25);
    rect(1200, 230, 100, 500);
    rect(1300, 300, 500, 50);
  }
}

void draw() {
  background(0);

  // Calculate distance from light to circles and adjust brightness
  PVector lightPos = new PVector(mouseX, mouseY);
  for (PVector rectPos : rects) {
    float distance = dist(lightPos.x, lightPos.y, rectPos.x, rectPos.y);
    float maxDistance = 200; // Maximum distance for full brightness
    float brightness = map(distance, 0, maxDistance, 255, 0);
    
    // Draw circle with adjusted brightness
    fill(brightness);
    ellipse(rectPos.x, rectPos.y, 30, 30);
  }
  
  // Draw light source
  fill(255);
  ellipse(mouseX, mouseY, 20, 20);
}

/*void setup() {
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
}*/
