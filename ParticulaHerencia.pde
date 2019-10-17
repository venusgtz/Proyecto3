class particula2 extends particula{
  particula2(float x_, float y_, float v_, float a_, int t_, color c_){
    super(x_,y_,v_,a_,t_,c_);
  }
  
  particula2(){
    this.x = 200;
    this.y = 200;
    this.v= 2;
    this.a= 0;
    this.t = 15;
    this.c = color(255,0,0);
    this.da = 0.1;
  }
  
  void movimiento(){
    this.movimientoEnEspiral();
    this.x = constrain(this.x,0,400);
    this.y = constrain(this.y,0,400);
  }
  
  void display(){
    noStroke();
    image(linea,this.x,this.y,this.t,this.t);
  }
}

class particula3 extends particula{
  particula3(float x_, float y_, float v_, float a_, int t_, color c_){
    super(x_,y_,v_,a_,t_,c_);
  }
  
  particula3(){
    this.x = 200;
    this.y = 200;
    this.v= 2;
    this.a= 0;
    this.t = 15;
    this.c = color(0,255,0);
    this.da = 0.1;
  }
  
  void movimiento(){
    this.movimientoAleatorio();
    this.x = constrain(this.x,0,400);
    this.y = constrain(this.y,0,400);
  }
  
  void display(){
    noStroke();
    image(cuadro,this.x,this.y,this.t,this.t);
  }
}

class particula4 extends particula{
  particula4(float x_, float y_, float v_, float a_, int t_, color c_){
    super(x_,y_,v_,a_,t_,c_);
  }
  
  particula4(){
    this.x = 200;
    this.y = 200;
    this.v= 2;
    this.a= 0;
    this.t = 15;
    this.c = color(0,255,0);
    this.da = 0.1;
  }
  
  void movimiento(){
    this.movimientoCaotico();
    this.x = constrain(this.x,0,400);
    this.y = constrain(this.y,0,400);
  }
  
  void display(){
    noStroke();
    image(triangulo,this.x,this.y,this.t,this.t);
  }
}
