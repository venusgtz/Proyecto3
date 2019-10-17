class particula{
  float x,y,v,a;
  int t;
  color c;
  int comportamiento =0;
  float da;
  int contador;
  particula(float x_, float y_, float v_, float a_, int t_, color c_){
    this.x = x_;
    this.y = y_;
    this.v = v_;
    this.a = a_;
    this.t = t_;
    this.c = c_;
  }
  
  particula(){
    this.x = 200;
    this.y = 200;
    this.v= 2;
    this.a= 0;
    this.t = 15;
    this.c = color(255,0,0);
    this.da = 0.1;
  }
  
  void setComportamiento( int c_){
    this.comportamiento = c_;
  }
  
  void movimiento(){
    this.movimientoLineal();
    this.x = constrain(this.x,0,400);
    this.y = constrain(this.y,0,400);
  }
  
  void movimientoLineal(){
    this.x+= cos(a)*v;
    if(this.x > width-7){
      this.x = x*-1;
    }
    
  }
  
  void movimientoEnEspiral(){
    //especificar 
    this.x+= cos(this.a)*this.v;
    this.y+= sin(this.a)*this.v;
    this.a+=this.da;
    this.da-=0.0001;
  }
  
  void movimientoAleatorio(){
    //especificar
    this.x+= cos(this.a)*this.v;
    this.y+= sin(this.a)*this.v;
    this.a = random(TWO_PI);
  }
  
  void movimientoCaotico(){
    //especificar
    this.x+= cos(this.a)*this.v;
    this.y+= sin(this.a)*this.v;
    this.a+= this.da;
    this.contador++;
    if (this.contador % 20 == 0){
      this.da =random(-0.1,0.1);
    }
  }
  
  void display(){
    noStroke();
    image(circulo,this.x,this.y,this.t,this.t);
  }
}
