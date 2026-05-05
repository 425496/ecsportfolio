// Peter Fiscus | 24 Feb 2026 | MiniProject
boolean diving = false;
float duckY = 440;
float angle = 0;

void setup() {
  size(1000, 800);
}

void draw() {
  // Sky
  background(#87CEEB);

  // Water
  fill(#4255CB);
  rect(0, 550, 1000, 450);

  // Fish stays in water
  int fishY = constrain(mouseY, 600, height);
  drawCreature(mouseX, fishY);

  // duck diving
  if (diving) {
    duckY += 5;     // move down
    angle -= 0.05;  // rotate
    // Stop dive
    if (duckY > 600) {
      diving = false;

    }
  }

  // Draw duck with rotation
  pushMatrix();
  translate(445, duckY);
  rotate(angle);

  // head
  fill(#F7F00C);
  ellipse(0, 0, 100, 100);

  // body
  ellipse(55, 60, 140, 100);

  // beak
  fill(#81CDE8);
  rect(-75, 0, 40, 20, 20);

  // eye
  fill(#FCB20F);
  ellipse(-10, -10, 20, 20);

  // wing
  fill(#E8D228);
  triangle(45, 60, 45, 30, 105, 60);

  popMatrix();

  // Water line
  strokeWeight(3);
  line(0, 550, 1000, 550);
}

void drawCreature(int x, int y) {
  fill(#F27FAF);
  ellipse(x+10, y-20, 90, 50);
  ellipse(x-5, y-20, 5, 5);
  triangle(x+55, y-20, x+70, y-30, x+70, y);
}

void mousePressed() {
  float d = dist(mouseX, mouseY, 445, duckY);

  if (d < 50) {
    if (duckY > 550) {
      // If duck is underwater
      duckY = 440;
      angle = 0;
      diving = false;
    } else {
      // start diving
      diving = true;
    }
  }
}
