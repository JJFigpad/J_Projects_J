//Colisiones y jugadas validas
Boolean limyP() {
  if (rand == "T") {
    if (tRotation == 0 && c > 0) {
      if (tablero[temph+1][c_c+1] == 0 && tablero[temph][c_c] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1) {
      if (tablero[temph+1][c_c+1] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 2 && c > 0) {
      if (tablero[temph+1][c_c] == 0 && tablero[temph][c_c] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 3) {
      if (tablero[temph][c_c] == 0 && tablero[temph+1][c_c+1] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "L") {
    if (tRotation == 0 && c > 0) {
      if (tablero[temph+1][c] == 0 && tablero[temph+2][c_c+1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1 && c > 0) {
      if (tablero[temph][c_c+1] == 0 && tablero[temph+1][c_c+1] == 0 && tablero[temph+2][c_c+1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 2 && c > 0) {
      if (tablero[temph+1][c_c+1] == 0 && tablero[temph+2][c_c+1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 3 && c > 0) {
      if (tablero[temph][c_c+1] == 0 && tablero[temph+1][c_c] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "J") {
    if (tRotation == 0 && c > 0) {
      if (tablero[temph+1][c_c+1] == 0 && tablero[temph+2][c_c+1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1) {
      if (tablero[temph][c_c+1] == 0 && tablero[temph+1][c_c+1] == 0 && tablero[temph+2][c_c+1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 2 && c > 0) {
      if (tablero[temph+1][c_c+1] == 0 && tablero[temph+2][c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if ((tRotation == 3) && c > 0) {
      if (tablero[temph+2][c_c+1] == 0 && tablero[temph+1][c_c] == 0 && tablero[temph][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "O" && c > 0) {
    if (tablero[temph][c_c] == 0 && tablero[temph+1][c_c] == 0) {
      return true;
    } else {
      return false;
    }
  } else if (rand == "Z") {
    if ((tRotation == 0 || tRotation == 2) && c > 0) {
      if (tablero[temph+1][c_c+1] == 0 && tablero[temph][c_c+1] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if ((tRotation == 1 || tRotation == 3) && c > 0) {
      if (tablero[temph][c_c] == 0 && tablero[temph+1][c_c+1] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "S") {
    if ((tRotation == 0 || tRotation == 2) && c > 0) {
      if (tablero[temph+1][c_c+1] == 0 && tablero[temph+2][c_c+1] == 0 && tablero[temph][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if ((tRotation == 1 || tRotation == 3) && c > 0) {
      if (tablero[temph][c_c+1] == 0 && tablero[temph+1][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "I") {
    if ((tRotation == 0 || tRotation == 2) && c >= 1 && temph >= 0) {
      if (tablero[temph+3][c_c+2] == 0) {
        return true;
      } else {
        return false;
      }
    } else if ((tRotation == 1 || tRotation == 3) && (c > 0 && temph+1 > 0)) {
      if (tablero[temph][c_c] == 0 && tablero[temph+1][c_c] == 0 && tablero[temph+2][c_c] == 0 && tablero[temph+3][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  }
  return true;
}

Boolean limxiP() {
  if (rand == "T") {
    if (tRotation == 0) {
      if (tablero[temph-1][c] == 0 && tablero[temph][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1 && c > 0) {
      if (tablero[temph][c-1] == 0 && tablero[temph][c] == 0 && tablero[temph][c_c] == 0) {
        return true;
      } else {
        //if (tablero[temph][c] != 0 && tablero[temph][c-1] != 0)
        return false;
      }
    } else if (tRotation == 2 && c > 0) {
      if (tablero[temph-1][c] == 0 && tablero[temph][c-1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 3 && c >= 1) {
      if (tablero[temph-1][c-1] == 0 && tablero[temph][c] == 0 && tablero[temph][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand =="L") {
    if (tRotation == 0 && c >= 1) {
      if (tablero[temph][c-1] == 0 && tablero[temph+1][c_c] == 0 && tablero[temph+1][c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1 && c >= 1) {
      if (tablero[temph-1][c_c] == 0 && tablero[temph+1][c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 2 && c > 0) {
      if (tablero[temph][c_c] == 0 && tablero[temph][c-1] == 0 && tablero[temph][c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 3 && c >= 1) {
      if (tablero[temph-1][c_c] == 0 && tablero[temph-1][c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand =="J") {
    if (tRotation == 0 && c > 0) {
      if (tablero[temph][c_c] == 0 && tablero[temph+1][c] == 0 && tablero[temph+1][c-1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1 && c > 0) {
      if (tablero[temph-1][c] == 0 && tablero[temph-1][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 2 && c > 0) {
      if (tablero[temph][c] == 0 && tablero[temph][c_c] == 0 && tablero[temph][c-1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 3 && c >=1) {
      if (tablero[temph-1][c] == 0 && tablero[temph+1][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "O" && c > 0) {
    if (tablero[temph-1][c] == 0 && tablero[temph-1][c-1] == 0) {
      return true;
    } else {
      return false;
    }
  } else if (rand == "Z") {
    if ((tRotation == 1 || tRotation == 3) && c > 0) {
      if (tablero[temph-1][c-1] == 0 && tablero[temph-1][c] == 0 && tablero[temph][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 0 || tRotation == 2) {
      if (tablero[temph-1][c_c] == 0 && tablero[temph][c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "S") {
    if ((tRotation == 1 || tRotation == 3) && c > 0) {
      if (tablero[temph][c-1] == 0 && tablero[temph-1][c] == 0 && tablero[temph-1][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 0 || tRotation == 2) {
      if (tablero[temph][c_c] == 0 && tablero[temph-1][c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "I") {
    if ((tRotation == 0 || tRotation == 2) && c > 0) {
      if (tablero[temph+2][c-1] == 0 && tablero[temph+2][c] == 0 && tablero[temph+2][c_c] == 0 && tablero[temph+2][c_c+1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1 || tRotation == 3) {
      if (tablero[temph-1][c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  }
  return false;
}

Boolean limxdP() {
  if (rand == "T") {
    if (tRotation == 0) {
      if (tablero[temph+3][c] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1 && c >=1) {
      if (tablero[temph+2][c-1] == 0 && tablero[temph+3][c] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 2 && c > 0) {
      if (tablero[temph+3][c] == 0 && tablero[temph+1][c-1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 3 && c >=1) {
      if (tablero[temph+2][c-1] == 0 && tablero[temph+2][c] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "L") {
    if (tRotation == 0) {
      if (tablero[temph+3][c] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1 && c >=1) {
      if (tablero[temph+2][c-1] == 0 && tablero[temph+3][c] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 2) {
      if (tablero[temph+2][c_c] == 0 && tablero[temph+2][c_c] == 0 && tablero[temph+3][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 3 && c >=1) {
      if (tablero[temph+3][c-1] == 0 && tablero[temph+3][c] == 0 && tablero[temph+3][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "J") {
    if (tRotation == 0 && c > 0) {
      if (tablero[temph+3][c] == 0 && tablero[temph+3][c_c] == 0 && tablero[temph+3][c-1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1 && c > 0) {
      if (tablero[temph+1][c] == 0 && tablero[temph+3][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 2 && c > 0) {
      if (tablero[temph+2][c_c] == 0 && tablero[temph+2][c] == 0 && tablero[temph+3][c-1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 3 && c >=1) {
      if (tablero[temph+3][c] == 0 && tablero[temph+3][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "O" && c > 0) {
    if (tablero[temph+2][c] == 0 && tablero[temph+2][c-1] == 0) {
      return true;
    } else {
      return false;
    }
  } else if (rand == "Z") {
    if ((tRotation == 1 || tRotation == 3) && c > 0) {
      if (tablero[temph+1][c-1] == 0 && tablero[temph+2][c] == 0 && tablero[temph+2][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 0 || tRotation == 2) {
      if (tablero[temph+2][c_c] == 0 && tablero[temph+3][c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "S") {
    if ((tRotation == 1 || tRotation == 3) && c > 0) {
      if (tablero[temph+2][c-1] == 0 && tablero[temph+2][c] == 0 && tablero[temph+1][c_c] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 0 || tRotation == 2) {
      if (tablero[temph+3][c_c] == 0 && tablero[temph+2][c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  } else if (rand == "I") {
    if ((tRotation == 0 || tRotation == 2) && c > 0) {
      if (tablero[temph+4][c-1] == 0 && tablero[temph+4][c] == 0 && tablero[temph+4][c_c] == 0 && tablero[temph+4][c_c+1] == 0) {
        return true;
      } else {
        return false;
      }
    } else if (tRotation == 1 || tRotation == 3) {
      if (tablero[temph+4][c] == 0) {
        return true;
      } else {
        return false;
      }
    }
  }
  return false;
}

Boolean RotV() {
  if (rand == "T") {
    if (limyP() == false && tRotation == 2 && tablero[temph+1][c_c] != 0) {
      return false;
    } else if (limxiP() == false && tRotation == 1 && tablero[temph][c] != 0) {
      return false;
    } else if (limxdP() == false && tRotation == 3 && tablero[temph+2][c] != 0) {
      return false;
    }
  } else if (rand == "L" && c > 0) {
    if (limyP() == false && tRotation == 3 && (tablero[temph+1][c_c] != 0 || tablero[temph+2][c_c] != 0)) {
      return false;
    } else if ((tablero[temph+1][c_c] != 0 || tablero[temph+1][c] != 0  || tablero[temph][c_c] != 0) && (tRotation == 0 || tRotation == 2)) {
      return false;
    } else if (tRotation == 2 && (tablero[temph+2][c] != 0 || tablero[temph+2][c-1] != 0)) {
      return false;
    }
  } else if (rand == "J" && c > 0) {
    if (limyP() == false && tRotation == 3 && (tablero[temph+1][c_c] != 0 || tablero[temph][c_c] != 0)) {
      return false;
    } else if ((tablero[temph][c_c] != 0 || tablero[temph][c] != 0) && (tRotation == 0 || tRotation == 2)) {
      return false;
    } else if ((tRotation == 2) && (tablero[temph+2][c] != 0 || tablero[temph+2][c_c] != 0)) {
      return false;
    }
  } else if (rand == "Z") {
    if (tRotation == 0 || tRotation == 2) {
      if (tablero[temph+2][c_c] != 0)
        return false;
    } else if (tRotation == 1 || tRotation == 3) {
      if (tablero[temph][c_c] != 0)
        return false;
    }
  } else if (rand == "S") {
    if (tRotation == 0 || tRotation == 2) {
      if (tablero[temph][c_c] != 0)
        return false;
    } else if (tRotation == 1 || tRotation == 3) {
      if (tablero[temph+1][c_c] != 0)
        return false;
    }
  } else if (rand == "I" && c > 0) {
    if (temph >= 0) {
      if ((tRotation == 0 || tRotation == 2) && (tablero[temph+2][c] != 0 || tablero[temph+1][c] != 0 || tablero[temph][c] != 0)) {
        return false;
      }
      if (((tRotation == 1 || tRotation == 3) && (tablero[temph+3][c-1] != 0 || tablero[temph+3][c] != 0 || tablero[temph+3][c_c] != 0)) || c >= 18) {
        return false;
      }
    }
  }
  return true;
}
