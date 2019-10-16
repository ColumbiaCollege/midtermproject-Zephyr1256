//Jacob Cantanho -- MidTerm Project Game

//initializing classes, and setting booleans, floats, and integers
//(when false, either progresses or ends game)
Grunt orc = new Grunt();
Elite mage = new Elite();
Player jorgen = new Player();
boolean Grunt = true;
boolean Elite = true;
boolean Player=true;
boolean attackMade = false;
boolean specialAttackMade = false;
float roll;
float Bdamage;
float Sdamage;
int newroll;
int newBdamage;
int newSdamage;

//UI and screen setup
void setup() {
  background(120, 60, 10);
  size(500, 400);
  fill(180, 20, 45);
  rect(0, 350, 500, 400);
  fill(50);
  rect(0, 360, 40, 40);
  rect(210, 360, 40, 40);
  rect(460, 360, 40, 40);
}
//show class objects
void draw() {
  jorgen.display();
  orc.display();
  mage.display();
   if (Player=false) {
     println("game over");
  rectMode(CORNER);
  rect(0,0,500,400);
  textSize(40);
    text("Game Over",250,200);
    delay(3000);
    exit();
  }
}
////UI interactions enabled by these buttons
//Basic attack
void mousePressed() {
  if (mousePressed && mouseY>=350 && mouseY<=400 && mouseX>=0 && mouseX<=50) {
    roll=random(1, 21);
    Bdamage=random(1, 5);
    newroll=int(roll);
    newBdamage=int(Bdamage);
    println("newroll", newroll);
    println("newBdamage", newBdamage);
    //attackMade=true
    if (newroll>=20) {
      newBdamage=newBdamage*2;
    }
    orc.hpGrunt -= newBdamage;
    println("attack");
    
  }
  //Special attack
  if (mousePressed && mouseY >= 360 && mouseY <= 400 && mouseX >= 210 && mouseX <= 250) {
    roll=random(1, 21);
    Sdamage=random(2, 7);
    newroll=int(roll);
    newSdamage=int(Sdamage);
    println("newroll", newroll);
    println("newSdamage", newSdamage);
    //specialAttackMade = true;
    if (newroll>=20) {
      newBdamage=newBdamage*2;
    }
    mage.hpElite -= newSdamage;
    println("sAttack");
  }
}

//if (Grunt = false && Elite = false) {
//  rectMode(CORNER);
//  rect(width,height,0,0);
//  text("Victorious",width/2,height/2);
//}
