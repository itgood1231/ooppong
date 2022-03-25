
private class Ball
{
  //Global Variables
  private float x, y, diameter, xStart, yStart, xDirection, yDirection;
  private color colour, colourReset=#FFFFFF;
  private int xSpeed, ySpeed;
  private Boolean nightMode=false,ballXgoal;
  //
  
  public Ball (float widthParameter, float heightParameter) { 
    //this.x = widthParameter*1/2; //Start Ball Location whereever
    //this.y = heightParameter*1/2;
    xStart = x; //  middle of field
    yStart = y;
    diameter = widthParameter*1/70; //same on all of them
    if ( nightMode == false ) colour = color( random( 0, 255), random(255), random(255) );
    if ( nightMode == true ) colour = color( random( 0, 255), random(255), 0 ); 
    this.xSpeed = int ( random (widthParameter/widthParameter, widthParameter/widthParameter*5) );
    this.ySpeed = int ( random (heightParameter/heightParameter, heightParameter/heightParameter*5) );
    xDirection = 0;
    while ( xDirection == 0) { this.xDirection = int ( random (-2, 2) ); } //one line WHILE
    yDirection = 0;
    while ( yDirection == 0) { this.yDirection = int ( random (-2, 2) ); } 
  }//End Constructor
  //
  private void draw() {
    fill(colour);
    ellipse(x, y, diameter, diameter);
    fill(colourReset);
    //
    move();
    bounce();
    bouncePaddle();
  }//End draw
  //
  private void move() {
    x += xSpeed;
    y += ySpeed;
  }//End move
  private void bounce(int paddleYleft,int paddleHeight) {//not the bounce off the paddles
    if ( x-diameter*1/2 < width*0 || x+diameter*1/2 > width ) xSpeed *= -1; //Net Bounce, will change
    if ( y-diameter*1/2 < height*0 || y+diameter*1/2 > height ) ySpeed *= -1; //Top and Bottom
  }//End bounce
 private void ballScore() {
    //Ball knows where NET is
    if ( x < (width*0)+diameter || x > width-diameter  ) { 
      ballXGoal = true; // bug 
      if ( x < (width*0)+diameter ) {//Goal  left player
        x = (width*0)+(diameter/4); // Ackward ball placement
        y = y;
      } 
      if ( x > width-diameter ) { //Goal  right player
        x = width-diameter/4; // Ackward ball placement
        y = y;
      }
    } //End Net Detection
    //
    if ( ballXGoal == true ) {
      //EMPTY IF
    } else {
      move();
      bounce();
    }
  }//End ballScore
  
  void directionXSetter(int paddleYLeft, int paddleHeight) {
    if ( y>=paddleYLeft && y<=paddleYLeft+paddleHeight ) xDirection *=  (-1); 
  }
 
 
}
//private void bouncepaddle(){
//if(y>=paddleYLeft && y<=paddleYLeft+paddleHieght)directionX*=(-1);
//}
//  private void ballscore(){
  
  
  
//  }
  
//  private void bouncePaddle() {
//  }//End bouncePaddle
//  //this.xDirection=int(randum(-2,2))
  
//} 

//void directionXSetter(INT PADDLEXRIGHHT,INT PADDLEYRIHGHT,INT PADDLEHIEGHT){
// private void bounce(int paddleYRight,int paddleHeight) {
//  if(y>=paddleYLeft && y<=paddleYLeft+paddleHieght)if(x>=paddleRight- diamter) directionX*=(-1);
// }
//}

//}
