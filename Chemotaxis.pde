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
//nose
    fill(noseColor);
    //left nostril skin
    ellipse(mouseX-15,mouseY+15,20,20);
    //right nostril skin
    ellipse(mouseX+15,mouseY+15,20,20);
    //left nostril + nostril color
    fill(106,91,58);
    ellipse(mouseX-10,mouseY+15,15,15);
    //right nostril
    ellipse(mouseX+10,mouseY+15,15,15);
    //nose base
    fill(noseColor);
    ellipse(mouseX,mouseY,30,40);
    fill(myColor);
    ellipse(myX, myY, 10,10);
}
class Fart{
  int myX, myY;
  int myColor = color(79,((int)(Math.random()*256)+118),((int)(Math.random()*95)));
  int noseColor = color(255,236,197);
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
