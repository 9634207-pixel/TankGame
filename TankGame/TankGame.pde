//nora hinich | apr 1 2026 | tank game
Tank t1;
Obstacle o1;
PImage bg1;
void setup() {
  size(500, 500);
  bg1=loadImage("background.png");
  t1 = new Tank();
  o1 = new Obstacle(400,100,100,50,5,100);
}


void draw() {
  background(127);
  imageMode(CORNER);
  image(bg1,0,0);
  t1.display();
  o1.display();
}

void keyPressed() {
  if (key == 'w') {
    t1.move('w');
  } else if (key == 's') {
    t1.move('s');
  } else if (key == 'a') {
    t1.move('a');
  } else if (key == 'd') {
    t1.move('d');
  }
}
