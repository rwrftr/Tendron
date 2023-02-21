public class Cluster
{
  public final static int NUM_STEMS = 7; //number of tendrils per cluster

  public Cluster(int len, int x, int y)
  {  

    Tendril a = new Tendril(len, 1 * (2*PI/7), x, y);
    Tendril b = new Tendril(len, 2 * (2*PI/7), x, y);
    Tendril c = new Tendril(len, 3 * (2*PI/7), x, y);
    Tendril d = new Tendril(len, 4 * (2*PI/7), x, y);
    Tendril e = new Tendril(len, 5 * (2*PI/7), x, y);
    Tendril f = new Tendril(len, 6 * (2*PI/7), x, y);
    Tendril g = new Tendril(len, 7 * (2*PI/7), x, y);

    a.show();
    b.show();
    c.show();
    d.show();
    e.show();
    f.show();
    g.show();

    fill(255);
    if(len == test){stroke(#0FF245);}else{stroke(242, 15, 15);}
    ellipse(x, y, 20, 20);
    stroke(0);
    fill(0);
  }
}
