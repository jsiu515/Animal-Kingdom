PImage[] images; 
PImage chain;
String[] animalNames = {"Amoeba", "Zooplankton","SeaJelly","Starfish","Nautilus","Clownfish","ElectricEel","Tadpole", "TreeFrog","Chameleon","DesertIguana","BoxTurtle","Alligator","Pterodactyl","Triceratops","Wolf","Gorilla","Tiger","Elephant","Dragon"};
HashMap<String,Integer> bank;
HashMap<String,Integer> cost;
Button b = new Button(200,200);
Grid g = new Grid(1);
MoneyMaker m = new MoneyMaker();
Animal grabbed;
Box lastbox;
Box hoverbox;
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
  chain = loadImage("Chain.png");
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
  background(255,255,255);
  g.show();
  b.show();
  m.show();
  if (grabbed != null){
    grabbed.x = mouseX;
    grabbed.y = mouseY;
    grabbed.show();
  }
  fill(0);
  text(money, 30,120);
}
void mousePressed(){
  mouseDown = true;
  
}
void mouseReleased(){
  mouseDown = false;
  if (grabbed != null){
    for (int i = 0; i < g.boxes.size();i++){
      if (g.boxes.get(i).hover() == true){
        hoverbox = g.boxes.get(i);
      }
    }
    for (int i = 0; i < m.crates.size();i++){
      if (m.crates.get(i).hover() == true){
        hoverbox = m.crates.get(i);
      }
    }
    if (hoverbox == null){
      grabbed.x = lastbox.x;
      grabbed.y = lastbox.y;
      lastbox.a = grabbed;
    }
    else if(lastbox == hoverbox){
      grabbed.x = lastbox.x;
      grabbed.y = lastbox.y;
      lastbox.a = grabbed;
    }
    else{
      if(hoverbox.a != null){
        hoverbox.merge(grabbed);
      }
      else{
        grabbed.x = hoverbox.x;
        grabbed.y = hoverbox.y;
        hoverbox.a = grabbed;
        lastbox.a = null;
        hoverbox = null;
      }
    }

    grabbed = null;
  }
}
