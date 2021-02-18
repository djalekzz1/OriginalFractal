void setup() {
  size(1000, 1000);
  rectMode(CENTER);
}

color white = color(255, 255, 255);
color gray = color(105, 105, 105);

void draw() {
  background(0);
  fractal(500, 500, 500, true);
}
public void fractal(int x, int y,  int len, boolean isWhite) {
  if(isWhite) {
    fill(white);
  }
  else fill(gray);
  
  if(len > 2) {
    rect(x, y, len, len);
    fractal(x+len/3, y, len/3, !isWhite);
    fractal(x-len/3, y, len/3, !isWhite);
    fractal(x, y+len/3, len/3, !isWhite);
    fractal(x, y-len/3, len/3, !isWhite);
  }
}
