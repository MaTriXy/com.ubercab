import android.support.v4.view.animation.FastOutLinearInInterpolator;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.support.v4.view.animation.LinearOutSlowInInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

public final class as
{
  public static final Interpolator a = new LinearInterpolator();
  public static final Interpolator b = new FastOutSlowInInterpolator();
  public static final Interpolator c = new FastOutLinearInInterpolator();
  public static final Interpolator d = new LinearOutSlowInInterpolator();
  public static final Interpolator e = new DecelerateInterpolator();
  
  static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat2 - paramFloat1) * paramFloat3 + paramFloat1;
  }
  
  static int a(int paramInt1, int paramInt2, float paramFloat)
  {
    return Math.round((paramInt2 - paramInt1) * paramFloat) + paramInt1;
  }
}

/* Location:
 * Qualified Name:     as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */