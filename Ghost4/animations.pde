void wings(float wingPos){
  if (batAnim == 15){
   batAnim=0;
 }
   if (batAnim == 14){
   batAnim++;
 }
   if (batAnim == 13){
   batAnim++;
 }
  if (batAnim == 12){
    wingY=-15;
   batAnim++;
 }
   if (batAnim == 11){
    wingY=-10;
   batAnim++;
 }
   if (batAnim == 10){
   wingY=0;
   batAnim++;
 }
  if( batAnim == 9){
   wingY=10;
   batAnim++;
 }
       if (batAnim == 8){
   batAnim++;
 }
       if (batAnim == 7){
   batAnim++;
 }
      if (batAnim == 6){
   batAnim++;
 }
     if (batAnim == 5){
   batAnim++;
 }
    if (batAnim == 4){
   wingY=15;
   batAnim++;
 }
   if (batAnim == 3){
   wingPos=10;
   batAnim++;
 }
  if (batAnim == 2){
   wingY=0;
   batAnim++;
 }
  if (batAnim == 1){
   wingY=-10;
   batAnim++;
 }
  if (batAnim == 0){
   wingY=-15;
   batAnim++;
 }
}

