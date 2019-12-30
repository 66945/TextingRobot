Screen screen;

void setup() {
  size(850, 700);
  screen = new Screen(650, 450);
}

void draw() {
  background(#f22c2c);
  
  push();
  translate(100, 100);
  screen.render();
  pop();
}

void mousePressed() {
  screen.addPoint(new PVector(mouseX - 100, mouseY - 100));
}
