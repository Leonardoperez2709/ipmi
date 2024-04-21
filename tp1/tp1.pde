PImage orange;

void setup(){
  size (800,400); 
  background (130,150,0);
  orange=loadImage("orange.jpg");
}

void draw(){
  image(orange,67,10,265,380);
  
  println("x:");
  println(mouseX);
  println("y:");
  println(mouseY);
  
  rect(467,10,275,380);
  
  fill(255,255,0);
  stroke(255,255,0);
  circle(580,140,200);
  fill(255);
  circle(580,140,193);
  fill(255,172,63);
  circle(580,140,172);
  fill(255);
  circle(580,140,30);
  stroke(255);
  line(585,55,580,140);
  line(645,75,580,140);
  line(670,127,580,140);
  line(520,72,580,140);
  line(490,130,580,140);
  line(500,185,580,140);
  line(610,165,580,140);
  line(570,185,580,140);
  line(550,185,580,140);
  line(625,155,580,140);
  
  fill(255,255,0);
  circle(630,260,220);
  stroke(255,255,0);
  fill(255);
  circle(630,260,210);
  fill(255,172,63);
  circle(630,260,187);
  fill(255);
  circle(630,260,30);
  stroke(255);
  line(600,170,630,260);
  line(550,210,630,260);
  line(660,170,630,260);
  line(530,260,630,260);
  line(715,215,630,260);
  line(730,270,630,260);
  line(550,320,630,260);
  line(615,350,630,260);
  line(690,333,630,260);
}
