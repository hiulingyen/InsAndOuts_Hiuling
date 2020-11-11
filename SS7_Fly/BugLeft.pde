void BugLeft(){
    float bx = i;
    float by = r;
  fill(100);
  stroke(30);
  strokeWeight(2);
  ellipse(bx, by, 120, 40); //body 120 90
  
  fill(0);
  stroke(255);
  strokeWeight(1);
  triangle(bx-45, by+5, bx-60, by-5, bx-110, by+5); //mouth
  
  fill(255);
  stroke(0);
  strokeWeight(2);
  circle(bx-50, by-25, 40); //eye
  fill(0);
  circle(bx-50, by-25, 5); //eye ball
  
  if (mousePressed == true) {
   fill(random(255), random(255), random(255), 80);
   stroke(155);
   strokeWeight(2);
   quad(bx+118, by-75, bx+90, by-30, bx, by-10, bx+40, by-50);
   stroke(155);
   strokeWeight(2);
   quad(bx+120, by-45, bx+80, by-10, bx, by-10, bx+30, by-20);

  } else {
   fill(255, 255, 255,80);
   stroke(155);
   strokeWeight(2);
   quad(bx+118, by-75, bx+90, by-30, bx, by-10, bx+40, by-50);//wing random color when mouse is press
   stroke(155);
   strokeWeight(2);
   quad(bx+120, by-45, bx+80, by-10, bx, by-10, bx+30, by-20);
  }}
