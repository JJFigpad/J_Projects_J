//Variables generales
final int col = 10;
final int fil = 20;
int last = 0;
int c = 0;
int x = 0;
int y = 0; //579
int temph = 0;
int tempc = 0;
boolean cp = true;
//Variables para puntos y niveles
int score = 0;
int nivel = 0;
int vel = 0;

void setup() {
  size(610, 620);
  Tablero();
  textSize(20);
}
void draw() {
  background(0);
  if (Final() == false) {
    Extras();
    displayT();
    drawP();
  } else {
    Extras();
    displayT();
    push();
    textSize(55);
    fill(255);
    text("Game Over", 155, 320);
    pop();
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && c < 19) {
      if ((tRotation == tR1 && x+hor*30 == block1) || (tRotation == tR2 && x+hor*30 == block2) || (RotV() == false)) {
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

void Extras() { //Texto y decoracion
  push();
  textSize(40);
  fill(255, 0, 0);
  text("TETRIS", 465, 115);
  pop();
  fill(255, 0, 0);
  text("Lineas:", 30, 230);
  text("Puntaje:", 30, 360);
  text("Nivel:", 480, 300);
  fill(255);
  text((nivel+1), 500, 330);
  text(ct1, 50, 260);
  text(score, 50, 390);
}

Boolean Final() { //Game over
  if (c < 1 || tempc <= 1) {
    if ((rand != "I" && tablero[temph][c+1] != 0) || (rand == "I" && tablero[temph+3][c+1] != 0)) {
      return true;
    }
  }
  return false;
}
