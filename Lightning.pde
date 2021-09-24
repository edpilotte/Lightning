int startX = 200;
int startY = 300;
int endX;
int endY;

void setup() {
  size(400,400);
}

void draw() {
  stroke(0);
  fill(0);
  ellipse(200,300,10,10);
  quad(165,315,175,315,180,340,160,340);
  noFill();
  ellipse(170,305,20,20);
  bezier(177,320,188,315,193,305,197,300);
  bezier(177,325,194,315,199,305,203,300);
  rect(164,340,4,20);
  rect(172,340,4,20);
  
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  endX = startX + (int)(Math.random()*40)-20;
  endY = startY - (int)(Math.random()*10);
  line(startX,startY,endX,endY);
  startX = endX;
  startY = endY;
}

void mousePressed() {
  startX = 200;
  startY = 300;
}
