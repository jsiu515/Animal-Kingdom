PImage[] images; 
String[] animalNames = {"Amoeba", "Zooplankton","SeaJelly","Starfish","Nautilus","Clownfish","ElectricEel","Tadpole", "TreeFrog","Chameleon","DesertIguana","BoxTurtle","Alligator","Pterodactyl","Triceratops","Wolf","Gorilla","Tiger","Elephant","Dragon"};
HashMap<String,Integer> bank;
HashMap<String,Integer> cost;

Grid g = new Grid(1);
boolean mouseDown;
int money = 250;
void setup(){
  size(600,600);
  String path = sketchPath("Animals"); 
  java.io.File folder = new java.io.File(path);
  if (folder.isDirectory()) {
    int fileCount = folder.list().length;
    images = new PImage[fileCount];
    for (int i = 0; i < animalNames.length; i++) {
      println(animalNames[i]+".png");
      images[i] = loadImage(path+"/"+animalNames[i]+".png");
    }
  }
  bank = new HashMap<String,Integer>();
  cost = new HashMap<String,Integer>();
  int wage = 5;
  for (int i = 0; i < animalNames.length; i++){
    bank.put(animalNames[i],wage);
    wage*=2;
  }
  int price = 50;
  int change = 10;
  for (int i = 0; i < animalNames.length;i++){
    cost.put(animalNames[i],price);
    price += change;
    change *=2;
  }
  
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
