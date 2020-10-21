//A Hummingbird by Hiuling Yen
//Move around the mouse and do a right click to have a random color.
//Press s to start the game.

  PImage House; 
  PImage Bee; 
  PImage Clap;
  PImage Dead;
  PImage Flower;
  PImage Flowers;
  PImage Garden;
  PImage Gardener;
  PImage Grass;
  PImage Kitchen;
  PImage Mantis;
  PImage Popcorn;
  PImage SprayGrass;
  PImage Spraying;
  PImage TV;
  
  PFont f; 
  String state = "Start";
  float bx = pmouseX;
  float by = pmouseY;

void setup(){
  size(600, 600);
  House = loadImage("House.jpg");
  Garden = loadImage("Garden.jpeg");
  Flower = loadImage("Flower.jpg");
  Grass = loadImage("Grass.jpg");
  Gardener = loadImage("Gardener.png");
  Mantis = loadImage("Mantis.jpg");
  Bee = loadImage("Bee.jpg");
  Flowers = loadImage("Flowers.jpg");
  SprayGrass = loadImage("SprayGrass.jpg");
  Kitchen = loadImage("Kitchen.jpeg");
  TV = loadImage("TV.jpg");
  Popcorn = loadImage("Popcorn.jpg");
  Spraying = loadImage("Spraying.jpg");
  Clap = loadImage("Clap.jpg");
  Dead = loadImage("Dead.jpg");
//  imge = loadImage("Kitchen.jpeg");
  f = createFont("Arial", 16);
}

void draw(){

if (state=="Start") {
    image(House, 0, 0, width, height);
    fill(255, 255, 255);
    textFont(f, 28);
    text("You are a hungry bug, Try to live under all the cituation!", 100, 100);
    text("Press s to start to alive", 100, 200);
    BugStay();
  } else if (state=="Scene1") {
    background(0, 100, 10);
    image(House, 0, 100, 500, 500);
    image(Garden, 300, 100, 500, 500);
    BugMove();
    textFont(f, 24);
    fill(255, 255, 255);
    text("press A to the House, D to Garden to find some FOOD!", 20, 20 ,500, 100);
    if (key == 'a' || key == 'A') {
    state = "Scene2";
  }else if(key == 'd' || key == 'D') {
    state = "Scene3";
  }
  } 
  ///////////////////////////////
     if (state=="Scene2") {
    background(0, 100, 10);
    image(Kitchen, 0, 100, 500, 500);
    image(TV, 300, 100, 500, 500);
    BugMove();
    textFont(f, 24);
    fill(255, 255, 255);
    text("press A to the Kitchen, D to Livingroom to find some FOOD!", 20, 20 ,500, 100);
    if (key == 'a' || key == 'A') {
    state = "Scene4";
  }else if(key == 'd' || key == 'D') {
    state = "Scene5";
  }
  } 
 
  //////////////////////////////
 if (state=="Scene4") {
    background(0, 100, 10);
    image(Popcorn, 0, 100, 500, 500);
    image(TV, 300, 100, 500, 500);
    BugMove();
    textFont(f, 24);
    fill(255, 255, 255);
    text("A Human! press A to the pick up a popcorn, D to leave!", 20, 20 ,500, 100);
    if (key == 'a' || key == 'A') {
    state = "Scene6";
  }else if(key == 'd' || key == 'D') {
    state = "Scene7";
  }
  }
  ///////////////////////////////
  else if (state=="Dead") {
    background(255, 0, 0);
    text("Sorry, you didn't make it", width/2, height/2);
    text("Click the mouse to restart.", width/2, height/2 + 50);
  }
  println(state);
}
  void keyPressed() {
  if (key == 's' || key == 'S') {
  state = "Scene1";
  }
}

void mousePressed() {
  if (state== "Dead") {
    state="Start";
  } else if (state=="Dead") {
    state= "gameStart";
  }
} //<>//
void BugMove(){
   if(mouseX < 300){
   BugLeft();
 }else {
   BugRight();
 }

}

  
