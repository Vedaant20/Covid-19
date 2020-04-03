void setup()
{
  size (640,360);
  
}

void draw ()
{
 if(mousePressed==true){
   point(mouseX,mouseY);
 }
}

void keyPressed(){
  if (key=='s'){
  save("my_drawing.png");
  }
  if (key=='c'){
    background(random(255),random(255),random(255));
  }
    if (key=='k'){
    stroke(random(255),random(255),random(255));
    strokeWeight(20);
    line(0,5,width,5);
    strokeWeight(10);
    }
  }
