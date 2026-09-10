class Animal{
  PImage image;
  float x;
  float y;
  String name;
  public Animal(PImage image,float x, float y, String name){
    this.image = image;
    this.x = x;
    this.y = y;
    this.name = name;
  }
  void show(){
    image(image,x,y,30,30);
  }
}
