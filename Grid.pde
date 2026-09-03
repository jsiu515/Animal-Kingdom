class Grid{
 ArrayList<Box> boxes; 
 public Grid(int level){
   boxes = new ArrayList<Box>();
   for(int x = 0; x < 3;x++){
     for (int y = 0; y < 3;y++){
       boxes.add(new Box(x*35,y*35));
     }
   }
 }
 void show(){
   for(int i = 0;i < boxes.size();i++){
     
     if(boxes.get(i).hover()){
       fill(255,0,0);
       boxes.get(i).setAnimal(new Animal(images[0],boxes.get(i).x,boxes.get(i).y));
     }
     if(mouseDown){
       fill(0,0,255);
     }
     boxes.get(i).show();
     fill(255);
   }
 }
}

class Box{
  float x,y;
  Animal a;
  public Box(float x,float y){
    this.x = x;
    this.y = y;
    
  }
  void show(){
    rect(x,y,30,30);
    if(a != null){
      a.show();
    }
  }
  boolean hover(){
    if((mouseX <= this.x+20 && mouseX >= this.x)&&(mouseY <= this.y+20 && mouseY >= this.y)){
      return true;
    }
    return false;
  }
  void setAnimal(Animal A){
    this.a = A;
  }
}
