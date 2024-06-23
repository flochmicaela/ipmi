// Floch Micaela, comision 1, tp3
// https://youtu.be/aJsduNJWSPQ
PImage obra;
int cuadradosCreados;

void setup(){
  cuadradosCreados = 0;
  size(800,400);
  background(255);
  obra= loadImage("OpArt.jpg");
  dibujarCirculos();
}
void draw(){
  dibujarCirculos();
  image(obra,0,0,400,400);  
}
void keyPressed(){ //reinicio al apretar una tecla
  if(cuadradosCreados >= 4){
    reiniciarFondos();
    println("Reiniciado");
    cuadradosCreados = 0;
  }
}
void mousePressed(){
  crearCuadrados();
}

  
  
