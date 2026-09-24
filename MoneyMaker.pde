class MoneyMaker{
  ArrayList<Box> crates;
  public MoneyMaker(){
    crates = new ArrayList<Box>();
    crates.add(new Box(300,0));
    crates.add(new Box(265,0));
    crates.add(new Box(335,0));
  }
  void show(){
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
    for (int i = 0; i < crates.size();i++){
      if (crates.get(i).a != null){
        money += crates.get(i).a.wage;
      }
    }
  }
}
