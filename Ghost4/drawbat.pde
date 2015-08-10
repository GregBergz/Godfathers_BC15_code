void batMove(){
   if((batX>(width-36))|| (batX<(36))){
     batDir=(-batDir);
   }
   if((batY>(height-56))|| (batY<(36))){
     batDir2=(-batDir2);
   }
 batX=batX+batDir/3; 
 batY=batY-batDir2;
}


void drawBat(float x, float y, float dir){
    strokeWeight(6);
    stroke(wingCol);
    if (batDir == -6){
    //leftwing
  line(x-14,y+2,x-batDir/3-28,y+wingY);
  line(x-14,y+2,x-batDir/3-25,y+wingY-3);
  line(x-14,y+2,x-batDir/3-25,y+wingY+3);
  line(x-14,y+2,x-batDir/3-22,y+wingY+6);
  line(x-14,y+2,x-batDir/3-22,y+wingY-6);
  noStroke();
  fill(batCol2);
  ellipse (x+1+(batDir)*2, y-14, 8, 20);
  fill(wingCol);
  ellipse (x+1+(batDir)*2, y-14, 4, 16);
    }
     if (batDir == 6){
  //rightwing
  line(x+14,y+2,x-batDir/3+28,y+wingY);
  line(x+14,y+2,x-batDir/3+25,y+wingY-3);
  line(x+14,y+2,x-batDir/3+25,y+wingY+3);
    line(x+14,y+2,x-batDir/3+22,y+wingY+6);
       line(x+14,y+2,x-batDir/3+22,y+wingY-6);
       noStroke();
       fill(batCol2);
       ellipse (x-1+(batDir)*2, y-14, 8, 20);
       fill(wingCol);
  ellipse (x-1+(batDir)*2, y-14, 4, 16);
     }
  fill(batCol);
  ellipse(x, y, 36, 30);
  stroke(wingCol);
    if (batDir == 6){
    //leftwing
  line(x-14,y+2,x-batDir/3-28,y+wingY);
  line(x-14,y+2,x-batDir/3-25,y+wingY-3);
  line(x-14,y+2,x-batDir/3-25,y+wingY+3);
  line(x-14,y+2,x-batDir/3-22,y+wingY+6);
  line(x-14,y+2,x-batDir/3-22,y+wingY-6);
  noStroke();
  ellipse (x-(batDir)*1.5, y-16, 8, 18);
  fill(wingCol);
  ellipse (x-1-(batDir)*1.5, y-16, 4, 14);
    }
     if (batDir == -6){
  //rightwing
  line(x+14,y+2,x-batDir/3+28,y+wingY);
  line(x+14,y+2,x-batDir/3+25,y+wingY-3);
  line(x+14,y+2,x-batDir/3+25,y+wingY+3);
    line(x+14,y+2,x-batDir/3+22,y+wingY+6);
       line(x+14,y+2,x-batDir/3+22,y+wingY-6);
       noStroke();
       ellipse (x-(batDir)*1.5, y-16, 8, 18);
       fill(wingCol);
       ellipse (x+1-(batDir)*1.5, y-16, 4, 14);
     }
  fill(batEyeCol);
  ellipse(x+8+batDir, y, 4, 3);
  ellipse(x-8+batDir, y, 4, 3);
  
 fill(shadowCol);
  ellipse(batX, 470, 75-(batY/10)+(wingY/8), 5);
}
