import java.util.Arrays;

class Grid{
 ArrayList<Box> boxes;
 int cooldown = 0;
 public Grid(int level){
   boxes = new ArrayList<Box>();
   for(int x = 0; x < 5;x++){
     for (int y = 0; y < 5;y++){
       Box bottom = new Box(x*55+167.5,y*55+150);
       if (x >= 3 || y >= 3){
         bottom.unlocked = false;
       }
       boxes.add(bottom);
     }
   }
   
 }
 void show(){
   for(int i = 0;i < boxes.size();i++){
     boxes.get(i).show();
     boxes.get(i).grabAnimal();
     if(b.clicked()&&cooldown >= 100 && money >= 50){
       print("clicked on the button");
       fill(255,0,0);
       while(i < boxes.size() && boxes.get(i).a != null){
         i++;
         //if(i > boxes.size()){
         //  break;
         //}
       }
       if(i < boxes.size() && boxes.get(i).unlocked == true){
         boxes.get(i).setAnimal(new Animal(images[0],boxes.get(i).x,boxes.get(i).y,animalNames[0]));
         money -= 50;
         cooldown = 0;
       }
       
     }
     if(unlock.clicked() && money >= 4000 && boxes.get(i).a != null && boxes.get(i).a.name.equals("Clownfish")){
       for (int v = 3; v < 14; v+=5){
         boxes.get(v).unlocked = true;
       }
       for (int v = 15; v < 19; v++){
         boxes.get(v).unlocked = true;
       }
       money -= 4000;
     }
     if(unlock.clicked() && money >= 100000 && boxes.get(i).a != null && boxes.get(i).a.name.equals("DesertIguana")){
       for (int v = 0; v < 25; v++){
         boxes.get(v).unlocked = true;
       }
       money -= 100000;
     }
     fill(255);
     cooldown++;
   }
 }
}

class Box{
  float x,y;
  Animal a;
  Chain c;
  boolean unlocked = true;
  public Box(float x,float y){
    this.x = x;
    this.y = y;
    c = new Chain(x,y);
  }
  void show(){
    fill (255);
    rect(x,y,50,50);
    if(a != null){
      a.show();
    }
    if (unlocked == false){
      c.show();
    }
  }
  boolean hover(){
    if((mouseX <= this.x+50 && mouseX >= this.x)&&(mouseY <= this.y+50 && mouseY >= this.y)){
      return true;
    }
    return false;
  }
  void setAnimal(Animal A){
    this.a = A;
  }
  boolean clicked(){
    if(mouseX >= this.x &&mouseX <= this.x+50&& mouseY >= this.y&&mouseY <= this.y+50&&mouseDown){
      return true;
    }
    else{
      return false;
    }
  }
  void grabAnimal(){
    if (clicked() == true && this.a != null && grabbed == null){
      grabbed = this.a;
      lastbox = this;
      this.a = null;
    }
  }
  void merge(Animal b){
    if(this.a.name.equals(b.name)){
      int in = Arrays.asList(animalNames).indexOf(this.a.name);
      
      this.a = new Animal(images[in+1],this.a.x,this.a.y,animalNames[in+1]);
    }
  }
}
