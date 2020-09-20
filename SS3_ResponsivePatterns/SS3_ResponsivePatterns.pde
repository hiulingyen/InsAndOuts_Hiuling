//A Little Bug, but my little sister name it Hummingbird by Hiuling Yen

//float r = random(0, 255);
//float g = random(0, 255);
//float b = random(0, 255);

void setup(){
  size(800, 800);

}

void draw(){
  //float bx = pmouseX;
  //float by = pmouseY;
 // ellipse (mouseX-50, mouseY, 50, 50);
 // line (mouseX, mouseY, bx, by);
  background(200);


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
} //<>//

  
