void skinswitch(float i){
if (i == 1){
  //classic
  smooth();
  blendMode(BLEND);
    bgCol = black;
    sheetCol = white;
    eyeCol = black;
    pelletCol = ecto;
    floorCol = gris;
    shadowCol= darkgris;
    skin++;
}
if (i == 2){
  //sunset
    bgCol = red;
    pelletCol = shadow;
    floorCol = shadow;
    sheetCol = shadow;
    eyeCol = red;
    shadowCol=shadow;
    skin++;    
}
if (i == 3){
  //baghead
   bgCol = lightboard;
    floorCol = darkboard;
    pelletCol = darkboard;
    sheetCol = cardboard;
    eyeCol = shadowboard;
    shadowCol = shadowboard;
    skin ++;
}
if (i == 4){
  //pacman
  bgCol = black;
  sheetCol = uglyblue;
  eyeCol = white;
  pelletCol = white;
  skin ++;
  floorCol = white;
  shadowCol = white;
}
if (i == 5){
  //tron
  sheetCol = trongreen;
  eyeCol = trongreen;
  pelletCol = trongreen;
  floorCol = trongreen;
  shadowCol = trongreen;
  skin++;
  noSmooth();
}
if (i == 6){
  //tron
  blendMode(SUBTRACT);
  sheetCol = white;
  eyeCol = white;
  pelletCol = black;
  bgCol= white;
  skin = 1;
  floorCol = black;
  shadowCol = white;
}
}

