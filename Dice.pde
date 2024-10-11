int sum = 0;
int colorR;
int colorG;
int colorB;

void setup() {
  size(600, 600);
  noLoop();
}

void draw() {
  background(173, 216, 230);
  for (int i  = 45; i <= 540; i += 60){
    for (int j = 35; j <= 530; j += 60){
      Die test = new Die(i, j);
      test.diceColor();
      test.show();
      test.roll();
     
    }
  }
  textAlign(CENTER);
  textSize(40);
  text("Total: " + sum, 300, 590);
}

void mousePressed()
{
  redraw();
  sum = 0;
}
class Die
{
  int diceX, diceY;
  int roll = (int)(Math.random() * 6 + 1);
  Die(int x, int y)
  {
    diceX = x;
    diceY = y;
  }
  void roll()
  {
   sum = sum + roll;
   if (roll == 1){
     ellipse(diceX+13,diceY+13,10,10);
   } else if (roll == 2){
     ellipse(diceX+5,diceY+5, 10, 10);
     ellipse(diceX+20,diceY+20, 10, 10);
   } else if (roll == 3){
     ellipse(diceX,diceY, 10, 10);
     ellipse(diceX+13,diceY+13, 10, 10);
     ellipse(diceX+25,diceY+25, 10, 10);
   } else if (roll == 4){
     ellipse(diceX+5,diceY+5, 10, 10);
     ellipse(diceX+5,diceY+20, 10, 10);
     ellipse(diceX+20,diceY+5, 10, 10);
     ellipse(diceX+20,diceY+20, 10, 10);
   } else if (roll == 5){
     ellipse(diceX+5,diceY, 10,10);
     ellipse(diceX+5,diceY+25,10, 10);
     ellipse(diceX+13,diceY+13,10,10);
     ellipse(diceX+20,diceY,10, 10);
     ellipse(diceX+20,diceY+25, 10, 10);
   } else {
     ellipse(diceX+5,diceY, 10, 10);
     ellipse(diceX+5,diceY+13, 10, 10);
     ellipse(diceX+5,diceY+25, 10, 10);
     ellipse(diceX+20,diceY, 10, 10);
     ellipse(diceX+20,diceY+13, 10, 10);
     ellipse(diceX+20,diceY + 25, 10, 10);
   }
  }
  
  void diceColor()
  {
    if (roll == 1){
     colorR = 0;
     colorG = 204;
     colorB = 0;
   } else if (roll == 2){
     colorR = 30;
     colorG = 230;
     colorB = 128;
   } else if (roll == 3){
     colorR = 0;
     colorG = 176;
     colorB = 153;
   } else if (roll == 4){
     colorR = 153;
     colorG = 153;
     colorB = 255;
   } else if (roll == 5){
     colorR = 128;
     colorG = 0;
     colorB = 128;
   } else {
     colorR = 0;
     colorG = 0;
     colorB = 204;
   }
  }
  
  
  void show()
  {
    strokeJoin(ROUND);
    strokeWeight(30);
    stroke(255);
    beginShape();
    vertex(diceX, diceY);
    vertex(diceX+25, diceY);
    vertex(diceX+25, diceY+25);
    vertex(diceX, diceY+25);
    vertex(diceX, diceY);
    endShape();
    stroke(colorR, colorG, colorB);
    beginShape();
    vertex(diceX+5, diceY+5);
    vertex(diceX+20, diceY+5);
    vertex(diceX+20, diceY+20);
    vertex(diceX+5, diceY+20);
    vertex(diceX+5, diceY+5);
    endShape();
    strokeWeight(1);
    fill(255);
  }
}
