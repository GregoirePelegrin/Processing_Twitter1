ArrayList<CircleClass> circleList = new ArrayList<CircleClass>();
float time;
int framerate;
int nbrCircles = 15;
int curr_radiusDrawing = 10;
int curr_radiusCenter = 0;
int speedMax = 5;

void setup(){
  framerate = 30;
  fullScreen(); // Scale size on nbrCircles;
  frameRate(framerate);
  noStroke();
  for(int i=0; i<nbrCircles; i++){
    String col;
    if(i%2 == 0){
      col = "BLACK";
    } else {
      col = "WHITE"; 
    }
    float speed = (float)(nbrCircles - i) / (float)nbrCircles * (float)speedMax;
    //float speed = (float)i / (float)nbrCircles * (float)speedMax;
    CircleClass curr_circle = new CircleClass(0, curr_radiusCenter, speed, curr_radiusDrawing, col);
    circleList.add(curr_circle);
    curr_radiusCenter = (int) ((float) curr_radiusCenter + 2.0 / 3.0 * (float)curr_radiusDrawing);
    curr_radiusDrawing = (int) ((float) curr_radiusDrawing * 4.0 / 3.0);
  }
  time = 0;
}

void draw(){ 
  translate(width/2, height/2);
  background(155);
  for(int i=nbrCircles-1; i>=0; i--){
    CircleClass curr_circle = circleList.get(i);
    curr_circle.update(time);
    curr_circle.display();
  }
  time += (float)1 / (4*framerate);
} 
