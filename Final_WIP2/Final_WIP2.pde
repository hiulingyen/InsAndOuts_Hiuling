  import processing.serial.*;  //<>//
  Serial myPort; 
  int val=0; 

  PFont f; 

void setup(){
    printArray(Serial.list());
  String portName = Serial.list()[4]; 
  myPort = new Serial(this, portName, 9600);
  background(0);
  fill (0);
  size(600, 600);
  f = createFont("Arial", 16);

}

void draw(){
    fill(255);
    textFont(f, 28);
    text("Are you ok today?", width/3, 50, 500, 100);
  
    fill(255, 188, 0);
    noStroke();
    circle(300, 350, 400);
    fill(131, 70, 0);
    noStroke();
    circle(250, 290, 40);
    fill(131, 70, 0);
    noStroke();
    circle(350, 290, 40);
    
    stroke(73, 39, 0);//flat
    line(250, 380, 350, 380);
    strokeWeight(8);

    arc(300, 350, 100, 100, 0, PI, OPEN);//smile
    noFill();
    //background(255);
    fill(255);
    textFont(f, 28);
    text("Be Happy!", 230, 50, 500, 100);
  
  //  if ( myPort.available() > 0) { 
  //  val = myPort.read();
  //}
  //if (val > 30){
  //  stroke(73, 39, 0);//flat
  //  line(200, 400, 400, 400);
  //  strokeWeight(8);
  //}
  //if (val > 90 && val < 110){
    //arc(300, 350, 100, 100, 0, PI, OPEN);//smile
    //noFill();
    //fill(255);
    //textFont(f, 28);
    //text("Be Happy!", 230, 50, 500, 100);
      
  //}
 

}
