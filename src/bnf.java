import java.math.BigDecimal;

public final class bnf
  extends Number
{
  private final String a;
  
  public bnf(String paramString)
  {
    a = paramString;
  }
  
  private Object writeReplace()
  {
    return new BigDecimal(a);
  }
  
  public final double doubleValue()
  {
    return Double.parseDouble(a);
  }
  
  public final float floatValue()
  {
    return Float.parseFloat(a);
  }
  
  public final int intValue()
  {
    try
    {
      int i = Integer.parseInt(a);
      return i;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        long l = Long.parseLong(a);
        return (int)l;
      }
      catch (NumberFormatException localNumberFormatException2) {}
    }
    return new BigDecimal(a).intValue();
  }
  
  public final long longValue()
  {
    try
    {
      long l = Long.parseLong(a);
      return l;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return new BigDecimal(a).longValue();
  }
  
  public final String toString()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     bnf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */