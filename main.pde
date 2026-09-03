PImage[] images; 
String[] animalNames = {"Amoeba", "Zooplankton","SeaJelly","Starfish","Nautilus","Clownfish","ElectricEel","Tadpole", "TreeFrog","Chameleon","DesertIguana","BoxTurtle","Alligator","Pterodactyl","Triceratops","Wolf","Gorilla","Tiger","Elephant","Dragon"};


Animal a = new Animal();
Grid g = new Grid(1);
boolean mouseDown;
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
