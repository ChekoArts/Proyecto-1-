class pantalla {
  public int p;
  pantalla() {
    this.p=0;
  }
  void pan1() {
    background(230, 230, 255);
    fill(0);
    textSize(80);
    text("CHEKOARTS",200,300);
    fill(0);
    textSize(40);
    text("Minecraft box",330,340);
    textSize(20);
    text("PRESIONA ESPACIO PARA COMENZAR",240,400);
    beginShape();
    endShape();
}

  void pan2() {
    background(230, 230, 255);
    noStroke();
    rectMode(CENTER);
    
    pushMatrix();
    translate(0,10);
    PER1.cuadro1();
     popMatrix();
     pushMatrix();
    translate(0,180);
    PER2.cuadro2();
     popMatrix();
     pushMatrix();
    translate(90,10);
    PER3.cuadro3();
    popMatrix();
    pushMatrix();
    translate(100,180);
    PER4.cuadro4();
    popMatrix();
    pushMatrix();
    translate(150,10);
    PER5.cuadro5();
    popMatrix();
    
    
    fill(0);
    rect(450, 10, 900, 43);
    fill(255);
    textSize(30);
     text("ELIGE UN PEONAJE", 250, 28);
    textSize(15);
    fill(0);
    text("CUADRO 1\nJUGADOR (1) [q]\nJUGADOR (2) [a]", 40, 180);
    text("CUADRO 2\nJUGADOR (1) [w]\nJUGADOR (2) [s]", 180, 345);
    text("CUADRO 3\nJUGADOR (1) [e]\nJUGADOR (2) [d]", 360, 180);
    text("CUADRO 4\nJUGADOR (1) [r]\nJUGADOR (2) [f]", 539, 345);
    text("CUADRO 5\nJUGADOR (2) [t]\nJUGADOR (2) [g]", 670, 180);
    fill(0);
    textSize(20);
    text(jug, 350, 450);
    elec1();
    if (sig==1) {
      elec2();
    }
  }

  void pan3() {
    strokeWeight(3);
    noStroke();
    fill(189,236,182);
    rect(0,height,100000,height);
     //189,236,182
    fill(129,216,208);
    rect(0,0,100000,height);
      rectMode(CENTER);
      noStroke();

    //background(255);
    fill(255);
    textSize(30);
    
    
    fill(0,156,140);
      rect(770, 30, 150, 50);
    fill(0);
    text(vida2, 700, 40);
    fill(0,156,140);
      rect(120, 30, 150, 50);
    fill(0);
    text(vida1, 60, 40);
    
    
    textSize(20);
    fill(0);
    text("J1 ATACA CON (x)", 50, 460);
    text("J2 ATACA CON (m)",700,460);
    if (tur1==1) {
      pushMatrix();
      translate(30, 190);
      PER1.eleccion=1;
      PER1.eleccion1();
      PER1.vida=vida1;
      ataque1=PER1.ataque;
      popMatrix();
    }
    if (tur1==2) {
      pushMatrix();
      translate(-130, 190);
      PER2.eleccion=2;
      PER2.eleccion1();
      PER2.vida=vida1;
      ataque1=PER2.ataque;
      popMatrix();
    }
    if (tur1==3) {
      pushMatrix();
      translate(-250, 190);
      PER3.eleccion=3;
      PER3.eleccion1();
      PER3.vida=vida1;
      ataque1=PER3.ataque;
      popMatrix();
    }
    if (tur1==4) {
      pushMatrix();
      translate(-360, 190);
      PER4.eleccion=4;
      PER4.eleccion1();
      PER4.vida=vida1;
      ataque1=PER4.ataque;
      popMatrix();
    }
    if (tur1==5) {
      pushMatrix();
      translate(-530, 190);
      PER5.eleccion=5;
      PER5.eleccion1();
      PER5.vida=vida1;
      ataque1=PER5.ataque;
      popMatrix();
    }
    //ELECCION DE PERSONAJE 2
    if (tur2==1) {
      pushMatrix();
      translate(680, 190);
      PER1.eleccion=1;
      PER1.eleccion1();
    PER1.vida=vida2;
    ataque2=PER1.ataque;
      popMatrix();
    }
    if (tur2==2) {
      pushMatrix();
      translate(530, 190);
      PER2.eleccion=2;
      PER2.eleccion1();
     PER2.vida=vida2;
     ataque2=PER2.ataque;
      popMatrix();
    }
    if (tur2==3) {
      pushMatrix();
      translate(400, 190);
      PER3.eleccion=3;
      PER3.eleccion1();
    PER3.vida=vida2;
    ataque2=PER3.ataque;
      popMatrix();
    }
    if (tur2==4) {
      pushMatrix();
      translate(280, 190);
      PER4.eleccion=4;
      PER4.eleccion1();
     PER4.vida=vida2;
     ataque2=PER4.ataque;
      popMatrix();
    }
    if (tur2==5) {
      pushMatrix();
      translate(130, 190);
      PER5.eleccion=5;
      PER5.eleccion1();
      PER5.vida=vida2;
      ataque2=PER5.ataque;
      popMatrix();
    }
    pelea();
  }
  void pan4(){
textAlign(CENTER,CENTER);
  background(0);
fill(255);
  text(GANADOR+" GANÓ!",400,340);
  text ("precione i para reiniciar",430,360);
  reset();
  }
  
void el() {
    switch(p) {
      case 1:
      pan2();
      break;
      case 3:
      pan3();
      break;
      case 4:
      pan4();
      break;
    }
  }
}
