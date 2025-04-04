//Unit 4 checkpoint
//cohen brown
//2-3
//House drawing

color black = #000000;
color red = #c1121f;
color blue = #50ABDB;
color brown = #644425;
color beige = #fdf0d5;

void setup() {
  size(600,600);
}

void draw() { 
  fill(beige);
  strokeWeight(2);
  rect(150,250,300,250);
  fill(red);
  triangle(130,250,470,250,300,80);
  fill(brown);
  rect(250,350,100,150);
  fill(black);
  circle(270,440,10);
}
   
