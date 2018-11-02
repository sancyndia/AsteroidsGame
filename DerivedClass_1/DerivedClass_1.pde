public void setup()
{
  DerivedClass bob = new DerivedClass(25);
  bob.setX(50);
  System.out.println("bobs x is " + bob.getX());
}
abstract class BaseClass
{
  protected int myX;
  public BaseClass() {myX = 23;}
  public BaseClass(int x){myX = x;}
  public int getX(){return myX;}
  abstract public void setX(int x);
}
class DerivedClass extends BaseClass
{
  public DerivedClass(int x) {myX = x;}
  public void setX(int x){myX = x;}
  
}
