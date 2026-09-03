class Animal{
  PImage image;
  float x;
  float y;
  public Animal(PImage image,float x, float y){
    this.image = image;
    this.x = x;
    this.y = y;
  }
  void show(){
    image(image,x,y,30,30);
  }
}
