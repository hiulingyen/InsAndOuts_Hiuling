//A Hummingbird by Hiuling Yen
  import processing.serial.*; 
  Serial myPort; 
  int val=0; 
  int i;
  int r;
  PImage Grass;

void setup(){
    printArray(Serial.list());
  String portName = Serial.list()[4]; 
  myPort = new Serial(this, portName, 9600);
  background(255);
  fill (0);
  size(600, 600);
  Grass = loadImage("Grass.jpg");
}

void draw(){
   image(Grass, 0, 0, width, height);

    if ( myPort.available() > 0) { 
    val = myPort.read();
  }
  if (val>=50){
    image(Grass, 0, 0, width, height);
    BugLeft();
    i = i + val;
    r = r + val;
    
 
  if (val>=65){
    image(Grass, 0, 0, width, height);
  BugLeft();
      i = i + val;
      r = r + val;
      
  }
  if (val>=200){
    image(Grass, 0, 0, width, height);
      BugLeft();
          i = i + val;
          r = r + val;
          
  }
    if (val>=227){
      image(Grass, 0, 0, width, height);
      BugLeft();
          i = i + val;
          r = r + val;
          
  }
   if (val<70){
     image(Grass, 0, 0, width, height);
     BugRight();
     i = i + val;
     r = r + val;
     
 }
 }

}
