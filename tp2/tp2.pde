// Floch Micaela, tp2 comision 1
// general
PFont  fuente;
PFont  fuenteDos;
int frame;
int frameReset;
// pantalla 1
PImage fondo; 
String titulo1, titulo2, titulo3, titulo4, titulo5, titulo6, titulo7, titulo8,titulo9,titulo10,segundaPalabra;
// pantalla 2
PImage fondo2;
String titulo11,titulo12, titulo13;
int posYFondo2;
int temp1VEL;
// pantalla 3;
PImage fondo3;
String titulo16, titulo17;
int posXFondo3; 
int posXFondo4;
//pantalla 4
PImage fondo4;
String titulo14, titulo15, reinicio;
int tamFuenteCuatro;
int tamFuenteCuatroDos;



void setup(){
  frameRate(60);
  size(640,480);
  fondo = loadImage("b1.jpg"); 
  fondo2= loadImage("b2.jpg");
  fondo3= loadImage("b3.jpg");
  fondo4= loadImage("b4.jpg");
  fuente = loadFont("constantia.vlw"); 
  fuenteDos= loadFont("Gadugi.vlw");
  titulo1 = "B"; titulo2 = "r";  titulo3 = "i";  titulo4 = "d";  titulo5 = "g";  titulo6 = "e";  titulo7 = "r";  titulo8 = "t";  titulo9 = "o";  titulo10 = "n";
  segundaPalabra = "Written by Julia Quinn"; titulo11= "Temporada 1"; titulo12= "8 capítulos"; titulo13= "YA DISPONIBLE"; titulo14= "Temporada 3"; titulo15= "Estreno 13 de Junio 2024"; reinicio= "Reiniciar"; titulo16= "Temporada 2"; titulo17= " Kate Sharma y\n Lord Anthony Bridgerton"; 
  frameReset= 0;
}
void draw(){
  println(mouseX, mouseY);
  println (frameCount);
  frame= frameCount-frameReset;
  if(frame<30){
    posYFondo2= 0;
    temp1VEL=5;
    tamFuenteCuatro = 1;
    tamFuenteCuatroDos = 1;
    posXFondo3= -300;
    posXFondo4= -300;
  }
  
  // pantalla 1
  image(fondo,0,0,640,480);
  textFont( fuente, 130);
  textAlign(CENTER, CENTER);
  fill(219,144,224);
  if (frame>30){
    text(titulo1,70,380);
  }
  if(frame>60){
    text(titulo2,130,380);
  }
   if(frame>90){
    text(titulo3,180,380);
  }
  if(frame>120){
    text(titulo4,230,380);
  }
  if(frame>150){
    text(titulo5,290,380);
  }
  if(frame>180){
    text(titulo6,350,380);
  }
  if(frame>180){
    text(titulo6,350,380);
  }
  if(frame>210){
    text(titulo7,400,380);
  }
  if(frame>240){
    text(titulo8,450,380);
  }
  if(frame>270){
    text(titulo9,500,380);
  }
  if(frame>300){
    text(titulo10,565,380);
  }
  textFont(fuente, 30);
  textAlign(LEFT);
  fill(255,0,102);
  if(frame>330){
    text(segundaPalabra,45,300);
  }
  //pantalla 2

  if(frame>390){
    image(fondo2,0,0,640,480);
    textFont (fuente,70);
    fill(255);
    textAlign(LEFT);
    text(titulo11,30,posYFondo2);
    if(posYFondo2<380){
      posYFondo2= posYFondo2+temp1VEL;
    }
  }
    textFont(fuenteDos, 30);
    textAlign(LEFT);
    fill(255,0,102);
    if(frame>470){
      text(titulo12,45,300);
    }
    textFont(fuenteDos, 15);
    textAlign(LEFT);
    fill(59,184,89);
    if(frame>510){  
      text(titulo13,214,300);
      if(posYFondo2<380){
        posYFondo2= posYFondo2+ temp1VEL;
      }
    }  

   //pantalla 3
    if(frame>540){
      image(fondo3,0,0,640,480); 
      textFont (fuente,70);
      fill(255);
      textAlign(LEFT);
      text(titulo16,posXFondo3,380);
      textFont (fuenteDos, 30);
      textAlign(RIGHT);
      fill (255,150,0);
      text( titulo17, posXFondo4, 420);
      if(posXFondo3<190){
        posXFondo3= posXFondo3+ temp1VEL;
      }
      if(posXFondo4<620){
        posXFondo4= posXFondo4+ temp1VEL;
      }
    }
  
   //pantalla 4
   if(frame>740){
     image(fondo4,0,0,640,480); 
     textFont(fuente, tamFuenteCuatro);
     fill(255);
     textAlign(LEFT);
     text (titulo14, 30,380);
     if (tamFuenteCuatro<70){
       tamFuenteCuatro= tamFuenteCuatro+5;
     }
     else{
       textFont(fuenteDos, tamFuenteCuatroDos);
       textAlign(LEFT);
       fill(255);
       text(titulo15,45,430); 
       if (tamFuenteCuatroDos<20){
         tamFuenteCuatroDos= tamFuenteCuatroDos+5;
       }
     }   
   }
   
   if(frame>780){
     stroke(0);
     fill(106,80,155);
     quad(270,190,270,290,370,290,370,190);
     textFont(fuente, 20);
     fill(255);
     text(reinicio, 277,246);
     if(mouseX>270 && mouseX<370 && mouseY>190 && mouseY<290 && mousePressed){
       frameReset=frameCount;
     }
   }
     


}
 
