final class bqv
  implements CharSequence
{
  char[] a;
  
  public final char charAt(int paramInt)
  {
    return a[paramInt];
  }
  
  public final int length()
  {
    return a.length;
  }
  
  public final CharSequence subSequence(int paramInt1, int paramInt2)
  {
    return new String(a, paramInt1, paramInt2 - paramInt1);
  }
}

/* Location:
 * Qualified Name:     bqv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */