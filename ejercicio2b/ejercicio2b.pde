int fondo; // Variable del color del fondo
PFont font; 
String a;
int diametro;
float alpha;
int textX;
float rad;

void setup() {
  size(400, 400);
  font = loadFont("Monospaced.bold-48.vlw");
  a= "Hola";
  textFont(font, 55);
  noStroke();
  fondo=255;
  diametro = 250;
  alpha = 255;
  rad = 0;
}

void draw() {

  background(fondo);
  fill(255, 255, 0);
  noStroke();
  rect(20, 20, 80, 80);
  rect(300, 20, 80, 80);
  rect(20, 300, 80, 80);
  rect(300, 300, 80, 80);

  if (mouseX >20 && mouseX < 100 && mouseY > 20 && mouseY < 100) {

    fondo = 0;
  } else if (mouseX >300 && mouseX < 380 && mouseY > 20 && mouseY < 100) {

    fill(255, 0, 0, alpha);
    ellipse(200, 200, diametro, diametro);

    diametro -= 5;
    alpha -=5;

    if (diametro < 10 && alpha < 100) {
      diametro = 250;
      alpha = 255;
    }
  } else if (mouseX >20 && mouseX < 100 && mouseY > 300 && mouseY < 380) {
    fill(0);
    text(a, textX, 200);

    textX += 4;

    if (textX > 270) {

      textX = 0;
    }
  } else if (mouseX >300 && mouseX < 380 && mouseY > 300 && mouseY < 380) {


    pushMatrix();

    translate(200, 200);
    rotate(radians(rad));
    fill(0, 255, 0);
    rect(-100, -100, 200, 200);

    popMatrix();

    rad +=1;
  } else {

    fondo = 255;
    rad = 0;
  }
}
