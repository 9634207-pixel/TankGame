//nora hinich | apr 1 2026 | tank game
Tank t1;
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
ArrayList<Obsatcle> obstacles = new ArrayList<Obstacles>();
Obstacle o1;
PImage bg1;
int score;
void setup() {
  size(500, 500);
  score = 0;
  bg1=loadImage("background.png");
  t1 = new Tank();
  o1 = new Obstacle(400, 100, 100, 50, 5, 100);
  obstacles.add(new Obstacle(300,200,100,100,100,int(random(1,10))));
}


void draw() {
  background(127);
  imageMode(CORNER);
  image(bg1, 0, 0);
  for (int i = 0; i < projectiles.size(); i++) {
    Projectile p = projectiles.get(i);
    p.display();
    p.move();
  }
  t1.display();
  o1.display();
  o1.move();
  scorePanel();
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

void mousePressed() {
  projectiles.add(new Projectile(t1.x, t1.y, 4, 10));
}

void scorePanel() {
  fill(127, 200);
  rectMode(CENTER);
  noStroke();
  rect(width/2, 15, width, 30);
  fill(255);
  textSize(20);
  text("Score:" + score, width/2, 25);
}
