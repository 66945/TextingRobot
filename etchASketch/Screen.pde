public class Screen {
  int w;
  int h;
  
  ArrayList<PVector> lines;
  PVector currentPoint;
  
  public Screen(int w_, int h_) {
    w = w_;
    h = h_;
    
    lines = new ArrayList<PVector>();
    currentPoint = new PVector(0, 0);
  }
  
  public void addPoint(PVector newPoint) {
    PVector newVector = PVector.sub(newPoint, currentPoint);
    lines.add(newVector);
    
    currentPoint = newPoint;
  }
  
  public void render() {
    noStroke();
    fill(#9b9c86);
    rect(0, 0, w, h);
    
    strokeWeight(5);
    stroke(0);
    push();
    for(PVector line : lines) {
      line(0, 0, line.x, line.y);
      translate(line.x, line.y);
    }
    pop();
  }
}
