//random rgb values for color a
float aa = random(255);
float ab = random(255);
float ac = random(255);
//random rgb values for color b
float ba = random(255);
float bb = random(255);
float bc = random(255);
//random rgb values for color c
float ca = random(255);
float cb = random(255);
float cc = random(255);
//random shape type
int shape1 = (int)random(2);
int shape2 = (int)random(2);
int shape3 = (int)random(2);
int shape4 = (int)random(2);
//random shape values
float w1 = random(300);
float h1 = random(300);
float w2 = random(300);
float h2 = random(300);
float w3 = random(300);
float h3 = random(300);
float w4 = random(300);
float h4 = random(300);



void setup(){
  size(900,300);
  rectMode(CENTER);
  noStroke();
}

void draw(){
// image 1 canvas
  fill(aa,ab,ac);
  rect(150,150,300,300);
// image 1 shape 1
  fill(ba,bb,bc);
  if (shape1 == 0){
  rect(150,150,w1,h1);
  }
  if (shape1 == 1){
  ellipse(150,150,w1,h1);
  }
// image 1 shape 2
  fill(ca,cb,cc);
  if (shape2 == 0){
  rect(150,150,w2,h2);
  }
  if (shape2 == 1){
  ellipse(150,150,w2,h2);
  }
// image 1 shape 3
  fill(aa,ab,ac);
  if (shape3 == 0){
  rect(150,150,w3,h3);
  }
  if (shape3 == 1){
  ellipse(150,150,w3,h3);
  }
// image 1 shape 4
  fill(ba,bb,bc);
  if (shape4 == 0){
  rect(150,150,w4,h4);
  }
  if (shape4 == 1){
  ellipse(150,150,w4,h4);
  }
  

// image 2 canvas
  fill(ba,bb,bc);
  rect(450,150,300,300);
// image 2 shape 1
  fill(ca,cb,cc);
  if (shape1 == 0){
  rect(450,150,w1,h1);
  }
  if (shape1 == 1){
  ellipse(450,150,w1,h1);
  }
// image 2 shape 2
  fill(aa,ab,ac);
  if (shape2 == 0){
  rect(450,150,w2,h2);
  }
  if (shape2 == 1){
  ellipse(450,150,w2,h2);
  }
// image 2 shape 3
  fill(ba,bb,bc);
  if (shape3 == 0){
  rect(450,150,w3,h3);
  }
  if (shape3 == 1){
  ellipse(450,150,w3,h3);
  }
// image 2 shape 4
  fill(ca,cb,cc);
  if (shape4 == 0){
  rect(450,150,w4,h4);
  }
  if (shape4 == 1){
  ellipse(450,150,w4,h4);
  }
  
  
  // image 3 canvas
  fill(ca,cb,cc);
  rect(750,150,300,300);
// image 3 shape 1
  fill(aa,ab,ac);
  if (shape1 == 0){
  rect(750,150,w1,h1);
  }
  if (shape1 == 1){
  ellipse(750,150,w1,h1);
  }
// image 3 shape 2
  fill(ba,bb,bc);
  if (shape2 == 0){
  rect(750,150,w2,h2);
  }
  if (shape2 == 1){
  ellipse(750,150,w2,h2);
  }
// image 3 shape 3
  fill(ca,cb,cc);
  if (shape3 == 0){
  rect(750,150,w3,h3);
  }
  if (shape3 == 1){
  ellipse(750,150,w3,h3);
  }
// image 3 shape 4
  fill(aa,ab,ac);
  if (shape4 == 0){
  rect(750,150,w4,h4);
  }
  if (shape4 == 1){
  ellipse(750,150,w4,h4);
  }
  
  
  
  
// setup for spacebar
 if(keyPressed) {
   if (key == ' ') {
     //random rgb values for color a
 aa = random(255);
 ab = random(255);
 ac = random(255);
//random rgb values for color b
 ba = random(255);
 bb = random(255);
 bc = random(255);
//random rgb values for color c
 ca = random(255);
 cb = random(255);
 cc = random(255);
//random shape type
 shape1 = (int)random(2);
 shape2 = (int)random(2);
 shape3 = (int)random(2);
 shape4 = (int)random(2);
//random shape values
 w1 = random(300);
 h1 = random(300);
 w2 = random(300);
 h2 = random(300);
 w3 = random(300);
 h3 = random(300);
 w4 = random(300);
 h4 = random(300);
   }
}
}
