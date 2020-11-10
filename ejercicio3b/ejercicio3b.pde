float posX, posY, col1;
int c;



void setup() {
  size(400, 400);

}

void draw() {
  background(255);
  fill(255);
  stroke(1);
  rect(300, 320, 50, 50);

  if (mouseX >300 && mouseX < 350 && mouseY > 320 && mouseY < 370) {

    posX = map(mouseX, 300, 350, 0, 400);
    posY = map(mouseY, 320, 370, 0, 400);

    col1 = map(mouseY, 230, 370, 0, 255);

    noStroke();

    crearCirculos();

    fill(0, 0, col1);
    rect(posX, 200, 20, posY);
    rect(posX, 200, 20, posY*-1);
  } else {
  }
}
void crearCirculos() {
  
  c= color(255, 0, posX);

  for (int i =0; i < posX; i+=25) {
    
    fill(c);
    ellipse(i, 200, 20, 20);
  }
}
