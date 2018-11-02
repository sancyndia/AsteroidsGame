public void setup()
{
  SubClass bob = new SubClass();
  bob.setX(27);
  System.out.println("bobs x is " + bob.getX());
}
class SubClass extends SuperClass
{
  public SubClass() {myX = 7;}
  public int getX(){return myX;}
}
abstract class SuperClass
{
  protected int myX;
  public SuperClass() {myX = 23;}
  abstract public int getX();
  public void setX(int x){myX = x;}
}
