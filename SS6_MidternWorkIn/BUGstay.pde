void BUGstay(){
  fill(100);
  stroke(30);
  strokeWeight(2);
  ellipse(width/2, height/2, 120, 40); //body 120 90
  
  fill(0);
  stroke(255);
  strokeWeight(1);
  triangle(width/2+45, height/2+5, width/2+60, height/2-5, width/2+110, height/2+5); //mouth
  
  fill(255);
  stroke(0);
  strokeWeight(2);
  circle(width/2+50, height/2-25, 40); //eye
  fill(0);
  circle(width/2+50, height/2-25, 5); //eye ball
  
  if (mousePressed == true) {
   fill(random(255), random(255), random(255), 80);
   stroke(155);
   strokeWeight(2);
   quad(width/2-118, height/2-75, width/2-90, height/2-30, width/2, height/2-10, width/2-40, height/2-50);
   stroke(155);
   strokeWeight(2);
   quad(width/2-120, height/2-45, width/2-80, height/2-10, width/2, height/2-10, width/2-30, height/2-20);

  } else {
   fill(255, 255, 255,80);
   stroke(155);
   strokeWeight(2);
   quad(width/2-118, height/2-75, width/2-90, height/2-30, width/2, height/2-10, width/2-40, height/2-50);//wing random color when mouse is press
   stroke(155);
   strokeWeight(2);
   quad(width/2-120, height/2-45, width/2-80, height/2-10, width/2, height/2-10, width/2-30, height/2-20);
  }}
