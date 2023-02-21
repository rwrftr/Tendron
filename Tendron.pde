int test = 5;
int var1 = 190;
int[] test2 = new int[7];

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
  text(var1,20,150);
  Cluster c = new Cluster(test, 750, 750);
}
public void mousePressed()
{
  redraw();
}

public void keyPressed() {
  if (key == 'i') {
    var1+=2;
    redraw();
  }
  if (key == 'j') {
    var1-=2;
    redraw();
  }
}
