class drop {

  float x = 0;
  float y = 0;
  float i = 0;
  float diameter = 0;
  int nb_hit = 0;

  drop(float tempD) {
    x = mouseX + random(140);
    y = mouseY + 70;
    i = random(0, 325);
    diameter = tempD;
  }

  void descend() {
    y = y + 5;
  }

  void display() {
    noStroke();
    colorMode(HSB, 325, 100, 100);
    fill(i, 20, 90, 95);
    triangle(x, y-diameter, x-diameter/2, y, x+diameter/2, y);
    ellipse(x, y, diameter, diameter);
  }

  void hit(float collision) {
    if (y >= collision) {
      y = mouseY + random(40, 70);
      x = mouseX + random(140);
      nb_hit++;
    }
  }
}
