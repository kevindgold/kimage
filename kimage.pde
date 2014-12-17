PImage natural, mm, mp, block, blank, camo, camo2;
boolean on = false;
PFont f;
int alpha = 100;

void setup() {
 size(500,400);
 natural = loadImage("http://i.imgur.com/bH1pM2J.png");
 mm = loadImage("http://i.imgur.com/yvaR037.png");
 mp = loadImage("http://i.imgur.com/0kjDEv0.png");
 block = loadImage("http://i.imgur.com/RRUcx2g.png");
 blank = loadImage("http://i.imgur.com/rB92gKU.png");
 camo = loadImage("http://i.imgur.com/XUIFLgR.png"); 
  camo2 = loadImage("http://i.imgur.com/cY6CkLB.png"); 
  f = createFont ("Arial",16, true);
}

void draw() {  
  background(#2f4040); 
  
 
  
  if(mouseX < 200 && mouseX > 100 
  && mouseY < 400 && mouseY > 300){
   image(mm,0,0);
  }else{
   image(natural,0,0); 
  }

  
  if(on){
    image(mp,0,0);
    image(camo2,0,0);
  }else{
    image(blank,0,0);
  }
  
  if(on){
  image(block, 0 ,0);
 
  loadPixels(); //code makes all pixels change colour
  for (int i=0; i<pixels.length; i++) {
    color col = pixels[i];
    col = color(red(col)+100, green(col)+100, blue(col)+100);
    pixels[i] = col;
  }
  
  ////printing stuff - uncomment below if you want the information////
  
//  println("number of pixels " + pixels.length);
//  color col = pixels[100];
//  println("components of the pixel " + red(col) + " " + green(col) + " " + blue(col));
//  pixels[200] = col;
//  col = pixels[mouseX + mouseY*width];
//  pixels[pmouseX + pmouseY*width] = col;

  updatePixels(); //update pixels has to be placed here so that it does not affect the "else" function below
  }else{
    image(block,0,0);
  }
  fill(#f9ef83, alpha);
  textFont(f,10);
  text("DOWNLOAD TO VIEW PROPERLY", 10,18);
  fill(#f9ef83, alpha);
  textFont(f,10);
  text("Click around the area where the torch is to interact", 10,32);
  
  //I wanted to place mousePress here instead of outside of draw as it creates a fading effect - not the best way of doing it though 
  //The mousepress function doesn't work 100% of the time when placed like this
  //Any solutions?
  
//    if (mousePressed && (mouseX < 200 && mouseX > 100 
// && mouseY < 400 && mouseY > 300)){
//  
//   on = !on;
// } 

}



void mousePressed(){
 if(mouseX < 200 && mouseX > 100
 && mouseY < 400 && mouseY > 200){
  on = !on;
 } 
}

////end of code////

