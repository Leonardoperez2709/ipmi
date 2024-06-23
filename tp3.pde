//Trabajo Practico Numero 3
//https://youtu.be/E0-X-n6nJno
//Leonardo Daniel Moncada Perez
//119092/4


//Declaracion de variables

PImage optical;
int laik = 3;
int shir = 3;
float apol, bor;
boolean alternar = true;
int intervalo = 1000;
int ultimo = 0;
 
 
// Void setup
 
void setup () {
  
  size(800, 400);
  
  optical=loadImage("optical.jpg");
  image(optical,0,0,400,400);
  
  apol = 400 / laik;
  bor = 400 / shir;
  
  frameRate(60);
  
}


//Void draw

void draw () {
  
  background(255);
  
  image(optical,0,0,400,400);
  
  if (millis() - ultimo > intervalo) {
    alternar = !alternar;
    ultimo = millis();
  }
  
  for (int i = 0; i < laik; i++) {
  for (int j = 0; j < shir; j++) {
      float x = 400 + i * apol;
      float y = j * bor;
      
  if ((i + j) % 2 == 0) {
     fill(alternar ? color(33, 70, 151) : color(0));
     } else {
     fill(alternar ? color(0) : color(33, 70, 151));
     }
  rect(x, y, apol, bor);
      
  fill(color(random(255), random(255), random(255)));
  ellipse(x + apol / 2, y + bor / 2, apol, bor);
  }
  }
  
}

//Void mousePressed

void mousePressed () {
  
  if (mouseX > 400) {
     laik *= 3;
     shir *= 3;
     apol = 400 / laik;
     bor = 400 / shir;
     }
     
}


//Void keyPressed

void keyPressed () {
  
    laik = 3;
    shir = 3;
    apol = 400 / laik;
    bor = 400 / shir;
    
}
