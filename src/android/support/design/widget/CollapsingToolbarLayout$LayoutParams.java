package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import ao;

public class CollapsingToolbarLayout$LayoutParams
  extends FrameLayout.LayoutParams
{
  public int a = 0;
  public float b = 0.5F;
  
  public CollapsingToolbarLayout$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ao.CollapsingAppBarLayout_LayoutParams);
    a = paramContext.getInt(ao.CollapsingAppBarLayout_LayoutParams_layout_collapseMode, 0);
    a(paramContext.getFloat(ao.CollapsingAppBarLayout_LayoutParams_layout_collapseParallaxMultiplier, 0.5F));
    paramContext.recycle();
  }
  
  public CollapsingToolbarLayout$LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public CollapsingToolbarLayout$LayoutParams(FrameLayout.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  private void a(float paramFloat)
  {
    b = paramFloat;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CollapsingToolbarLayout.LayoutParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */