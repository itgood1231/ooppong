float Ball myBall, yourBall;

int ballCount=10;
Ball[] ball=new ball[ballCount];


void setup(){
size(500,700);
Ball myBall = new Ball( width*1/10, height*1/3, width*1/25, color(31, 255, 3)width/width,height/height ); //Line can be anywhere
  Ball yourBall = new Ball( width*9/10, height*1/3, width*1/25, color( random( 0, 255), random(255), random(255) ) );
int ballCounter = ball.length - ball.length;
Paddle paddle;

}
class Ball
{
  //Global Variables
  float x, y, diameter;
  color colour;
  int xspeed, int yspeed;
  //
  Ball (float xParameter, float yParameter, float diameterParameter, color colourParameter,int xspeedP, int yspeedP) { //Constructor Is ... hard coded, single visual object
    x = xParameter;
    y = yParameter;
    diameter = diameterParameter;
    colour = colourParameter; //Hexidecimal: #1FFF03, Night Mode Friendly
    xspeed=xspeedP;
    yspeed=yspeedP;
  }//End Constructor
  //
  void draw() {
    background(225);
    paddle.draw();
    for (int=0;i<ballCounter; i++){
    ball[i].draw();
    ball[i].directionXSetter(paddle.paddleXRightgetter(),paddle.paddleYRightgetter(),paddleHeight);
    }
    
    fill(colour);
    ellipse(x, y, diameter, diameter);
    move();
    void bounce(){
if(x-diamter*1/2<width*0||x+diamter>width)xspeed*=-1;
if()yspeed*=-1;
}
  }//End draw
  //
}//End BallEnd Ball
void move(){
x+=xspeed;
x+=yspeed;
}
void mousePressed(){
if(ballCounter>=ball.length){
  exit();//bad exit button 
}else{
  ballCounter++;
}
for(int i=1;i<ballCounter; i++){
i\    ballCounter=ball(width,height)

}
}
void keyPressed() {
  
  if ( key == CODED && key == 'W' || key == 'w' ) paddle.upLeftSetter();

}
//
