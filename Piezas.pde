//Variables de las figuras
int hor = 0;
int lim1 = 0;
int lim2 = 0;
int tR1 = 0;
int tR2 = 0;
int block1 = 0;
int block2 = 0;
int [] T = {58, 154, 184, 178};
int [] L = {201, 15, 147, 60};
int [] J = {75, 39, 210, 57};
int [] O = {15};
int [] Z = {30, 306, 30, 306};
int [] S = {51, 180, 51, 180};
int [] I = {4369, 3840, 4369, 3840};
int tRotation = 0;
String[] piezas = {"T", "L", "J", "O", "Z", "S", "I"};
String rand;

//Funciones de las piezas
void sigpieza() {
  if (siguiente() == true) {
    //rand = randS; //int(random(7))
    tRotation = int(random(4));
    rand = piezas[0]; //int(random(7))
    hor = 0;
    valido = true;
  }
}

Boolean siguiente() {
  if (cp == true) {
    cp = false;
    return true;
  } else if ((limyP() == false) || y+30*c >= 579) { //y+30*c >= 579
    if (millis() >= last+1400) {
      tempc = c;
      c = -1;
      cp = false;
      pe = true;
      cambioP();
      return true;
    }
  }
  return false;
}

void drawP() {
  sigpieza();
  c_c = c+1;
  if (millis() >= last+1400 && (limyP() == true)) {
    c++;
    last = millis();
  }
  temph = hor+5;
  push();
  translate(hor*30, c*30);
  CadaP(rand);
  pop();
  //println(temph);
}

void CadaP(String rand) {                    
  if (rand == "T") {
    tR1 = 1;
    tR2 = 3;
    block1 = 150;
    block2 = 420;
    push();
    fill(191, 98, 255);
    for (int i = 0; i <= 8; i++) {
      if ((T[tRotation] & (1 << 8 - i)) != 0) {
        x = 270+((i % 3) * width / 20);
        y = (((i / 3) | 0) * height / 20)-22;
        rect(x, y, width / 20, height / 20);
      }
    }
    pop();
    if (tRotation == 0 || tRotation == 2) {
      lim1 = 180;
      lim2 = 330;
    } else if (tRotation == 1) {
      lim1 = 150;
      lim2 = 330;
    } else if (tRotation == 3) {
      lim1 = 180;
      lim2 = 360;
    }
  } else if (rand == "L") {
    tR1 = 0;
    tR2 = 2;
    block1 = 181;
    block2 = 181;
    push();
    fill(255, 109, 0);
    for (int i = 0; i <= 8; i++) {
      if ((L[tRotation] & (1 << 8 - i)) != 0) {
        x = 270+((i % 3) * width / 20);
        y = (((i / 3) | 0) * height / 20)-22;
        rect(x, y, width / 20, height / 20);
      }
    }
    pop();
    if (tRotation == 0 || tRotation == 2) {
      lim1 = 150;
      lim2 = 330;
    } else if (tRotation == 1 || tRotation == 3) {
      lim1 = 180;
      lim2 = 330;
    }
  } else if (rand == "J") {
    tR1 = 0;
    tR2 = 2;
    block1 = 181;
    block2 = 150;
    push();
    fill(21, 79, 212);
    for (int i = 0; i <= 8; i++) {
      if ((J[tRotation] & (1 << 8 - i)) != 0) {
        x = 270+((i % 3) * width / 20);
        y = (((i / 3) | 0) * height / 20)-22;
        rect(x, y, width / 20, height / 20);
      }
    }
    pop();
    if (tRotation == 0 || tRotation == 2) {
      lim1 = 150;
      lim2 = 330;
    } else if (tRotation == 1 || tRotation == 3) {
      lim1 = 180;
      lim2 = 330;
    }
  } else if (rand == "O") {
    push();
    fill(244, 253, 0);
    if (millis() >= last+1500) {
      last = millis();
      c += 1;
    }
    for (int i = 0; i <= 3; i++) {
      if ((O[0] & (1 << 3 - i)) != 0) {
        x = 270+((i%2) * width / 20);
        y = (((i / 2) | 0) * height / 20)-22;
        rect(x, y, width / 20, height / 20);
      }
    }
    pop(); 
    lim1 = 180;
    lim2 = 360;
  } else if (rand == "Z") {
    tR1 = 1;
    tR2 = 3;
    block1 = 420;
    block2 = 420;
    push();
    fill(68, 120, 0);
    for (int i = 0; i <= 8; i++) {
      if ((Z[tRotation] & (1 << 8 - i)) != 0) {
        x = 270+((i % 3) * width / 20);
        y = (((i / 3) | 0) * height / 20)-22;
        rect(x, y, width / 20, height / 20);
      }
    }
    pop();
    if (tRotation == 0 || tRotation == 2) {
      lim1 = 180;
      lim2 = 330;
    } else if (tRotation == 1 || tRotation == 3) {
      lim1 = 180;
      lim2 = 360;
    }
  } else if (rand == "S") {
    tR1 = 1;
    tR2 = 3;
    block1 = 390;
    block2 = 390;
    push();
    fill(196, 0, 5);
    if (millis() >= last+1500) {
      last = millis();
      c += 1;
    }
    for (int i = 0; i <= 8; i++) {
      if ((S[tRotation] & (1 << 8 - i)) != 0) {
        x = 270+((i % 3) * width / 20);
        y = (((i / 3) | 0) * height / 20)-22;
        rect(x, y, width / 20, height / 20);
      }
    }
    pop();
    if (tRotation == 0 || tRotation == 2) {
      lim1 = 180;
      lim2 = 330;
    } else if (tRotation == 1 || tRotation == 3) {
      lim1 = 180;
      lim2 = 360;
    }
  } else if (rand == "I") {
    tR1 = 0;
    tR2 = tR1;
    block1 = 151;
    block2 = 151;
    push();
    fill(0, 204, 204);
    for (int i = 0; i <= 15; i++) {
      if ((I[tRotation] & (1 << 15 - i)) != 0) {
        x = 270+((i % 4) * width / 20);
        y = (((i / 4) | 0) * height / 20)-22;
        rect(x, y, width / 20, height / 20);
      }
    }
    pop();
    if (tRotation == 0 || tRotation == 2) {
      lim1 = 90;
      lim2 = 300;
    } else if (tRotation == 1 || tRotation == 3) {
      lim1 = 180;
      lim2 = 300;
      if (x+hor*30 <= 181) {
        hor+=2;
      } else if (x+hor*30 <= 211) {
        hor ++;
      }
    }
  }
}
