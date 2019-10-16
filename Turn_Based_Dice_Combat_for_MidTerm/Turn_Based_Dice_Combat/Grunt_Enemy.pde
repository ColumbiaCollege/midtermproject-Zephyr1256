class Grunt {

  //Associated Properties
  int x1;
  int y1;
  int hpGrunt;
  int acGrunt;

  //Constructor
  //Sets a starting position and hp
  Grunt() {
    x1 = 180;
    y1 = 50;
    hpGrunt = 15;
    acGrunt = 8;
  }

  //Methods
  //Sets up a display command so the object is drawn when Grunt.display is read
  void display() {
    fill(200, 0, 0);
    ellipse(x1, y1, 15, 15);
    rectMode(CENTER);
    fill(0);
    rect(width/3.7,height/7.4,80,15);
    fill(200,100,20);
    text("Orc HP: " + str(hpGrunt),width/4.6,height/7);
  }
//  if (newroll>8) {
//    hpGrunt=hpGrunt-newBdamage;
//}
//if (hpGrunt<=0) {
//  Grunt=false;
//  println("false");
//{}}}
}
