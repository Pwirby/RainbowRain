int total_drop = 0;
int total_hit = 0;
float c = 0;
float flaque = 0;
nuage n;
drop [] pluie = new drop[100];

void setup() {
  size(600, 600);
  n = new nuage(70, width/2, height/2);
}

void draw() {
  colorMode(HSB, 355, 100, 100);
  background(#FFFFFF); 

  flaque = height-total_hit/60;
  if (mouseY < flaque-70) {
    for (int i = 0; i < total_drop; i++) { 
      pluie[i].display();
      pluie[i].descend();
      pluie[i].hit(flaque);
      if (pluie[i].nb_hit != 0) {
        total_hit += pluie[i].nb_hit/pluie[i].nb_hit;
      }
    }
  }

  n.displace(mouseX, mouseY);
  n.display();

  c = map(height-flaque, height, 70, 180, 230); 
  fill(c, 95, 50,95);
  rect(0, flaque, width, total_hit);

  if (keyPressed) {
    total_hit = total_hit -total_hit/10;
  }
}

void mousePressed() {
  if (total_drop < pluie.length) {
    pluie[total_drop] = new drop(15);
    total_drop++;
  }
}
