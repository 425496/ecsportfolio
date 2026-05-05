// Peter Fiscus | Feb 26 2026 | Timeline
void setup() {
  size(950, 400);
}
void draw() {
  background(#3378AF);
  drawRef();
  histEvent(200, 200, "1996", true, " At age 11, Michael Phelps began training seriously under coach Bob Bowman \n at the North Baltimore Aquatic Club. ");
  histEvent(300, 300, "2000", false, "15 years old, Michael Phelps competed in the 2000 Sydney Olympics, \n becoming one of the youngest male swimmer to ever make the U.S. Olympic team." );
  histEvent(400, 200, "2001", true, "At age 15, he broke the 200m butterfly world record at the U.S. Spring Spring Nationals in Austin, Texas.");
  histEvent(500, 300, "2004", false, "At the 2004 Athens Olympics, Phelps won 6 gold medals and 2 bronze medals, \n tying the record for the most medals won at a single Olympics at the time.");
  histEvent(600, 200, "2008", true, "At the 2008 Beijing Olympics, he won 8 gold medals breaking the record for the most gold medals at the olympics. \n One of the greatest achievements ever in sports.");
  histEvent(700, 300, "2012", false, "During the 2012 London Olympics, Phelps became the most decorated Olympian of all time, \n surpassing the previous overall Olympic medal record.");
  histEvent(800, 200, "2016", true, "At the 2016 Rio Olympics, he won 5 gold medals and 1 silver,  \n finishing his career with 23 Olympic gold medals and 28 total medals, the most in Olympic history.");
  histEvent(900, 300, "2017", false, "After retiring he has been a big advocate for mental health awareness, \n using his platform to inspire athletes and young people worldwide.");
}
void drawRef() {
  textAlign(CENTER);
  textSize(38);
  fill(#29DFF0);
  text("Michael Phelps' Career", width/2, 65);
  textSize(18);
  text("By: Peter Fiscus", width/2, 95);
  strokeWeight(3);
  fill(#0A02F0);
  line(50, 250, 900, 250);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  line(475, 245, 475, 255);
  line(330, 245, 330, 255);
  line(170, 245, 170, 255);
  line(625, 245, 625, 255);
  line(775, 245, 775, 255);
  strokeWeight(2);
  textSize(15);
  text("1985", 50, 270);
  text("2017-present", 900, 240);
  strokeWeight(2);
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  fill(#29DFF0);
  if (top == true) {
    line(x, y, x-30, y+50);
  } else {
    line(x, y, x-30, y-50);
  }

  rectMode(CENTER);
  fill(#3569F0);
  rect(x, y, 100, 30, 15);
  fill(#29DFF0);
  text(title, x, y+5);
  if (mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    text(detail, width/2,350);
  }
}
