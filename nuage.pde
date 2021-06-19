class nuage {
  float t = 0;
  float x = 0;
  float y = 0;

  nuage(float taille, float posX, float posY) {
    t = taille;
    x = posX;
    y = posY;
  }

  void display() {
    noStroke();
    fill(215);
    rect(x, y, t*1.8, t);
    ellipse(x, y+t/2, t, t);
    ellipse(x+t*1.8, y+t/2, t, t);
    ellipse(x+t, y, t*1.5, t*1.25);
  }
  void displace(float posX, float posY) {
    x = posX;
    y = posY;
  }
}
