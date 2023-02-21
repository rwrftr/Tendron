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

  public void show()
  {
    stroke(0);
    strokeWeight((0-10) + myNumSegments*4);
    int startX = myX;
    int startY = myY;

    for (int i = 0; i < myNumSegments; i++) {

      myAngle += ((Math.random()*0.4) -0.2);

      int endX = startX + (int)(Math.cos(myAngle) * SEG_LENGTH);

      int endY = startY + (int)(Math.sin(myAngle) * SEG_LENGTH);

      //println(startX + " " + endX + " " + startY + " " + endY);
      //println(startX + " + " + (Math.sin(myAngle) * SEG_LENGTH) + " = " + endX );

      /*if((dist(endY, endY, 750, 750) >= (600 - (test2 * myNumSegments) ))){
       line(startX, startY, endX, endY);
       }
       */

      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if (dist(startX, startY, 750, 750) >= (600 - (test2 * myNumSegments) )) {
      if (myNumSegments > test-2 ) {
        Cluster a = new Cluster(myNumSegments-1, startX, startY);
      }
    }
  }
}
