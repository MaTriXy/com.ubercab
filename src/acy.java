import android.content.SharedPreferences;
import java.util.concurrent.Callable;

public final class acy
  extends acw<Integer>
{
  public static Integer a(SharedPreferences paramSharedPreferences, final String paramString, final Integer paramInteger)
  {
    (Integer)aly.a(new Callable()
    {
      private Integer a()
      {
        return Integer.valueOf(getInt(paramString, paramInteger.intValue()));
      }
    });
  }
}

/* Location:
 * Qualified Name:     acy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */