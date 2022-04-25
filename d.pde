
float xS,yS;
//void playgame(){


Ball ball;



Paddle left;
Paddle right;

int leftscore = 0;
int rightscore = 0;
String gameState;
void setup() {
  size(600, 400);
gameState="START";
  ball = new Ball();
  left = new Paddle(true);
  right = new Paddle(false);
//menu 
//gamestate="start";
}//
void draw() {
 if (gameState == "START") {
   startGame();
  } else if (gameState == "EASY") {
    playGame();
 
  
}

}
void startGame() {
  textAlign(CENTER);
  textSize(18);
  fill(255, 0, 0);
  text("press q  to play easy,2 for medium,and 3 for hard!", width/2, height/2);
  textSize(14);
  fill(0, 0, 255);
  text("", width/2, height/2+30);
 //look for the click
  if (key == 'q'||key == 'Q') {
  gameState = "EASY";
  } else if (key == 's'||key == 'S') {
    
    
  }
  }
  void playGame() {
 background(0);
 
//xsPeed=20;
 
  ball.checkPaddleLeft(left);
  ball.checkPaddleRight(right);
  //ball.checkPaddleLeft(left);

  left.show();
  right.show();
 
  left.update();
  right.update();

  ball.update();
  ball.edges();
  ball.show();
  fill(255);
  textSize(32);
  text(leftscore, 32, 40);
  text(rightscore, width-64, 40);
  
}
