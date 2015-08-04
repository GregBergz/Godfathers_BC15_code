int horizmov = 0;
float ghostX = 250;
float ghostY = 220;
float prevX = ghostX;
float eyeX = 0;


void setup(){
  size(500,500);
  noStroke();
}


void draw(){
  background(#000000);
  ghostX = ghostX + horizmov;
  drawGhost(ghostX,ghostY);
  prevX = ghostX;
}


void keyPressed() {
  if (keyCode == RIGHT) {
    horizmov = 4;
    eyeX = 4;
  }
  if (keyCode == LEFT) {
    horizmov = -4;
    eyeX = -4;
  }
} 



void keyReleased(){
  if (keyCode == RIGHT) {
    horizmov = 0;
    eyeX = 0;
  }
  if (keyCode == LEFT) {
    horizmov = 0;
    eyeX = 0;
  }
}


void drawGhost(float x, float y){
  fill(#FFFFFF);
  ellipse(x, y, 59,60);
  strokeWeight(8);
  stroke(#FFFFFF);
  line(x+5, y+5, prevX+5, y+40);
  line(x-5, y+5, prevX-5, y+40);
  line(x+15, y+5, prevX+15, y+40);
  line(x-15, y+5, prevX-15, y+40);
  line(x+25, y+5, prevX+25, y+40);
  line(x-25, y+5, prevX-25, y+40);
  noStroke();
  fill(#000000);
  ellipse(x+18+eyeX, y-3, 5, 5);
  ellipse(x-18+eyeX, y-3, 5, 5);
}
