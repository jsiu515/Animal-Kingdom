Animal a = new Animal();
Grid g = new Grid(1);
boolean mouseDown;
void setup(){
  size(600,600);
  
}


void draw(){
  g.show();
}
void mousePressed(){
  mouseDown = true;
}
void mouseReleased(){
  mouseDown = false;
}
