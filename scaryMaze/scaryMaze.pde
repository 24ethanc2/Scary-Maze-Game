//import processing.sound.*;
//SoundFile sound;
PImage img, img2, img3, img4, img5, img6;
boolean gameStarted = false;
boolean gameEnded = false;
float flashlightRadius = 150;

Eye e1, e2;
color collisionColor = color(255);
void setup() {
  size(800, 800);
  img = loadImage("littleGuy.png");
  img2 = loadImage("concrete.png");
  img3 = loadImage("brick.png");
  img4 = loadImage("grass.png");
  img5 = loadImage("dirt.png");
  img6 = loadImage("marble.png");
  //sound = new SoundFile(this, "died.mp3");
}

void draw() {
  background(0);
  e1 = new Eye( 50,50 , 20);
  e2 = new Eye(80, 50, 20);
  if (!gameStarted) {
    displayStartScreen();
  } else if (gameEnded) {
    displayEndScreen();
  } else {
    displayGame();
  }
}

void displayStartScreen() {
  fill(255, 0,0);
  rect(width/2 - 125, height/2 + 250, 250, 100);
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(255);
  text("Click to Start", width / 2, 700);
}

void displayGame() {
  noCursor();
  float squareX = mouseX;
  float squareY = mouseY;
  background(0);
  
  for (int i = 0; i < 5; i++){
    image(img6, 300+(i*50), 750, 50,50);
    image(img2, 300+(i*50), 700, 50, 50);
    image(img3, 300+(i*50), 650, 50, 50);
    image(img4, 300+(i*50), 600, 50, 50);
    image(img5, 300+(i*50), 550, 50, 50);
  }
  
  noStroke();
  fill(255); 
  rect(0, 0, 800, 100);
  rect(0, 0, 100, 800);
  rect(700, 0, 100, 800);
  rect(0, 500, 400, 100);
  rect(300, 300, 500, 100);
  //fill(0, 100);
  //rect(0,0,800,800);
  fill(255, 30); 
  ellipse(mouseX, mouseY, flashlightRadius*0.8, flashlightRadius*0.8);
  fill(255, 15); 
  ellipse(mouseX, mouseY, flashlightRadius, flashlightRadius);
  fill(255, 90); 
  ellipse(mouseX, mouseY, flashlightRadius * 1.25, flashlightRadius * 1.25);
  fill(255, 75); 
  ellipse(mouseX, mouseY, flashlightRadius * 1.5, flashlightRadius * 1.5);
  color pixelColor = get(int(squareX), int(squareY));
  
  // Check if the pixel color matches the collision color
  boolean collisionDetected = (pixelColor == collisionColor);
  
  if (collisionDetected) {
    gameEnded = true;
  }
  //fill(255, 0, 0);
  //rect(squareX, squareY, 20, 20); //user
  
  image(img, squareX-25, squareY-25, 50, 50);
  e1.update(mouseX, mouseY);
  e2. update(mouseX, mouseY);
  e2. display();
  e1.display();

}

void displayEndScreen() {
  cursor();
  fill(255);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("You Died", width / 2, height / 2);
  text("Restart", width/2, 700);
}

void mousePressed() {
  if (!gameStarted || gameEnded) {
    if(mouseX >= width/2 - 125 && mouseX <= width/2 + 125 && mouseY >= height/2 + 250 && mouseY <= height/2 + 350){ //collision for the start button
      gameStarted = true;
    }
    gameEnded = false;
  }
}
class Eye { //entity
  int x, y;
  int size;
  float angle = 0.0;
  
  Eye(int tx, int ty, int ts) {
    x = tx;
    y = ty;
    size = ts;
 }

  void update(int mx, int my) {
    angle = atan2(my-y, mx-x);
  }
  
  void display() {
    pushMatrix();
    translate(x, y);
    fill(0);
    ellipse(0, 0, size, size);
    rotate(angle);
    fill(255);
    ellipse(size/4, 0, size/2, size/2);
    popMatrix();
  }
}
