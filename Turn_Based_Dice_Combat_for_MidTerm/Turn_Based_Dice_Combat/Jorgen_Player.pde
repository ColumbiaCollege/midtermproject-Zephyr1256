class Player {

  //Associated Properties
  int x0;
  int y0;
  int hpPlayer;
  int acPlayer;
  //int framecount;

  //Constructor
  Player() {
    x0 = 250;
    y0 = 260;
    hpPlayer = 30;
  }

  //Methods
  void display() {{
    fill(0, 200, 0);
    ellipse(250, 260, 20, 20);
    fill(0);
    rect(width/1.58,height/1.5,80,30,1);
    fill(0,200,0);
    text("Jorgen HP: " + str(hpPlayer),width/1.8,height/1.5);
  }
  if (hpPlayer<1){
    Player=false;
  }
  
  if (frameCount % 120 == 0){
  hpPlayer -=1;
}

}}
