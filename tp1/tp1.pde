PImage fondo;

int centroX = 600;
int centroY = 220;
int aux;


void setup (){
  size (800,400);
  background(255);
  fondo = loadImage("mariposa.jpg");
}
void draw (){
  image(fondo,0,0,400,400);
  println(centroX-mouseX,centroY-mouseY);
  
  
  // cuerpo
  fill(50,25,0);
  noStroke();
  ellipse(600,220,25,150);
  
  //repeticion
  for(int i = 0; i<2; i++){ //dos vueltas
    if(i == 0){ //si esta en la primera vuelta
      aux = -1; //negativo (lado izquierdo)
    }
    else{ //sino
      aux = 1; //positivo (lado derecho)
    }
    stroke(1);
    strokeWeight(3.5);
    fill(95,143,214);
    quad(centroX+12*aux,centroY-25, centroX+140*aux, centroY-25, centroX+150*aux, centroY-150, centroX+7*aux, centroY-67); 
    quad(centroX+12*aux,centroY-25,centroX+92*aux,centroY-25,centroX+121*aux,centroY+36,centroX+28*aux,centroY+100);
    noStroke();
    fill(198,101,185);
    quad(centroX+123*aux,centroY-84,centroX+118*aux,centroY-32,centroX+16*aux,centroY-32,centroX+12*aux,centroY-62);
    quad(centroX+61*aux,centroY+25,centroX+71*aux,centroY+46,centroX+41*aux,centroY+72,centroX+31*aux,centroY+20);
    fill(0,0,0);
    quad(centroX+100*aux,centroY-119,centroX+113*aux,centroY-82,centroX+77*aux,centroY-74,centroX+57*aux,centroY-94);
    stroke(0);
    strokeWeight(1);
    line(centroX+5*aux, centroY-70, centroX+40*aux, centroY-150); //negro antenas
    strokeWeight(10);
    line(centroX+59*aux,centroY-22,centroX+59*aux,centroY+22);
   
    fill(156,234,354);
    stroke(0);
    strokeWeight(5);
    ellipse(centroX+87*aux,centroY+16,25,25);
    ellipse(centroX+115*aux,centroY-105,42,42);
    
    fill(0);
    ellipse(centroX+40*aux,centroY-150,5,5);
    ellipse(centroX+84*aux,centroY+21,7,7);
    ellipse(centroX+113*aux,centroY-106,12,12);
    triangle(centroX+46*aux,centroY-89,centroX+32*aux,centroY-81,centroX+48*aux,centroY-66);
    
    stroke(50,25,0);
    strokeWeight(3);
    line(centroX+4*aux,centroY-71,centroX+4*aux,centroY-85);
    }
 }
    

    

    
    
   

  
  
 
  
  
