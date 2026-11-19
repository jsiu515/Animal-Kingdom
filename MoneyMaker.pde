class MoneyMaker{
  ArrayList<Box> crates;
  int timer = 0;
  public MoneyMaker(){
    crates = new ArrayList<Box>();
    crates.add(new Box(277.5,30));
    crates.add(new Box(217.5,30));
    crates.add(new Box(337.5,30));
  }
  void show(){
    for (int v = 0; v < crates.size();v++){
       if (crates.get(v).a != null && crates.get(v).a.name.equals("Clownfish")){
         clownfishcheck = true;
       }
       if (crates.get(v).a != null &&crates.get(v).a.name.equals("DesertIguana")){
         dicheck = true;
       }
    }
    for (int i = 0; i < crates.size();i++){
      crates.get(i).show();
      crates.get(i).grabAnimal();
      //if(crates.get(i).hover()){
      //  fill(255,0,0);
      //  crates.get(i).setAnimal(new Animal(images[0],crates.get(i).x,crates.get(i).y,animalNames[0]));
      //}
    }
    
  }
  void generateMoney(){
    timer += 1;
    boolean gotmoney = false;
    for (int i = 0; i < crates.size();i++){
      if (crates.get(i).a != null && timer >= 75){
        money += crates.get(i).a.wage;
        gotmoney = true;
      }
    }
    if (gotmoney == true){
      timer = 0;
    }
  }
}
