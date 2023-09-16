void setup(){
  size(500,500);
  frameRate(12);
}

void draw(){
    background(240);
  for(int j = 0; j < 500; j+=45){
    for(int i = 0; i < 500; i+=45){
     pushMatrix();
     translate(j,i);
     scale(5,5);
     popMatrix();
    }
  }
}

void scale(int x, int y){
noStroke();
//color
if(Math.random() < .9)  
fill(255,255,0);
else 
fill(0,0,255);
rotate(radians((float)Math.random()*360));
beginShape();
//outer
vertex(x,y-30);
vertex(x+10,y-10);
vertex(x+30,y);
vertex(x+10,y+10);
vertex(x,y+30);
vertex(x-10,y+10);
vertex(x-30,y);
vertex(x-10,y-10);
//inner
vertex(x-7,y-7);
vertex(x-23,y);
vertex(x-7,y+7);
vertex(x,y+23);
vertex(x+7,y+7);
vertex(x+23,y);
vertex(x+7,y-7);
vertex(x,y-23);
endShape(CLOSE);
}
