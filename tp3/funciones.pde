// FUNCION 1
void circulosUno(float posXInicial, float posYInicial){
  float aux= 2.5;
  float tamañoUno= 190,tamañoNuevo = 0, tamañoAux = 0;
  int nuevoColor;
  float centroXSegundaParte = 0,centroYSegundaParte = 0;


  for( int i= 0; i<22; i++){
    if( i%2 == 0){
      fill(0);
    }
    else{
      fill(255);
    }
    tamañoNuevo = tamañoUno - aux*3*i;
    
    if(i == 9){
      tamañoAux = tamañoNuevo;
      centroXSegundaParte = posXInicial+aux*i;
      centroYSegundaParte = posYInicial-aux*i;
    }
    if(i<10){
      ellipse(posXInicial+aux*i, posYInicial-aux*i, tamañoNuevo,tamañoNuevo);
    }
    else{
      int posX = round(map(mouseX, centroXSegundaParte - tamañoNuevo*8, centroXSegundaParte + tamañoNuevo*8, -10, 10));
      int posY = round(map(mouseY, centroYSegundaParte + tamañoNuevo*8, centroYSegundaParte - tamañoNuevo*8, -10, 10));

      ellipse(centroXSegundaParte +posX, centroYSegundaParte - posY, tamañoNuevo, tamañoNuevo);
    }  
  }  
}
//FUNCION 2
void dibujarCirculos(){
  stroke(0);
  circulosUno(500,100);
  circulosUno(500,300);
  circulosUno(700,100);
  circulosUno(700,300);
}
//FUNCION 3
int obtenerColorRandomEntreDosValores(int valor1, int valor2){
  int nuevoColor;
  nuevoColor = round(random(valor1, valor2)); //random me da un float y con round lo hago int
  return nuevoColor;
}
//FUNCION 4
void crearCuadrados(){
    int r,g,b;
    for(int i=0; i<=1; i++){
      for(int j=0; j<=1; j++){
        if(round(random(1)) == 0){
          noStroke();
          r=obtenerColorRandomEntreDosValores(0,255);
          g=obtenerColorRandomEntreDosValores(0,255);
          b=obtenerColorRandomEntreDosValores(0,255);
          fill(r,g,b);
          rect(400+200*i,0+200*j,200,200);
          cuadradosCreados++;
      }
    }
  }
}
// FUNCION 5
void reiniciarFondos(){
  for(int i=0; i<=1; i++){
    for(int j=0; j<=1; j++){
        noStroke();
        fill(255);
        rect(400+200*i,0+200*j,200,200);
    }
  }
} 
