CircleClass C1;
float time;

void setup() 
{
  size(600, 600);
  frameRate(40);
  noStroke();
  C1 = new CircleClass(0, 100, 1, 10, "BLACK");
  time = 0;
}

void draw() { 
  translate(300, 300);
  background(204);
  C1.update(time);
  C1.display();
  time += (float)1 / 80;
} 
