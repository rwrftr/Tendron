int test = 5;
int test2 = 82;

public void setup()
{
  size(1500, 1500);  
  background(255);
  noLoop();
}

public void draw()
{

  background(255);
  noFill();
  stroke(#0FBFF2);
  strokeWeight(10);
  ellipse(750, 750, 400, 400);
  ellipse(750, 750, 600, 600);
  textSize(150);
  text(test2,20,150);
  Cluster c = new Cluster(test, 750, 750); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed()
{
  redraw();
}

public void keyPressed() {
  if (key == 'i') {
    test2+=2;
    redraw();
  }
  if (key == 'j') {
    test2-=2;
    redraw();
  }
}
