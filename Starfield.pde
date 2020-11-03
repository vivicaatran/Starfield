Particle[] starlings = new Particle[1000];
void setup(){
  background(0);
  size(500, 500);
  for(int i = 0; i < starlings.length; i++){
    starlings[i] = new Particle();
  }
  for (int a = 750; a < 1000; a++)
  starlings [a] = new OddballParticle();
}
void draw(){
  noStroke();
  fill(0, 0, 0, 25);
  rect(0, 0, 500, 500);
  for(int i = 0; i < starlings.length; i++){
    starlings[i].move();
    starlings[i].show();
    starlings[0] = new OddballParticle();

  }
}
class Particle{
  public double myX, myY, mySpeed, myAngle, newAngle, size;
  public int rColor, gColor, bColor;
  Particle(){
    myX = 250;
    myY = 250;
    myAngle = Math.random() * 50 * Math.PI;
    newAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 10;
    size = 5;
    rColor = (int)(Math.random() * 255);
    gColor = (int)(Math.random() * 255);
    bColor = (int)(Math.random() * 255);
  }
  void move(){
    myX += Math.sin(myAngle) * mySpeed;
    myY += Math.cos(myAngle) * mySpeed;
    size += 0.001;
  }
  void show(){
    fill(rColor, gColor, bColor, 100);
    ellipse((float)myX, (float)myY, (float)size, (float)size);
  }
}

class OddballParticle extends Particle{
  void move(){
    myX = myX + Math.sin(newAngle) * mySpeed;
    myY = myY + Math.cos(newAngle) * mySpeed;
    size += 1;
  }
  void show(){
    fill(255, 255, 255);
    ellipse((float) myX, (float) myY, 5, 5);
  }
}
