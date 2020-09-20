//A Little Bug, but my little sister name it Hummingbird by Hiuling Yen

//float r = random(0, 255);
//float g = random(0, 255);
//float b = random(0, 255);

void setup(){
  size(1080, 720);
  background(200);
}

void draw(){

  fill(100);
  stroke(30);
  strokeWeight(2);
  ellipse(120, 90, 120, 30); //body
  
  fill(255);
  stroke(0);
  strokeWeight(2);
  circle(170, 75, 40); //eye
  fill(0);
  circle(170, 75, 5); //eye ball

  fill(0);
  stroke(255);
  strokeWeight(1);
  triangle(180, 95, 190, 85, 210, 100); //mouth
  
  if (mousePressed == true) {
   fill(random(255), random(255), random(255), 80);
   stroke(155);
   strokeWeight(2);
   quad(2, 15, 30, 60, 120, 80, 80, 40);
  } else if (keyPressed == true){
   background(random(255));
  }
  else {
   fill(255, 255, 255,80);
   stroke(155);
   strokeWeight(2);
   quad(2, 15, 30, 60, 120, 80, 80, 40);//wing random color when mouse is press
  }
}
