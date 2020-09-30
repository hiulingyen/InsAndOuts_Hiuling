//A Hummingbird by Hiuling Yen
//Move around the mouse and do a right click to have a random color.
//Move to left right corner will start the sonw!

//float r = random(0, 255);
//float g = random(0, 255);
//float b = random(0, 255);
  PImage imge; 
  PFont f; 
  
void setup(){
  size(800, 800);
  imge = loadImage("Snow_Window.jpeg");
  f = createFont("Arial", 16);
}

void draw(){

  //float bx = pmouseX;
  //float by = pmouseY;
 // ellipse (mouseX-50, mouseY, 50, 50);
 // line (mouseX, mouseY, bx, by);
  background(200);
  image(imge, 0, 0, width, height);
  
  fill(10, 50, 255);
  textFont(f, 28);
  text("Try to move me around and click the mouse!", 80, 100);

//int i = 0;
//stroke(0);
//   strokeWeight(2);
  fill(255);
  int p = 0;
  int o = 0;
  for(p = 0; p < 100; p += 10 ){
      stroke(0);
      stroke(0);
      line(p,0,width,p);
    p = p+10;
  //}
}
  
//  rect(0, 0, 200, 200);
  BUG();
  int i;
  if (mouseX < 400 && mouseY < 400){
  for (i = 0 ; i < 50; i++){
    rect(random(800),random(800)+i,32,32); 
  }
  }
  }
  void BUG(){
    float bx = pmouseX;
    float by = pmouseY;
  fill(100);
  stroke(30);
  strokeWeight(2);
  ellipse(bx, by, 120, 40); //body 120 90
  
  fill(0);
  stroke(255);
  strokeWeight(1);
  triangle(bx+45, by+5, bx+60, by-5, bx+110, by+5); //mouth
  
  fill(255);
  stroke(0);
  strokeWeight(2);
  circle(bx+50, by-25, 40); //eye
  fill(0);
  circle(bx+50, by-25, 5); //eye ball
  
  if (mousePressed == true) {
   fill(random(255), random(255), random(255), 80);
   stroke(155);
   strokeWeight(2);
   quad(bx-118, by-75, bx-90, by-30, bx, by-10, bx-40, by-50);
   stroke(155);
   strokeWeight(2);
   quad(bx-120, by-45, bx-80, by-10, bx, by-10, bx-30, by-20);

  } else {
   fill(255, 255, 255,80);
   stroke(155);
   strokeWeight(2);
   quad(bx-118, by-75, bx-90, by-30, bx, by-10, bx-40, by-50);//wing random color when mouse is press
   stroke(155);
   strokeWeight(2);
   quad(bx-120, by-45, bx-80, by-10, bx, by-10, bx-30, by-20);
  }
  } //<>//

  
