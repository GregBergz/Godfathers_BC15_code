
int score = 0;
PFont ghostF;
int horizmov = 0;
float ghostX = 250;
float ghostY = 420;
float prevX = ghostX;
float eyeX = 0;
float eyeY = 3;
float hover = 0;
float snackX = random(30,470);
float snackY = random(30,400);
float snackTime = 20;
float batDir = 6;
float batDir2= 1;
float skin = 2;
float batAnim = 0;
float wingY=-15;
float batX = 200;
float batY = 200;




void setup(){
  size(500,500);
  noStroke();
  ghostF = loadFont("reef.vlw");
  rectMode(CENTER);
  smooth();
}


void draw(){
  background(bgCol);
  fill(batCol);
  textFont(ghostF,24);
  text(score, 20, 30);
  fill(floorCol);
  rect(250, 520, 500, 120);
  
  //ghost positioning
  ghostX = ghostX + horizmov;
  ghostY=ghostY+hover;
  
  //draw ghost
  drawGhost(ghostX,ghostY);
  
  //draw snax
  drawGhostSnack(snackX,snackY);
  
  //makes prevX work
  prevX = ghostX;
  
  //draw bat
  batMove();
  wings(wingY);
  drawBat(batX,batY,batDir);
  
  //hovercontrols
  if(ghostY<420){
  ghostY=ghostY+2;
  }

  //snackTime countdown
  if (snackTime > 0){
  snackTime--;
  }

  //eat snax
  if(dista(snackX,snackY,ghostX,ghostY) <= 10){
  snackX = random(30,470);
  snackY = random(30,400);
  score++;
  ellipse(ghostX+eyeX, ghostY+10+eyeY, 20-abs(eyeX), 15);
  //set snack spawn animation timer
  snackTime = 20;
  }
  
  //batcollide
  if(dista(batX,batY,ghostX,ghostY) <= 30){
  ghostX = width/2;
  ghostY = 420;
  score=0;
  snackX = random(30,470);
  snackY = random(30,400);
  }

  if(ghostX >= width-40){
    ghostX=width-40;
  }
   if(ghostX <= 40){
    ghostX= 40;
  }
   if(ghostY <= 40){
    ghostY= 40;
  }
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
   if (key == ' ') {
    hover=-4; 
    eyeY=-7;
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
   if (key == ' ') {
    hover=0; 
    eyeY=3;
   }
   if (key == '0') {
     skinswitch(skin);
}
   if (key == '8') {
     batDir=-(batDir);
}
}


void drawGhost(float x, float y){
  fill(sheetCol);
  strokeWeight(4);
  stroke(sheetCol);
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
  fill(eyeCol);
  ellipse(x+12+eyeX, y+eyeY, 5, 5);
  ellipse(x-12+eyeX, y+eyeY, 5, 5);
  fill(shadowCol);
  ellipse(prevX-(eyeX/1.5), 470, 83-(ghostY/10), 6);
  ellipse(prevX-eyeX, 470, 83-(ghostY/10), 5);
//cute mouth animation :)
fill (eyeCol);
  if(dista(snackX,snackY,ghostX,ghostY) <= 40){
    ellipse(x+eyeX, y+10+eyeY, 25-abs(eyeX), 20);
  }
  if(dista(snackX,snackY,ghostX,ghostY) <= 50){
    ellipse(x+eyeX, y+10+eyeY, 20-abs(eyeX), 15);
  }
}
  
void drawGhostSnack(float x, float y){
  fill(pelletCol);
  ellipse(x,y,20-snackTime,20-snackTime);
  fill(shadowCol);
  ellipse(x,470,25-snackTime-(snackY/100),5);
}

//test distance between
float dista(float x1,float y1,float x2,float y2){
  return sqrt(sq(x2-x1)+sq(y2-y1));
}
  

