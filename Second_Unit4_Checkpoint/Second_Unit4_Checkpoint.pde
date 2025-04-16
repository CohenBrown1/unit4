//Cohen Brown
//Checkpoint translate
//2-3

color black = #000000;
color red = #c1121f;
color blue = #50ABDB;
color brown = #644425;
color beige = #fdf0d5;

void setup() {
  size(600, 600);
 
}

void draw() {
  background(250);
  house(100,100,0.5);
}

void house(int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);

  home();

  popMatrix();
}

void house(int x, int y, float s, float r) {
  pushMatrix();
  translate(x, y);
  rotate(r);
  home();

  popMatrix();
}

void home() {
  fill(beige);
  strokeWeight(2);
  rect(0, 0, 300, 250);
  fill(red);
  triangle(-20, 0, 320, 0, 150, -170);
  fill(brown);
  rect(100, 100, 100, 150);
  fill(black);
  circle(130, 190, 10);
}
