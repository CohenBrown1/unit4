//Cohen BRown 
//Unit 4

import processing.sound.*;
SoundFile music;


color black = #000000;
color blue = #C8E6FF;
color ground = #82D656;
color sun = #FCEB4C;

void setup() {
  music = new SoundFile(this, "Clair_De_Lune_-_Aurbanni");
  size(800,800);
  background(blue); 
  noStroke();
  fill(ground);
  rect(0,300,800,600);
  
  fill(sun);
  circle(random(100,700),40,70);
 
  mountains();      
  trees1();  
  trees2();
  trees3();
  tents();   
  grass();
}

void mountains() {
  float i = 0;
  float range;
  float mountainHeight;
  while(i < 800) {
    range = map(i,0,7,0,width);
    mountainHeight = random(20,100);
    drawMountain(range, 100, mountainHeight);
    i++;
  }
}

void drawMountain(float x, float y, float workstupid) {
  pushMatrix();
  translate(x,y);
  fill(random(50,225));
  noStroke();
  triangle(-150,200,0,-random(20,100),150,200);
  popMatrix();
}

void trees1() {
  int i = 0;
  int o = 0;
  int p = 0;
  int a = 0;
  float treeCount = 30; 
  float x;      
  float y;  

  while (i < treeCount) {  
    x = random(0,800); 
    y = random(270,310);  
    drawTree1(x, y);
    i++;
  } 
  while (o < treeCount) {  
    x = random(0,100); 
    y = random(330,800);  
    drawTree1(x, y);
    o++;
  }
   while (p < treeCount) {  
    x = random(700,800); 
    y = random(330,800);  
    drawTree1(x, y);
    p++;
  }
    while (a < treeCount) {  
    x = random(0,800); 
    y = random(700,740);  
    drawTree1(x,y);
    a++;
  } 
}

void drawTree1(float x, float y) {
  pushMatrix();
  translate(x, y);
  scale(random(0.7,1.3));
  fill(34,139,34);
  noStroke();
  
  int i = 0;
  while (i <= 20) {
    triangle(-15, i + 20, 0, i, 15, i + 20);
    i = i + 10;
  }
  
  fill(101,67,33);
  rect(-3,40,6,15);
  popMatrix();
}

void trees2() {
  int i = 0;
  int o = 0;
  int p = 0;
  int a = 0;
  float treeCount = 15; 
  float x;      
  float y;  

  while (i < treeCount) {  
    x = random(0,800); 
    y = random(270,310);  
    drawTree2(x, y);
    i++;
  } 
  while (o < treeCount) {  
    x = random(0,100); 
    y = random(330,800);  
    drawTree2(x, y);
    o++;
  }
   while (p < treeCount) {  
    x = random(700,800); 
    y = random(330,800);  
    drawTree2(x, y);
    p++;
  }
    while (a < treeCount) {  
    x = random(0,800); 
    y = random(700,740);    
    drawTree2(x, y);
    a++;
  } 
}

void drawTree2(float x, float y) {
  pushMatrix();
  translate(x, y);
  scale(random(0.7,1.3));
  noStroke();
  
  float c = random(0,1);
  float r = map(c,0,1,180,255);  
  float g = map(c,0,1,50,200);   
  float b = map(c,0,1,0,80);     

  fill(r,g,b);

  int i = 0;
  while (i <= 60) {
    ellipse(random(-10,10), random(-5,5), 20, 20);
    i = i + 10;
  }

  ellipse(0,12,20,20);
  fill(101, 67, 33); 
  rect(-3, 20, 6, 15);
  popMatrix();
}

void trees3() {
  int i = 0;
  int o = 0;
  int p = 0;
  int a = 0;
  float treeCount = 5; 
  float x;      
  float y;  

  while (i < treeCount) {  
    x = random(0,800); 
    y = random(300,350);  
    drawTree3(x, y);
    i++;
  } 
  while (o < treeCount) {  
    x = random(0,100); 
    y = random(330,800);  
    drawTree3(x, y);
    o++;
  }
   while (p < treeCount) {  
    x = random(700,800); 
    y = random(330,800);  
    drawTree3(x, y);
    p++;
  }
    while (a < treeCount) {  
    x = random(0,800); 
    y = random(700,740);   
    drawTree3(x, y);
    a++;
  } 
}

void drawTree3(float x, float y) {
  pushMatrix();
  translate(x, y);
  scale(random(0.7, 1.3));
  stroke(80, 50, 20);  
  strokeWeight(1.5);   
  line(0, 0, 0, -20);

  int i = 0;
  while (i <= 20) {
    line(0, -i, -5, -i - 3);  
    line(0, -i, 5, -i - 3);   
    i = i + 5;
  }
  popMatrix();
}

void grass() {
  int i = 0;
  float grassCount = random(1,20); 
  float x;      
  float y;  

  while (i < grassCount) {  
    x = random(150,650); 
    y = random(350,670);  
    drawGrass(x, y);
    i++;
  } 
}

void drawGrass(float x, float y) {
  pushMatrix();
  translate(x, y);
  stroke(0);          
  strokeWeight(1);    

  int i = 0;
  while (i <= 10) {
    line(0, 0, i -5, -10);
    i = i + 5;
  }

  popMatrix();
}

void tents() {
  int i = 0;
  float tentCount = random(4,5); 
  float x;      
  float y;  

  while (i < tentCount) {  
    x = random(200,600); 
    y = random(350,650);  
    drawTent(x, y);
    i++;
  } 
}

void drawTent(float x, float y) {
  pushMatrix();
  translate(x,y);
  scale(random(0.7,1.3)); 
  stroke(120,90,60);     
  fill(random(150,255),180,140);     
  strokeWeight(1.5);
  triangle(-30, 40, 0, -60, 30, 40);

  int i = -25;
  while (i <= 25) {
    line(i, 40, 0, -60);
    i = i + 10;
  }
  noStroke();
  fill(black);
  rect(-10,20,20,20);
  circle(0,25,21);
  popMatrix();  
}
