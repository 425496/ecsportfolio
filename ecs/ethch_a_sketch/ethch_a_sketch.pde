// Peter Fiscus || 3-17-26 || Ethch-a-Sketch

int x, y;
int step = 5;          // movement size
color currentColor;   // drawing color

void setup() {
  size(300, 300);
  background(140);
  drawFrame();
  drawKnobs();
  
  x = width/2;
  y = height/2;
  
  strokeWeight(3);
  currentColor = color(#FFAA21);
}

void draw() {

  stroke(currentColor);
}


// Keys

void keyPressed() {
  if (keyCode == RIGHT || key == 'd' || key == 'D') {
    moveR(step);
  }
  if (keyCode == LEFT || key == 'a' || key == 'A') {
    moveL(step);
  }
  if (keyCode == UP || key == 'w' || key == 'W') {
    moveU(step);
  }
  if (keyCode == DOWN || key == 's' || key == 'S') {
    moveD(step);
  }
  
  // save image
  if (key == 'p' || key == 'P') {
    saveFrame("etchasketch-a-sketch.png");
  }
  
  // clear screen
  if (key == 'c' || key == 'C') {
    clearScreen();
  }
}

// movement

// Right
void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x = x + rep;
}

void moveR(int l) {
  line(x, y, x + l, y);
  x += l;
}

// left
void moveL(int l) {
  line(x, y, x - l, y);
  x -= l;
}

// up
void moveU(int l) {
  line(x, y, x, y - l);
  y -= l;
}

// Down
void moveD(int l) {
  line(x, y, x, y + l);
  y += l;
}

// clear
void clearScreen() {
  background(240);
  x = width/2;
  y = height/2;
}

// Frame
void drawFrame() {
  noFill();
  stroke(200, 0, 0);
  strokeWeight(20);
  rect(0, 0, width, height);
}

void drawKnobs() {
  fill(180);           
  strokeWeight(3);
  stroke(180);

  // left knob
  ellipse(50, height - 50, 40, 40);

  // right knob
  ellipse(width - 50, height - 50, 40, 40);
}
