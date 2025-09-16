boolean mouseHeld = false;
int randomNum;

void setup(){
  size(500,500);
  background(0);
}

void draw(){
  //background(255,255,255,100);
  fill(0,0,0,20);
  rect(0,0,500,500);
  stroke(68, 126, 219, 200);
  fill(68, 126, 219, 150);
  ellipse(mouseX, mouseY, 30, 30);
  if (mouseHeld == true){
    randomNum = (int)(Math.random() * 5);
    lightning(mouseX, mouseY);
  }
}

void mousePressed(){
  mouseHeld = true;
}

void mouseReleased(){
  mouseHeld = false;
}

void lightning(int x, int y){
  if (randomNum == 1){
    while(x <= 525) {
      int newX = x + (int)(Math.random() * 9) + 1;
      int newY = y + (int)(Math.random() * 19) - 9;
      line((float)x,(float)y,(float)newX,(float)newY);
      x = newX;
      y = newY;
    }
    
  } else if (randomNum == 2){
    while(x >= -25) {
      int newX = x + ((int)(Math.random() * 9) + 1)*-1;
      int newY = y + (int)(Math.random() * 19) - 9;
      line((float)x,(float)y,(float)newX,(float)newY);
      x = newX;
      y = newY;
    }
  } else if (randomNum == 3){
    while(y >= -25) {
      int newX = x + (int)(Math.random() * 19) - 9;
      int newY = y + ((int)(Math.random() * 9) + 1)*-1;
      line((float)x,(float)y,(float)newX,(float)newY);
      x = newX;
      y = newY;
    }
  } else if (randomNum == 4){
    while(y <= 525) {
      int newX = x + (int)(Math.random() * 19) - 9;
      int newY = y + (int)(Math.random() * 9) + 1;
      line((float)x,(float)y,(float)newX,(float)newY);
      x = newX;
      y = newY;
    }
  }
}
