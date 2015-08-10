//Palette  
  color white = #E0F0FF;
  color black = #A6B0BB;
  color red = #CC0000;
  color blue = #3366FF;
  color grass = #B8E68A;
  color royal = #684e8e;

//length of grid
int side = 7;
//number of squares (area of grid)
int squares = side*side;


//load stuff
PFont kublaiF;

//onBoard
boolean onBoard = false;

//freeSpace
boolean freeSpace = false;

//board drawing stuff
int tracker = 0;
int[] checker = new int[squares];

//check whether square is occupied
int[] control = new int[squares];

//record structure type of tile
String[] building = new String[squares];

//turn counter
int turnCount = 1;
int player = 1;

//mouse coordinate tracking
int xco = (mouseX/100)-1 ;
int yco= (mouseY/100)-1 ;
int squareCheck = 0;


void setup(){
  size(1536,2048);
  noStroke();
  rectMode(CENTER);
  kublaiF = createFont("Helvetica", 32);
  textFont(kublaiF);
  
//set initial board colors & occupation
  for (int whi = 0; whi < squares; whi = whi+2){
  checker[whi] = white;
}
for (int bla = 1; bla < squares; bla = bla+2){
  checker[bla] = black;
}
for (int noman = 0; noman < squares; noman++){
  control[noman] = 0;
  building[noman] = "empty";
}
}

void draw(){
  background(royal);
  
//freeSpace test

  
//onBoard test
  if ((xco <= side) && (yco <= side)){
onBoard = true;
}
else{
onBoard = false;
}

//check coords
  xco = (mouseX/100)+1;
  yco = (mouseY/100)+1;

//coord display/buildingtype
  if (onBoard == true){
  text(xco + "," + yco + " " + building[squareCheck],side*100+25, 50);
  }
  
//squarecheck calc
    squareCheck = ((yco + ((xco-1)*side)))-1;
  
  
//draw board
  for (int ix = 50; ix < (50+side*100); ix = ix+100){
    for (int iy = 50; iy < (50+side*100); iy = iy+100){
      fill(checker[tracker]);
      rect(ix,iy,100,100);
      tracker++;
    }
  }
  tracker=0;
  
  //drawBuildings
    for (int ix = 50; ix < (50+side*100); ix = ix+100){
      for (int iy = 50; iy < (50+side*100); iy = iy+100){
      //tower draw
      if (((control[tracker]) == 1)&&((building[tracker]) == "tower")){
      fill(blue);
      rect(ix,iy,50,50);
      }
      if (((control[tracker]) == 2)&&((building[tracker]) == "tower")){
      fill(red);
      rect(ix,iy,50,50);
      }
      
      //horizontal walls
        if (((control[tracker]) == 1)&&((building[tracker]) == "hWall")){
      fill(blue);
      rect(ix,iy,150,25);
      }
      if (((control[tracker]) == 2)&&((building[tracker]) == "hWall")){
      fill(red);
      rect(ix,iy,150,25);
      }
      
        if (((control[tracker]) == 1)&&((building[tracker]) == "vWall")){
      fill(blue);
      rect(ix,iy,25,150);
      }
      if (((control[tracker]) == 2)&&((building[tracker]) == "vWall")){
      fill(red);
      rect(ix,iy,25,150);
      }
      
      
      tracker++;
    }
  }

    fill(white);
    rect(side*100+150, 50, 200, 50);
      
//playerfill
if (player == 1){
  fill(blue);
}
if (player == 2){
  fill(red);
}


//coord display/buildingtype
  if (onBoard == true){
  text(xco + "," + yco + " " + building[squareCheck],side*100+25, 50);
  }

//display tile
if (onBoard == true){
  rect(((xco*100)-50),((yco*100)-50),25,25);
}

if (onBoard == false){
  rect (mouseX,mouseY,100,100);
}
  


 if(turnCount%2 == 0){
  player = 2;
 }
else{
  player=1;
}
    tracker = 0;
}

void mouseClicked(){
  
if((onBoard == true) && (control[squareCheck] == 0)){
  
if (player == 1){
checker[squareCheck] = grass;
control[squareCheck] = 1;
building[squareCheck] = "tower";
captureh(xco, 1, 2, grass, "hWall");
captureh(xco, 1, 0, grass, "hWall");
capturev(yco, 1, 2, grass, "vWall");
capturev(yco, 1, 0, grass, "vWall");
}

if (player == 2){
checker[squareCheck] = grass;
control[squareCheck] = 2;
building[squareCheck] = "tower";
captureh(xco, 2, 1, grass, "hWall");
captureh(xco, 2, 0, grass, "hWall");
capturev(yco, 2, 1, grass, "vWall");
capturev(yco, 2, 0, grass, "vWall");
}


turnCount++;

}
}




void captureh(int x1, int con1, int con2, int tileCol, String buildType){
  if(((x1 > 2) && (control[squareCheck-side*2]==con1)) && (control[squareCheck-side]==con2)){
    if (building[squareCheck-side] != "vWall"){
      checker[squareCheck-side] = tileCol;
      control[squareCheck-side] = con1;
      building[squareCheck-side] = buildType;
    }
  }
  if(((x1 < side-1) && (control[squareCheck+side*2]==con1)) && (control[squareCheck+side]==con2)){
    if (building[squareCheck+side] != "vWall"){
      checker[squareCheck+side] = tileCol;
      control[squareCheck+side] = con1;
      building[squareCheck+side] = buildType;
    }
  }
 }
  
void capturev(int x1, int con1, int con2, int tileCol, String buildType){
  if(((x1 > 2) && (control[squareCheck-2]==con1)) && (control[squareCheck-1]==con2)){
    if (building[squareCheck-1] != "hWall"){
        checker[squareCheck-1] = tileCol;
      control[squareCheck-1] = con1;
      building[squareCheck-1] = buildType;
    }
  }
  if(((x1 < side-1) && (control[squareCheck+2]==con1)) && (control[squareCheck+1]==con2)){
    if (building[squareCheck+1] != "hWall"){
      checker[squareCheck+1] = tileCol;
      control[squareCheck+1] = con1;
      building[squareCheck+1] = buildType;
    }
  }
 }

