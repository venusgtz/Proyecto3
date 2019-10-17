particula foo;
particula2 fo;
particula3 f;
particula4 o;
int p = 0;
PImage triangulo;
PImage linea;
PImage circulo;
PImage cuadro;
float s;
float m;

void setup(){
  size(400,400);
  foo = new particula();
  fo = new particula2();
  f = new particula3();
  o = new particula4();
  background(255);
  triangulo = loadImage("Triangulo.png");
  linea = loadImage("Linea.png");
  circulo = loadImage("Circulo.png");
  cuadro = loadImage("Cuadro.png");
}

void draw(){
  switch(p){
  case 0:
  noStroke();
  fill(0);
  rect(0,0,width,height);
  fill(255);
  textSize(30);
  text("Tercer Parcial",50,250);
  textSize(15);
  text("Presiona ENTER",50,275);
  if(key == ENTER){
    p = 1;
  }
  break;
  
  case 1:
  noStroke();
  fill(0);
  rect(0,0,width,height);
  fill(255);
  textSize(15);
  text("Utiliza los comandos de teclas\npara revelar las diferentes figuras\n1: Circulo\n2: Linea\n3: Cuadro\n4: Triangulo\nENTER: Captura de imagen\nRecuerda que cada figura\ntiene un movimiento unico\ny que la captura se almacenara\nen la carpeta del programa.\n\n\nPresiona ESPACIO",50,50);
  if(key == ' '){
    p = 2;
  }
  break;
  
  case 2:
  fill(0);
  rect(0,0,width,height);
  tiempo();
  if(s>5){
    p = 3;
  }
  break;
  
  case 3:
  fill(0,5);
  rect(0,0,width,height);
  
  switch(key){
    case '1':
      foo.display();
      foo.movimiento();
    break;
    case '2':
      fo.display();
      fo.movimiento();
    break;
    case '3':
      f.display();
      f.movimiento();
    break;
    case '4':
      o.display();
      o.movimiento();
    break;
  }
  
  if(key == ENTER){
    save("Tercer Parcial.jpg");
    exit();
  }
  break;
  }
  
}

void tiempo(){
  if(s <= 59){
    s += 1;
  }
  else{
    m = m+1;
    s = 0;
  }  
}
