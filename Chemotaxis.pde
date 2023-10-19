Fart [] bobs;
void setup(){
  size(500,500);
  bobs = new Fart[1500];
  for(int i = 0; i < bobs.length; i++)
    bobs[i] = new Fart();
}
void draw(){
  background(158, 188,95);
  for(int i = 0; i < bobs.length; i++){
  bobs[i].show();
  bobs[i].move();
  }
}
class Fart{
  int myX, myY;
  int myColor = color(79,((int)(Math.random()*256)+118),((int)(Math.random()*95)));
  Fart(){
    myX = myY = 250;
  }
  void move(){
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show(){
    strokeWeight(0.1);
    stroke(36,31,82);
    fill(myColor);
    ellipse(myX, myY, 10,10);
    if(mouseX > myX)
    myX = myX + (int)(Math.random()*5)+2;
    else
    myX = myX + (int)(Math.random()*5)-6;
    if(mouseY > myY)
    myY = myY + (int)(Math.random()*5)+2;
    else
    myY = myY + (int)(Math.random()*5)-6;
  }
}
