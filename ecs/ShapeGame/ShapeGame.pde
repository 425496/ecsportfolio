// Peter Fiscus | 3 Mar 2026 | ShapeGame
int x,y, tx, ty, score;
float tw;
PImage player, target;

void setup() {
  size(500,500);
  x = width/2;
  y = height/2;
  tx = int(random(20, width-20));
  ty = int(random(20, height-20));
  score = 0;
  tw = 100.0;
  player = loadImage("face.png");
  target = loadImage("target.png");
}

void draw() {
  background(0,180,0);
  imageMode(CENTER);
  image(player,x,y);
  target();
  scorePanel();
  //ellipse(x,y,20,20);
}

void scorePanel() {
  fill(120,127,127,127);
  rect(width/2,15,width,30);
  fill(255);
  textSize(32);
  text("Score:" + score,20,25);
}

void target() {
  float d = dist(x,y,tx,ty);
  println(d);
  println(score);
  rectMode(CENTER);
  image(target,tx,ty,tw,tw);
  if(d<tw) {
    score = score + int(tw/2);
    tx = int(random(20,width-20));
    ty = int(random(20,height-20));
    tw = 100.0;
  }
  tw = tw - 0.3;
  if(tw <= 10){
    gameOver();
  }
}

void gameOver(){
  background(0);
  fill(255);
  text("Game Over!", width/2, height/2);
  noLoop();
}

void keyPressed() {
  if(y<0) {
    y = height;
  }
    if(y>500) {
    y = 0;
  }
    if(x<0) {
    x = width;
  }
    if(x>width) {
    x = 0;
  }
  
  // WASD
  if(key == 'w' || key == 'W') {
    y = y - 15;
  } else if(key == 's' || key == 'S') {
    y = y + 10;
  } else if(key == 'a' || key == 'A') {
    x = x - 10;
  } else if(key == 'd' || key == 'D') {
    x = x + 15;
  }
  
    if(key == 'w' || keyCode == UP) {
    y = y - 15;
  } else if(key == 's' || key == DOWN) {
    y = y + 10;
  } else if(key == 'a' || key == LEFT) {
    x = x - 10;
  } else if(key == 'd' || key == RIGHT) {
    x = x + 15;
  }
}
