PImage foto;

void setup() {
  size (400, 400);

  foto = loadImage("canales.jpg");
}

void draw() {
  background(255);

  image(foto, 50, 50);
  //Circulos rojos
  stroke(255, 0, 0);
  strokeWeight(2);
  noFill();
  ellipse(50, 200, 100, 100);

  stroke(255, 0, 0);
  strokeWeight(2);
  noFill();
  ellipse(350, 200, 100, 100);
  //Circulos rojos
  //Triangulos rojos
  beginShape();
  vertex(100, 398);
  vertex(300, 398);
  vertex(200, 250);
  endShape(CLOSE);

  beginShape();
  vertex(100, 2);
  vertex(300, 2);
  vertex(200, 150);
  endShape(CLOSE);
  //Triangulos rojos
  //Circulo amarillo transparente
  noStroke();
  fill(255, 255, 0, 150);
  ellipse(200, 200, 100, 100);
  //Circulo amarillo transparente
  //Cuadrados esquinados grises
  noStroke();
  fill(200);
  rect(0, 0, 50, 50);
  rect(350, 0, 50, 50);
  rect(0, 350, 50, 50);
  rect(350, 350, 50, 50);
  //Cuadrados esquinados grises
  //Elpises ovaladas
  fill(255);
  stroke(0);
  strokeWeight(1);
  ellipse(100, 200, 100, 50);
  ellipse(300, 200, 100, 50);
  //Elpises ovaladas
  //Circulos negros
  noFill();
  stroke(0);
  strokeWeight(1);
  ellipse(50, 200, 50, 50);
  ellipse(350, 200, 50, 50);
  //Circulos negros
  
  stroke(255);
  strokeWeight(7);
   beginShape();
  vertex(199, 160);
  vertex(175, 196);
  vertex(220, 196);
   vertex(199, 240);
  endShape();
  
}

void mousePressed(){
  println(mouseX + ", " + mouseY);
}
