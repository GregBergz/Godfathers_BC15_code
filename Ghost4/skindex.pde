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
    batCol = bat;
    batCol2 = darkbat;
    batEyeCol = daffodil;
    wingCol = indigo;
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
    batCol = shadow;
    batCol2 = shadow;
    batEyeCol = red;
    wingCol = shadow;
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
    batCol = darkboard;
    batCol2 = darkboard;
    batEyeCol = shadowboard;
    wingCol = shadowboard;
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
  batCol = uglyyellow;
    batCol2 = uglyyellow;
    batEyeCol = black;
    wingCol = uglyyellow;
}
if (i == 5){
  //tron
  sheetCol = trongreen;
  eyeCol = trongreen;
  pelletCol = trongreen;
  floorCol = trongreen;
  shadowCol = trongreen;
    batCol = trongreen;
    batCol2 = trongreen;
    batEyeCol = trongreen;
    wingCol = trongreen;
  skin++;
  noSmooth();
}
if (i == 6){
  //missingno
  blendMode(SUBTRACT);
  sheetCol = red;
  eyeCol = white;
  pelletCol = ecto;
  bgCol= white;
  skin = 1;
  floorCol = black;
  shadowCol = uglyblue;
    batCol = bat;
    batCol2 = bat;
    batEyeCol = black;
    wingCol = bat;
}
}

