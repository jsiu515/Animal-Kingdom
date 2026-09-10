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
    }
  }
}
