void setup (){
  size(600,600);
  background(0);
  ellipse (300,300,600,600);
  Fractal(200,150,150,300,300,0,0,101);
}

void draw () {}

public void Fractal (int n, int x, int y, int centerx, int centery,int centerxa, int centerxb, int c) {
  noFill();
  strokeWeight(0);
  if (c%2 == 0) fill(255,255,255);
  if (c%2 == 1) fill (0);
  ellipse (centerx,centery-y,n,n);
  ellipse (centerx,centery+y,n,n);
  ellipse (centerx-x,centery,n,n);
  ellipse (centerx+x,centery,n,n);
  if (n >= 5) {
    Fractal (n/2,x/2,y/2,centerx/2,centery,0,0,c-1);
    Fractal (n/2,x/2,y/2,centerx,centery/2,0,0,c-1);
    Fractal (n/2,x/2,y/2,600-centerx/2,600-centery,0,0,c-1);
    Fractal (n/2,x/2,y/2,600-centerx,600-centery/2,0,0,c-1);
  }
}

