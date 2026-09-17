class Button{
  float x;
  float y;
  public Button(float x, float y){
    this.x = x;
    this.y = y;
  }
  public boolean clicked(){
    if(mouseX >= this.x &&mouseX <= this.x+30&& mouseY >= this.y&&mouseY <= this.y+30&&mouseDown){
      return true;
    }
    else{
      return false;
    }
  }
  public void show(){
    rect(this.x,this.y,30,30);
  }
  
}
