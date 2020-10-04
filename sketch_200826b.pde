  //Variables generales
final int col = 10;
final int fil = 20;
int last = 0;
int c = 0;
int c_c = 0;
int x = 0;
int y = 0; //579
int temph = 0;
int tempc = 0;
boolean cp = true;
boolean pe = false;
//Variables para puntos
int score = 0;
//Variables extras
//PFont font1;

void setup() {
  size(610, 620, P2D);
  Tablero();
  textSize(15);
}
void draw() {
  background(155, 155, 155);
  //push();
  //fill(230);
  //rect(470,55,130,130);
  /*fill(49, 1, 56);
  text("T", 60, 100);
  fill(255, 109, 0);
  text("E", 60, 140);
  fill(21, 79, 212);
  text("T", 60, 180);
  fill(244, 253, 0);
  text("R", 60, 220);
  fill(68, 120, 0);
  text("I", 65, 260);
  fill(196, 0, 5);
  text("S", 60, 300);*/
  //pop();
  push();
  fill(230);
  rect(5,350,140,250);
  fill(0);
  text("Estadisticas: ", 10, 370);
  text("Puntaje = " + score, 10, 400);
  pop();
  push();
  fill(0);
  rect(151, 0, 300, 10);
  pop();
  displayT();
  drawP();
  println(valido);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && c < 19) {
      if ((tRotation == tR1 && x+hor*30 == block1) || (tRotation == tR2 && x+hor*30 == block2) || valido == false) {
        tRotation+=0;
      } else {
        tRotation ++;
      }
    }
    tRotation = tRotation < 0 ? 3 : tRotation % 4;
    if (keyCode == DOWN && y+30*c < 579 && (limyP() == true)) {
      c++;
      score ++;
    }
    if (keyCode == LEFT && (270+hor*30) >= lim1 && (limxiP() == true)) {
      hor--;
    } else if (keyCode == RIGHT && (270+hor*30) <= lim2 && (limxdP() == true)) {
      hor++;
    }
  }
}
