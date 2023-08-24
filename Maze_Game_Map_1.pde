int gameScreen = 0;

void setup() {
   size(1200, 1200);
}

void draw(){
  background(0, 0, 0);
  noCursor();
  circle(mouseX, mouseY, 10);
  // Display the contents of the current screen
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if (gameScreen == 2) {
    gameOverScreen();
  } else if(gameScreen ==4) {
    victoryScreen(); 
  }


}

/********* SCREEN CONTENTS *********/

void initScreen() {
  // codes of initial screen
  background(0);
  fill(255,255,255);
  textSize(128);
  textAlign(CENTER);
  fill(255,255,255);
  text("Scary Maze Game", height/2, width/2);
  fill(255,255,0);
  rect(height/2-150, width/2+25,300,150);
  textSize(32);
  fill(255,255,255);
  text("Click Here To Start", height/2, width/2+100);
  fill(255,255,255);
  circle(mouseX, mouseY, 10);
  
}

void gameScreen() {
  // codes of game screen
  fill(255, 255,0);
  noStroke();
  rect(height/2-300, width/2-300, 400, 900);
  rect(300, 200, 600, 100);
  fill(255,0,0);
  rect(900,200,50,100);
  
  
  
  
  //cursor setup
  fill(255,255,255);
  circle(mouseX, mouseY, 10);
  
  //cursor detection

}

void gameOverScreen() {
  // codes for game over screen
  background(0);
  textSize(128);
  textAlign(CENTER);
  text("Game Over", height/2, width/2);
}

void victoryScreen() {
  
}

/********* INPUTS *********/

public void mousePressed() {
  // if we are on the initial screen when clicked, start the game
  if (gameScreen==0) {
    startGame();
  }
  if (gameScreen==1){
     String x =  mouseX + " " + mouseY; 
     System.out.println(x);
  }
}

/********* OTHER FUNCTIONS *********/

// This method sets the necessary variables to start the game  
void startGame() {
  gameScreen=1;
}
