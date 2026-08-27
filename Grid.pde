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
     boxes.get(i).show();
   }
 }
}

class Box{
  float x,y;
  public Box(float x,float y){
    this.x = x;
    this.y = y;
    
  }
  void show(){
    rect(x,y,30,30);
  }
}
