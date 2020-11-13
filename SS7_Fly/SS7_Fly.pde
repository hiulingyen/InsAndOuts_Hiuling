//A Hummingbird by Hiuling Yen
  import processing.serial.*; 
  Serial myPort; 
  int val=0; 
  int i = 500;
  int r = 500;
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
  if (val > 50){
    image(Grass, 0, 0, width, height);
    BugLeft();
    i = val;
    r = val;
    
 
  if (val > 50 && val < 70){
    image(Grass, 0, 0, width, height);
  BugLeft();
      i = val*2;
      r = val*2;
      
  }
  if (val > 70 && val < 90){
    image(Grass, 0, 0, width, height);
  BugLeft();
      i = val*2;
      r = val*2;
      
  }
  if (val > 90 && val < 110){
    image(Grass, 0, 0, width, height);
  BugLeft();
      i = val*2;
      r = val*2;
      
  }
    if (val > 110 && val < 130){
    image(Grass, 0, 0, width, height);
  BugLeft();
      i = val*2;
      r = val*2;
      
  }
   if (val > 130 && val < 150){
    image(Grass, 0, 0, width, height);
  BugLeft();
      i = val*2;
      r = val*2;
      
  }
 }

}
