class CircleClass{
  private int x;
  private int y;
  private int rotSpeed;
  private int radiusCenter;
  private int radiusDisplay;
  private String colorCircle;
  
  CircleClass(int xCoord, int yCoord, int speed, int radD, String col){
    this.x = xCoord;
    this.y = yCoord;
    this.rotSpeed = speed;
    this.radiusCenter = yCoord;
    this.radiusDisplay = radD;
    this.colorCircle = col;
  }
  
  void update(float time){
    float angle = rotSpeed * 360 * time;
    this.x = (int) (this.radiusCenter * sin(angle * PI / 180));
    this.y = (int) (this.radiusCenter * cos(angle * PI / 180));
  }
  
  void display(){
    if(this.colorCircle == "BLACK"){
      fill(0);
    } else {
      fill(255);
    }
    circle(this.x, this.y, this.radiusDisplay);
  }
}
