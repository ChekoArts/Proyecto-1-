public class personaje{
public int xp,yp;
public int eleccion;
public float vida;
public float ataque;

public personaje(int xp1,int yp1,float ataque_){
  this.xp=xp1;
  this.yp=yp1;
  this.ataque =ataque_;
}

public void cuadro1(){//PINTA CUADRO GRIS
  fill(119,221,119);
  rect(100,100,100,100);
}

public void cuadro2(){//PINTA CUADRO VERDE
  fill(243,221,231);
  rect(250,100,100,100);
}

public void cuadro3(){//PINTA CUADRO MORADO
  fill(108,70,117);
  rect(400,100,100,100);
}

public void cuadro4(){//PINTA CUADRO ROSA
  fill(253,253,150);
  rect(500,100,100,100);
}

public void cuadro5(){//PINTA CUADRO AZUL
  fill(255,105,97);
  rect(600,100,100,100);
}

public void eleccion1(){
    switch(eleccion){
      case 1:
      cuadro1();
      break;
      case 2:
      cuadro2();
      break;
      case 3:
      cuadro3();
      break;
      case 4:
      cuadro4();
      break;
      case 5:
      cuadro5();
      break;
    }
  }
}
