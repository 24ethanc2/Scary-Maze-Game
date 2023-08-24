int gameScreen = 0;
 int x = (int)random(2);
void setup() {
   fullScreen();

}

void draw(){
  background(0, 0, 0);
  noCursor();
  circle(mouseX, mouseY, 10);
  // Display the contents of the current screen
  if (gameScreen == 0) {
    initScreen();
  } else if (gameScreen == 1) {
    if(x == 0)
    {
      gameScreen1();
    }
    else if(x==1)
    {
     gameScreen2(); 
    }
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
  rect(350,1000,450,200);
  textSize(56);
  fill(255,255,255);
  fill(255,0,0);
  text("Click Here To Start", 575, 1110);
  fill(0,0,255);
  circle(mouseX, mouseY, 10);
  
}

void gameScreen1() {
  // codes of game screen
  fill(255, 255,0);
  noStroke();
  rect(300, 300, 400, 900);
  rect(300, 200, 900, 100);
  fill(255,0,0);
  rect(1150,200,50,100);
  
  
  
  
  //cursor setup
  fill(0,0,255);
  circle(mouseX, mouseY, 10);
  
  //color collision
  
}

void gameScreen2() {
  noStroke();
  fill(255,255,0);
  rect(300, 80, 200, 1200);
  rect(500, 80, 1000, 150);
  rect(700, 230, 100, 500);
  rect(800, 300, 300, 50);
  rect(1100, 300, 25, 600);
  rect(1100, 900, 500, 25);
  rect(1200, 230, 100, 500);
  rect(1300, 300, 500, 50);
  
  fill(255,0,0);
  rect(1600, 900, 500, 150);
  
  fill(0,0,255);
  circle(mouseX, mouseY, 10);

}

void gameScreen3() {
  
  
  
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
  if (gameScreen==0&& mouseX > 350&&mouseY>1000&&mouseX<800&&mouseY<1200) {
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
