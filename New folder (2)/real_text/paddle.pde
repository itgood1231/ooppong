

class Paddle {
  //Global Variables
  private color colour, colourResetWhite=#000000;
  public  int paddleXLeft, paddleXRight, paddleYLeft, paddleYRight, paddleWidth, paddleHeight;
  private Boolean nightMode=false;
  //
  Paddle (float widthParameter, float heightParameter) { //General Population
  if ( nightMode == false ) this.colour = color ( int(random(100, 255)), int(random(50, 255)), int(random(175, 255)) ) ; //random, different
  if ( nightMode == true ) this.colour = color ( int(random(100, 255)), int(random(50, 255)), 0 ) ; //random, different
  //Game start, paddles in the middle
  paddleWidth = int(widthParameter*1/80); 
  paddleXLeft = int(widthParameter*1/40);
  paddleXRight = int(widthParameter*39/40) - paddleWidth;
  paddleHeight = int(heightParameter*1/4);
  this.paddleYLeft = int(heightParameter*1/2) - paddleHeight*1/2;
  this.paddleYRight = paddleYLeft;

this.upLeft=false;
this.downLeft=false;
this.stopLeft=false;
this.upRight=false;
this.downRight=false;
this.stopRight=false;
paddlespeed=5;
yMove=int (heightParameter/heightParameter)*paddleSpeed;
  }
  
  void draw() {
    leftPaddle();
    rightPaddle();
  }//End draw
  
  void leftPaddle() {
    
    fill(colour);
    rect(paddleXLeft, paddleYLeft, paddleWidth, paddleHeight);
    fill(colourResetWhite);
    move();
  }//End leftPaddle
  //
  void rightPaddle() {
   
 
    move();
  }//End rigthPaddle
  //
  void move() {
    paddleYLeft--;
    paddleYRight--;
    if upleft==true&&downleft==false{
    paddleYLeft-=ymove;
    stopLeft==flase;
    
    }
    if(paddleYLeft <=height *0)paddleYLeft=0;
    if(paddleYLeft >=height-height+paddleHeight)paddleYLeft=height-paddleHeight;
    if(paddleYRight<=height *0)paddleYRight=0;
 if(paddleYLeft >=height-height+paddleHeight)paddle =height-paddleHeight;  
public int paddleXright()

}
public int paddleYRightgetter(){
return paddleYLeft;
}

public void upleftsetter(){

  void leftscoresetter(){
  leftscore++;
  }
  void rightscoresetter(){
  rightscore++;
  }
  int paddleXLeft
  
genrelResest();
upLeft=true;
}
