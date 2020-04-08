color c=color(0);
int x, y, xp, yp;
int strokeW=1,flag=0;
int DIAM = 20; 
int RAD = DIAM>>1, FPS = 30;
void setup()
{
  size(640, 480);
   frameRate(FPS);
  smooth();

  ellipseMode(CENTER);
  noStroke();
  background(255);
}
void draw()
{
  noStroke();
  
  rect(0, 0, 30, 30);
  stroke(c);
  strokeWeight(strokeW);
  if(flag==1) fill((color) random(#000000));
  final float x = random(RAD, width - RAD), y = random(RAD, height - RAD);
  if (mousePressed == true) {
   ellipse(mouseX, mouseY, DIAM, DIAM); 
  }
}

void mouseDragged() {
  flag=1;
}
void mouseReleased(){
  flag=0;
}


void keyPressed() {
  if (key == 's') {
    save("my_drawing.png");
  }
  if (key == 'b')  
    background(random(0,255),random(0,255),random(0,255));
  if (key == CODED) {
    if (keyCode == UP) DIAM++; 
    if (keyCode == DOWN) DIAM--;
  }
  
  
}
