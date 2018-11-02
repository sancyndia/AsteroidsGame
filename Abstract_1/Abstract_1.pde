public void setup()
{
  Thingy bob = new Thingy();
  bob.setX(100);
  System.out.println("bobs x is " + bob.getX());
}
abstract class WhatsIt
{
  protected int myX;
  public WhatsIt() {myX = 2;}
  public int getX() {return myX; }
  abstract public void setX(int x);
}
class Thingy extends WhatsIt
{
  public Thingy() {myX = 3;}
  public void setX(int x){ myX = x;}
}
