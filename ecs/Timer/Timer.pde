// Peter Fiscus | 26 Mar 2026 | Timer
import processing.sound.*;

SoundFile alarm;
Button btnStart, btnStop, btnReset;

int totalTime = 10;
int startTime = 0;
int timeLeft = 0;

boolean running = false;
boolean alarmPlayed = false;   //  NEW

void setup () {
  size(500, 500);
  alarm = new SoundFile(this, "alarm.mp3");

  btnStart = new Button(100, 80, 100, 30, "Start", color(142), color(#015214));
  btnStop = new Button(400, 80, 100, 30, "Stop", color(142), color(#FF1212));
  btnReset = new Button(250, 80, 100, 30, "Reset", color(#3036E0), color(142));

  timeLeft = totalTime;

  textAlign(CENTER, CENTER); // nicer text
}

void draw () {
  background(#FFC608);

  if (running == true) {
    int elapsed = (millis() - startTime) / 1000;
    timeLeft = totalTime - elapsed;

    if (timeLeft <= 0) {
      timeLeft = 0;
      running = false;

      // play sound
      if (!alarmPlayed) {
        alarm.play();
        alarmPlayed = true;
      }
    }
  }

  btnStart.display();
  btnStart.hover();
  btnStop.display();
  btnStop.hover();
  btnReset.display();
  btnReset.hover();


  textSize(100);
  fill(20);
  text(timeLeft, width/2, 250);

  textSize(20);
  text("by Peter Fiscus", width/2, 460);
}

void mousePressed() {
  if (btnStart.over == true) {
    running = true;
    startTime = millis();
    alarmPlayed = false; // reset alarm
  }

  if (btnStop.over == true) {
    running = false;
  }

  if (btnReset.over == true) {
    running = false;
    timeLeft = totalTime;
    startTime = millis();
    alarmPlayed = false; // reset alarm
  }
}
