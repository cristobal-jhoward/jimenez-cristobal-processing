float posX, posY;

void setup(){
size(400,400);
}

void draw(){
background(255);
fill(255);
stroke(1);
rect(20,330,50,50);

if(mouseX >20 && mouseX < 70 && mouseY > 330 && mouseY < 380){
  
  posX = map(mouseX, 20, 70, 0, 400);
  posY = map(mouseY, 330, 380, 0, 400);
  
  fill(0);
rect(0, 200, posX, 10);

rect(posX, 205, 10, posY);
rect(posX, 205, 10, posY*-1);


}else{

}






}
