Particle [] part;
void setup()
{
  size(500,500);
  part = new Particle[1000];
  for(int i = 0;i < part.length; i++){
    part[i] = new Particle();
    part[0] = new OddballParticle();
  }
}
void draw()
{
  background(0,0,0);
  for(int i = 0;i < part.length;i++){
    part[i].show();
    part[i].move();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myX = myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random() * 16;
    myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
  }
  void show(){
     fill(myColor);
     ellipse((float)myX,(float)myY,(int)(Math.random()*10)+1,(int)(Math.random()*10)+1);
   }
   void move(){
       myX+=Math.cos(myAngle)*mySpeed;
      myY+=Math.sin(myAngle)*mySpeed;
      if(abs((float)myX-250)>75 || abs((float)myY-250)>75) {
      mySpeed-=0.1;
    }
    if (abs((float)myX-250)<75 || abs((float)myY-250)<75) {
      mySpeed+=0.001;
     }
   }
}

class OddballParticle extends Particle{
OddballParticle()
{
  myX = myY = 250;
  myAngle = Math.random()*2*Math.PI;
  mySpeed = Math.random() * 5;
  myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
}
  void show(){
    fill(color(150,75,0));
    ellipse((float)myX,(float)myY,50,50);
  }
}





