int horizmov = 0;
float ghostX = 250;
float ghostY = 420;
float prevX = ghostX;
float eyeX = 0;


void setup(){
  size(500,500);
  noStroke();
  rectMode(CENTER);
  smooth();
}


void draw(){
  background(0);
  fill(200);
  rect(250, 520, 500, 120);
  
  ghostX = ghostX + horizmov;
  drawGhost(ghostX,ghostY);
  prevX = ghostX;
}


void keyPressed() {
  if (keyCode == RIGHT) {
    horizmov = 4;
    eyeX = 6;
  }
  if (keyCode == LEFT) {
    horizmov = -4;
    eyeX = -6;
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
  strokeWeight(4);
  stroke(#FFFFFF);
  ellipse(x, y, 36, 36);
  quad(x-18, y, x+18, y, prevX+18, y+26, prevX-18, y+26);
  line(x, y, prevX, y+30);
  line(x+6, y+5, prevX+6, y+30);
  line(x-6, y+5, prevX-6, y+30);
  line(x+12, y+5, prevX+12, y+30);
  line(x-12, y+5, prevX-12, y+30);
  line(x+18, y+5, prevX+18, y+30);
  line(x-18, y+5, prevX-18, y+30);
  noStroke();
  fill(#000000);
  ellipse(x+13+eyeX, y, 5, 5);
  ellipse(x-13+eyeX, y, 5, 5);
  fill(70);
  ellipse(prevX-(eyeX/1.5), y+50, 43, 6);
  ellipse(prevX-eyeX, y+50, 43, 5);
}
