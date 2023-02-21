class Tendril
{
  public final static int SEG_LENGTH = 40; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;

  public Tendril(int len, double theta, int x, int y)
  {
    myX = x;
    myY = y;
    myNumSegments  = len;
    myAngle = theta;
  }

  public boolean distCalc(int x, int y) {

    return (dist(750, 750, (x), (y)) >= var1 + (( test - myNumSegments ) *(30 * myNumSegments ))) ;
  }

  public void show()
  {
    stroke(0);
    strokeWeight(4 + myNumSegments*1.5);
    int startX = myX;
    int startY = myY;


    for (int i = 0; i < 7; i++) {
      test2[i] = (int)((Math.random()*0.4) -0.2);
    }

    for (int i = 0; i < myNumSegments; i++) {

      int endX = startX + (int)(Math.cos(myAngle) * SEG_LENGTH);
      int endY = startY + (int)(Math.sin(myAngle) * SEG_LENGTH);
      startX = endX;
      startY = endY;
    }
    println((dist(750, 750, (startX), (startY))));
    if (distCalc(startX, startY)) {
      startX = myX;
      startY = myY;

      for (int i = 0; i < myNumSegments; i++) {

        myAngle += ((Math.random()*0.4) -0.2);

        int endX = startX + (int)(Math.cos(myAngle) * SEG_LENGTH);

        int endY = startY + (int)(Math.sin(myAngle) * SEG_LENGTH);

        line(startX, startY, endX, endY);
        startX = endX;
        startY = endY;
      }
      if (myNumSegments > test-3 ) {
        Cluster a = new Cluster(myNumSegments-1, startX, startY);
      }
    }
   
  }
}
