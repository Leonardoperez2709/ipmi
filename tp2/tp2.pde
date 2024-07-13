//Trabajo Practico Numero 2 
//Leonardo Daniel Moncada Perez
//119092/4


//Declaracion de variables

int screen = 0;
PImage kafka1, kafka2, kafka3, kafkainicio, kafkafinal;
PFont font;
int lastTime = 0;
int intervalo = 5000;
boolean animacion = false;
float laika = 0;
float opacidad = 5;
boolean inicio = false;


// Void setup

void setup() {
  
  size(640, 480);
  
  try {
    kafka1 = loadImage("kafka1.jpg");
    kafka2 = loadImage("kafka2.jpg");
    kafka3 = loadImage("kafka3.jpg");
    kafkainicio = loadImage("kafkainicio.png");
    kafkafinal = loadImage("kafkafinal.png");
    
  } catch (Exception e) {
    println(e.getMessage());
    exit();
    
  }
  font = createFont("Arial", 32);
  textFont(font);
}


//Void draw

void draw() {
  
  background(255);
  
  if (!inicio) {
    drawStartScreen();
  } else {
    switch(screen) {
      case 0:
        drawScreen1();
        break;
      case 1:
        drawScreen2();
        break;
      case 2:
        drawScreen3();
        break;
      case 3:
        drawEndScreen();
        break;
    }
    
    if (millis() - lastTime > intervalo && screen < 3) {
      screen++;
      lastTime = millis();
      laika = 0;
      animacion = true;
    }
    
    if (animacion) {
      laika += opacidad;
      if (laika >= 255) {
        laika = 255;
        animacion = false;
      }
    }
  }
}


//Diapositiva Inicio

void drawStartScreen() {
  
  image(kafkainicio, 0, 0, width, height);
  fill(0);
  textAlign(CENTER, BASELINE);
  text("La metamorfosis", width / 2, height / 2 - 40);
  text("Click        para        iniciar", width / 2, height / 2 + 20);
}


//Diapositiva 1

void drawScreen1() {
  
  image(kafka1, 0, 0, width, height);
  
  fill(255, laika);
  
  textAlign(CENTER, BASELINE);
  text("Un día Gregor Samsa despertó convertido", width / 2, height / 2 - 40);
  text("en un insecto gigante y, vaya sorpresa,", width / 2, height / 2 - 10);
  text("su mayor preocupación fue llegar", width / 2, height / 2 + 20);
  text("tarde al trabajo.", width / 2, height / 2 + 50);

}


//Diapositiva 2

void drawScreen2() {
  
  image(kafka2, 0, 0, width, height);
  
  fill(0, laika);
  
  textAlign(CENTER, BASELINE);
  text("A medida que Gregor se acostumbraba a su", width / 2, height / 2 - 40);
  text("nueva vida como escarabajo, su familia se", width / 2, height / 2 - 10);
  text("daba cuenta de que tener un bicho de", width / 2, height / 2 + 20);
  text("mascota no era tan divertido como parecía.", width / 2, height / 2 + 50);


}


//Diapositiva 3

void drawScreen3() {
  
  image(kafka3, 0, 0, width, height);
  
  fill(255, laika);
  
  textAlign(CENTER, BASELINE);
  text("Al final, Gregor descubrió que la verdadera", width / 2, height / 2 - 40);
  text("metamorfosis no era convertirse en insecto,", width / 2, height / 2 - 10);
  text("sino en la indiferencia", width / 2, height / 2 + 20);
  text("y desamor de su familia.", width / 2, height / 2 + 50);
}



//Diapositiva Final

void drawEndScreen() {
  
  image(kafkafinal, 0, 0, width, height);
  
  fill(0);
  
  textAlign(CENTER, CENTER);
  text("De                 Kafka", width / 2, height / 2);
  fill(0);
  rectMode(CENTER);
  rect(width / 2, height / 2 + 50, 150, 50);
  fill(255);
  text("Reiniciar", width / 2, height / 2 + 50);
}


//Void mousePressed

void mousePressed() {
  
  if (!inicio) {
    inicio = true;
    lastTime = millis();
  } else if (screen == 3) {
    if (mouseX > width / 2 - 75 && mouseX < width / 2 + 75 &&
        mouseY > height / 2 + 25 && mouseY < height / 2 + 75) {
      screen = 0;
      lastTime = millis();
      laika = 0;
      animacion = true;
    }
  }
}
