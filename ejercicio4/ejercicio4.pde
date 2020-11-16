float coX, coY; // Coordenadas del círculo
float posXTex, posYTex; // Coordenadas del numero
color colCuad; // Color del cuadrado
int cont; // Contador de "mousePressed"
float diam; // Diámetro del círculo;
int distancia; // distancia entre el cuadrado y el círculo.

void setup() {
  size(400, 400);
  coX=40;
  coY=60;
  posXTex= width/2;
  posYTex= 160;
  colCuad= color(0);
  PFont fuente;
  fuente = loadFont("SansSerif.plain-140.vlw");
  textFont(fuente);
  cont=0;
  diam= 40;
  distancia = 200;
}

void draw() {
  background(255);
  noStroke();
  fill(colCuad);
  rect(170, 280, 60, 60);
  fill(200, 0, 0);
  ellipse(coX, coY, diam, diam);
  fill(0);
  textSize(distancia / 3); //Aquí hay que poner el tamaño del texto
  text(cont, posXTex, posYTex);



  if (mouseX >170 && mouseX < 230 && mouseY > 280 && mouseY < 340 ) {

    colCuad = color (0, 255, 0);
  } else {

    colCuad = color (0, 0, 0);
  }


  if (mousePressed && mouseX >170 && mouseX < 230 && mouseY > 280 && mouseY < 340 ) {


    noStroke();
    colCuad = color (0, 0, 255);
    fill(255);
    ellipse(width/2, 310, 40, 40);
    stroke(255, 0, 0);
    line(coX, coY, width/2, 310);

    coX +=10;

    if (coX > 400) {
      coX = 0;
      coY += 40;
    } else if (coY > 400) {

      coY = 40;
    }
  }

  if (mouseX >170 && mouseX < 230 && mouseY > 280 && mouseY < 340 ) {

    diam = map(mouseX, 170, 230, 20, 80);
  }
}



void mousePressed() {
  if (mousePressed && mouseX >170 && mouseX < 230 && mouseY > 280 && mouseY < 340 ) {

    posXTex = random(80, 340);

    posYTex =random(80, 340) ;

    cont ++; 

    distancia = int(dist(coX, coY, width/2, 310));
  }
}
