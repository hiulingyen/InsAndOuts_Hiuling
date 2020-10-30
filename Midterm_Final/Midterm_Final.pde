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
    fill(0, 0, 0);
    textFont(f, 28);
    text("You are a hungry bug, Try to live under all the cituation!", 80, 40, 500, 100);
    text("Press s to start to alive", 80, 150);
    BugStay();
      if (key == 's' || key == 'S') {
  state = "Scene1";
  }
  } else if (state=="Scene1") {
    background(0, 100, 10);
    image(House, 0, 100, 500, 500);
    image(Garden, 300, 100, 500, 500);
    BugMove();
    textFont(f, 24);
    fill(255, 255, 255);
    text("press 1 to the House, 2 to Garden to find some FOOD!", 20, 20 ,500, 100);
    if (key == '1') {
    state = "Scene2";
  }else if(key == '2') {
    state = "Scene3";
  }
  } 
  ///////////////////////////////
    else if (state=="Scene2") {
    background(0, 100, 10);
    image(TV, 0, 100, 500, 500);
    image(Kitchen, 300, 100, 500, 500);
    BugMove();
    textFont(f, 24);
    fill(255, 255, 255);
    text("press 3 to the Livingroom, 4 to Kitchen to find some FOOD!", 20, 20 ,500, 100);
    if (key == '3') {
    state = "Scene4";
  }else if(key == '4') {
    state = "Scene5";
  }
  } 
 
  //////////////////////////////
 else if (state=="Scene4") {
    background(0, 100, 10);
    image(Popcorn, 0, 100, 500, 500);
    image(TV, 300, 100, 500, 500);
    BugMove();
    textFont(f, 24);
    fill(255, 255, 255);
    text("A Human! press 5 to the pick up a popcorn, 6 to leave!", 20, 20 ,500, 100);
    if (key == '5') {
    state = "Scene6";
  }else if(key == '6') {
    state = "Scene7";
  }
  }
    //////////////////////////////
 else if (state=="Scene6") {
    background(0, 100, 10);
    image(Clap, 50, 50, 500, 500);
    BugMove();
    textFont(f, 24);
    fill(255, 255, 255);
    text("Noooooo! No.9177 Get out from there! PRESS Q !!!", 20, 20 ,500, 100);
    if (key == 'q' || key == 'Q' ) {
    state = "Dead";
  }
  }
  ///////////////////////////////
  else if (state=="Dead") {
    background(255, 0, 0);
    image(Dead, 50, 50, 500, 500);
    fill(0, 0, 0);
    text("Sorry, you didn't make it Click the mouse to restart.", 20, 20 ,500, 100);

  }
  println(state);
}
  void keyPressed() {

}

void mousePressed() {
  if (state== "Dead") {
    state="Start";
  } 
} //<>//
void BugMove(){
   if(mouseX < 300){
   BugLeft();
 }else {
   BugRight();
 }

}

  
