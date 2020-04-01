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
} else{ 
  print(" please press s to save");
}
}
