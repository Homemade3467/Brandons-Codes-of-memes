float p1x=140;
float p2x=1360;
float p1y=400;
float p2y=400;
float speed=10;
float x=width/2;
float y=height/2;
float xspeed;
float yspeed;
float z=80;

void setup(){
 x=width/2;
y=height/2;
 xspeed=speed;
 yspeed=speed;
  size(1500,800);
}

void draw(){
   p1y=constrain(p1y,0,height);
   p2y=constrain(p2y,0,height);
background(255);
fill(0,0,0);
rect(-40,150,100,500,70);
rect(1440,150,100,500,70);
fill(255,0,0);
rect(width/2,0,50,800);
ellipse(p1x,p1y,100,100);
ellipse(p2x,p2y,100,100);
fill(0);
ellipse(x,y,75,75);
x=xspeed+x;
y=yspeed+y;
 if((x > width) ||(x < 0)){   xspeed=-xspeed;}
  if( (y > height)||(y < 0)){  yspeed=-yspeed;}
if((x == p1x)&&(y == p1y)){ 
  xspeed=-xspeed;
yspeed=-yspeed;}


   if(keyPressed){
  if (key=='s'){
    p1y=p1y+speed;}
   if (key=='w'){
    p1y=p1y-speed;}
     if(keyPressed){
  if (key=='m'){
    p2y=p2y+speed;}
   if (key=='k'){
    p2y=p2y-speed;}
    }


    }

}