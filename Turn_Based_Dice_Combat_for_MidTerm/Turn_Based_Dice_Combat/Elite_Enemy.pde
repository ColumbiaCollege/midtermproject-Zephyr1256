class Elite {

  //Associated Properties
  int x2;
  int y2;
  int hpElite;
  int acElite;

  //Constructor
  //Sets a starting position and hp
  Elite() {
    x2 = 225;
    y2 = 55;
    hpElite = 30;
    acElite = 11;
  }

  //Methods
  //Sets up a display command so the object is drawn when an Elite.display is read
  void display() {
    fill(197, 179, 88);
    triangle(x2-15, y2-19, x2, y2-55, x2+15, y2-19);
    rectMode(CENTER);
    rect(x2, y2, 40, 40);
    fill(0);
    rect(232,95,80,15);
    fill(197,179,88);
    text("Elite HP: " + str(hpElite), 200,100);
  }
}
